const class_duration = 1;
const mat_color = "rgb(231, 55, 84)";
const mat_pilates = "Mat Pilates";
const classic_color = "rgb(155, 158, 163)";
const classic_pilates = "Classic Pilates";
const reformer_color = "#abbdb0";
const reformer_pilates = "Reformer Pilates";

async function generateCal(divId = "calendar", halfHourCellHeight = 20, startHour = 6, endHour = 22) {
    let response = await fetch('/calendar/get_events', {
        method: 'POST',
        headers: {
            'Content-Type': 'application/json'
        },
        body: JSON.stringify({
            startTime: moment().startOf("week").format("YYYY-MM-DD"),
            endTime: moment().endOf("week").format("YYYY-MM-DD")
        })
    })
    const data = (await response.json());
    const events = data.events
    const canOrder = data.canOrder
    let cal = document.querySelector(`#${divId}`);
    cal.innerHTML='';
    const today = moment();
    const from_date = today.startOf('week');
    let header = cal.appendChild(document.createElement("div"));
    header.classList.add("calendar-header");
    let body = cal.appendChild(document.createElement("div"));
    body.classList.add("calendar-body");

    // header
    let emptyBox = header.appendChild(document.createElement("div"));
    emptyBox.className = "day-header";
    for (i = 0; i < 7; i++) {
        const day = from_date.clone().add(i, 'days');
        let dayHeader = header.appendChild(document.createElement("div"));
        dayHeader.innerHTML = `<span className='day-name'>${day.format("dddd")}</span><span className='date'>${day.format("DD/MM/YYYY")}</span>`;
        dayHeader.className = "day-header";
    }


    //hours

    // legend
    let timesCol = body.appendChild(document.createElement("div")); // times column
    timesCol.className = "day-column";
    let timesColHours = timesCol.appendChild(document.createElement("div"));
    timesColHours.className = "day-hours";
    // legend shift
    // let shifting = timesColHours.appendChild(document.createElement("div"));
    // shifting.style.height = halfHourCellHeight + "px";
    // shifting.className = "shifting";

    // legend hours:
    for (j = startHour; j < endHour; j++) {
        let hourCell = timesColHours.appendChild(document.createElement("div"));
        hourCell.className = "time-cell hour-title-cell";
        hourCell.style.height = halfHourCellHeight * 2 + "px";
        hourCell.innerHTML = `<span className='hour-cell-text'>${moment.utc(j * 3600 * 1000).format('HH:mm')}</span>`;
    }


    // days
    for (i = 0; i < 7; i++) {
        const day = from_date.clone().add(i, 'days');
        let dayColumn = body.appendChild(document.createElement("div"));
        dayColumn.className = "day-column";
        let dayHours = dayColumn.appendChild(document.createElement("div"));
        dayHours.className = "day-hours";
        // for each hour add two div cells
        for (j = startHour; j < endHour; j++) {
            let hourCell = dayHours.appendChild(document.createElement("div"));
            hourCell.className = "time-cell hour-cell";
            hourCell.style.height = halfHourCellHeight + "px";
            hourCell.id = `day-${i}-hour-${j * 10}`;
            let halfHourCell = dayHours.appendChild(document.createElement("div"));
            halfHourCell.className = "time-cell half-hour-cell";
            halfHourCell.style.height = halfHourCellHeight + "px";
            halfHourCell.id = `day-${i}-hour-${(j + 0.5) * 10}`;
        }
        // dayHours.firstChild.style.marginTop = halfHourCellHeight + "px";
    }

    events.forEach(event => {
        let eventMoment = moment(event.dateTime)
        event.duration = 1;
        evDiv = document.createElement("div")
        evDiv.className = "event";
        evDiv.innerHTML = `<span className='event-title'>${event.workoutType}</span><span className='event-available-space'>${event.spotsLeft ? event.spotsLeft : 0}</span>`;
        if (event.color) {
            evDiv.style.backgroundColor = event.color;
        }
        let eventCell = document.querySelector(`#day-${eventMoment.day()}-hour-${eventMoment.hour() * 10}`);
        eventCell.appendChild(evDiv);
        eventCell.style.height = halfHourCellHeight * 2 * event.duration + "px";
        if(event.spotsLeft != 0)
            eventCell.classList.add("pressable");
        if (event.spotsLeft>0 && ((canOrder.personal && event.workoutType == 'Personal Workout') || (event.workoutType != 'Personal Workout' && canOrder.other) )) {
            eventCell.addEventListener("click", () => {
                // what to do on click on the event:
                ans = confirm(`Whould you like to join this class with ${event.instructorName}?`);
                if (ans) {
                    response = fetch('/calendar/order_class', {
                        method: 'POST',
                        headers: {
                            'Content-Type': 'application/json'
                        },
                        body: JSON.stringify({
                            workoutTime: eventMoment.utc().format('YYYY-MM-DD HH:mm:ss'),
                            workoutType: event.workoutType
                        })
                    }).then((response)=>{
                        response.json().then((data)=>{
                            if(data.status)
                                alert("Done")
                            else
                                alert("error")
                            generateCal("calendar", 40, 6, 22);
                        })
                    })
                }
            })
        }
        else if (event.spotsLeft>0 && event.workoutType == 'Personal Workout') {
            eventCell.addEventListener("click", () => {
                // what to do on click on the event:
                alert("You have to buy a personal workout first, go to the Prices tab");
            })
        }
        else if ( event.spotsLeft>0 ) {
            eventCell.addEventListener("click", () => {
                // what to do on click on the event:
                alert("You have to buy an Entry Ticket first, go to the Prices tab");
            })
        }
        for (let i = eventMoment.hour() + 0.5; i < eventMoment.hour() + event.duration; i += 0.5) {
            let halfHourCell = document.querySelector(`#day-${eventMoment.day()}-hour-${i * 10}`); // FIXME: 0.5 doesnt parss right
            halfHourCell.remove();
        }
    });
}

generateCal("calendar", 40, 6, 22);
console.log("hi")