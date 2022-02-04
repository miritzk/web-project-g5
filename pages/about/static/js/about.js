// -- stop motion exp -- //

var images = [
    image1,
    image2,
    image3,
    image4,
    image5,
    image6,
    image7,
    image8,
    image9,
    image10,
];
var i = 0;

function stopmotionloop() {
    setInterval(() => {
        document.getElementById("p_1").src = images[i%images.length];
        i++;
    }, 1500)
}

stopmotionloop();