function openTab(evt, id) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the link that opened the tab
  document.getElementById(id).style.display = "block";
  evt.currentTarget.className += " active";
}


function editForm() {
  arr = [
    document.getElementById("inputFullName"),
    document.getElementById("inputPhoneNumber"),
    document.getElementById("inputCity"),
    document.getElementById("inputStreet"),
    document.getElementById("inputAprtNum"),
    document.getElementById("inputZipCode"),
    document.getElementById("inputPassword")
  ]
  arr.forEach((element) => {
    element.disabled = false;
    element.className = "";
  })
  document.getElementById("updateDetails").hidden = true;
  document.getElementById("submitUpdate").hidden = false;
}

function submitForm() {
  arr = [
    document.getElementById("inputFullName"),
    document.getElementById("inputEmail"),
    document.getElementById("inputPhoneNumber"),
    document.getElementById("inputCity"),
    document.getElementById("inputStreet"),
    document.getElementById("inputAprtNum"),
    document.getElementById("inputZipCode"),
    document.getElementById("inputPassword")
  ]
  arr.forEach((element) => {
    element.disabled = true;
    element.className = "nonEdit";
  })
  document.getElementById("updateDetails").hidden = false;
  document.getElementById("submitUpdate").hidden = true;

  fetch('/profile/update_details',{
    method:'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body:JSON.stringify({
      email: document.getElementById("inputEmail").value,
      fullName: document.getElementById("inputFullName").value,
      password: document.getElementById("inputPassword").value,
      phoneNumber: document.getElementById("inputPhoneNumber").value,
      addressCity: document.getElementById("inputCity").value,
      addressStreet: document.getElementById("inputStreet").value,
      addressApartmentNum: document.getElementById("inputAprtNum").value,
      addressPostalCode: document.getElementById("inputZipCode").value
    })
  })
}


function editCardInfo() {
  arr = [
    document.getElementById("inputNameOnCard"),
    document.getElementById("inputCardOwnerId"),
    document.getElementById("inputCreditCard"),
    document.getElementById("inputExpirationMonth"),
    document.getElementById("inputExpirationYear"),
    document.getElementById("inputCVV")
  ]
  arr.forEach((element) => {
    element.disabled = false;
    element.className = "";
  })
  document.getElementById("updateCardInfo").hidden = true;
  document.getElementById("submitCardInfo").hidden = false;
}

function submitCardInfo() {
  arr = [
    document.getElementById("inputNameOnCard"),
    document.getElementById("inputCardOwnerId"),
    document.getElementById("inputCreditCard"),
    document.getElementById("inputExpirationMonth"),
    document.getElementById("inputExpirationYear"),
    document.getElementById("inputCVV")
  ]
  arr.forEach((element) => {
    element.disabled = true;
    element.className = "nonEdit";
  })
  document.getElementById("updateCardInfo").hidden = false;
  document.getElementById("submitCardInfo").hidden = true;

  fetch('/profile/update_card_info',{
    method:'POST',
    headers: {
      'Content-Type': 'application/json'
    },
    body:JSON.stringify({
      NameOnCard: document.getElementById("inputNameOnCard").value,
      CardOwnerID: document.getElementById("inputCardOwnerId").value,
      CreditCardNumber: document.getElementById("inputCreditCard").value,
      ExpMonth: document.getElementById("inputExpirationMonth").value,
      ExpYear: document.getElementById("inputExpirationYear").value,
      CVV: document.getElementById("inputCVV").value
    })
  })
}