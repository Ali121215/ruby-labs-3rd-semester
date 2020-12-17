// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

handleAjaxSuccess = function(event) {
    [data, status, xhr] = event.detail;
    showResult(data);
}

document.addEventListener('DOMContentLoaded', function() {
    document.querySelector("#add").addEventListener(
    'ajax:success', handleAjaxSuccess)
})

function showResult(data)
{
    var table = document.getElementById("result");
    var tr = document.createElement("tr");

    if (data.arr.length == 0)
    {
        var td = document.createElement("td");
        td.innerText = 'Введите другой n!';
        td.setAttribute("colspan", 4);
        tr.appendChild(td);
        table.appendChild(tr);
        return;
    }
    
    let i = 1;
    for(let el of data.arr)
    {
        let tr = document.createElement("tr");
        let cells = [
            document.createElement("td"), 
            document.createElement("td")
        ];

        cells[0].innerText = i;
        cells[1].innerText = el;
        cells[1].id = "item№" + i;

        cells.forEach(function(value) {
            tr.appendChild(value);
        })
        table.appendChild(tr);
        i += 1;
    }
}