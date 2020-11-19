function onClickAddMovie() {
    let title = document.querySelector('form input[name="title"]').value;
    let date = document.querySelector('form input[name="date"]').value;
    let time = document.querySelector('form input[name="time"]').value;
    let duration = document.querySelector('form input[name="duration"]').value;
    let price = document.querySelector('form input[name="price"]').value;
    let movieHall = document.getElementById("movieHall").value;
    let type_obj = document.getElementsByName("type");
    let type;
    if (type_obj[0].checked) {
        type = type_obj[0].value;
    } else if (type_obj[1].checked) {
        type = type_obj[1].value;
    } else{
        alert("You should choose type");
        return;
    }
    if (validateInput(title,movieHall,duration,price,time,date,type)) {
        addRow(title,movieHall,duration,price,time,date,type);
        alert("Success!");
    }
}

function validateInput(title,movieHall,duration,price,time,date,type) {
    let movieHallRegex = new RegExp(/^[1-7]$/);

    if(!movieHallRegex.test(movieHall)){
        alert("Invalid movieHall");
        return false;
    }

    if(duration<30 || duration>300){
        alert("Invalid duration");
        return false;
    }

    if(isNaN(Number(price)) || Number(price).toFixed(1)<=0){
        alert("Invalid price");
        return false;
    }
    if(isNaN(Date.parse(date))||new Date().getTime()>=new Date(date).getTime()){
        alert("Invalid date");
        return false;
    }
    let bodyObj = document.getElementById("tbody");
    if (!bodyObj) {
        alert("Body of Table not Exist!");
        return;
    }
    rowCount = bodyObj.rows.length;
    for (let i=1;i<rowCount;i++){
        if(title==bodyObj.rows[i].cells[0].innerHTML && movieHall==bodyObj.rows[i].cells[5].innerHTML && type!=bodyObj.rows[i].cells[6].innerHTML){
            alert("Unaccepted table");
            return false;
        }
    }
    return true;
}

function initial() {
    let movieHall = document.getElementById("movieHall");
    movieHall.innerHTML = "";
    movieHall.options.add(new Option("--",null));
    for (let i=1;i<=7;i++){
        movieHall.options.add(new Option(i,i));
    }

}

function addRow(title,movieHall,duration,price,time,date,type) {
    let bodyObj = document.getElementById("tbody");
    if (!bodyObj) {
        alert("Body of Table not Exist!");
        return;
    }
    let rowCount = bodyObj.rows.length;
    let cellCount = bodyObj.rows[0].cells.length;
    bodyObj.style.display = ""; // display the tbody
    let newRow = bodyObj.insertRow(rowCount++);
    newRow.insertCell(0).innerHTML = title;
    newRow.insertCell(1).innerHTML = date;
    newRow.insertCell(2).innerHTML = time
    newRow.insertCell(3).innerHTML = Number(duration);
    newRow.insertCell(4).innerHTML =  Number(price).toFixed(1);
    newRow.insertCell(5).innerHTML = movieHall;
    newRow.insertCell(6).innerHTML = type;
    newRow.insertCell(7).innerHTML = bodyObj.rows[0].cells[cellCount -
    1].innerHTML; // copy the "delete" button
    bodyObj.rows[0].style.display = "none"; // hide first row
}

function removeRow(inputobj) {
    if (!inputobj) return;
    let parentTD = inputobj.parentNode;
    let parentTR = parentTD.parentNode;
    let parentTBODY = parentTR.parentNode;
    parentTBODY.removeChild(parentTR);
}

