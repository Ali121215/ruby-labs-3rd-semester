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
    if (document.getElementsByName("transformer")[0].checked)
        addResult(data.getElementsByTagName("tr")[0].innerText)
    else
    {
        let xhr = new XMLHttpRequest();
        xhr.open('GET', 'transformer.xslt', false);
        xhr.send();
        
        if (xhr.status == 200)
        {
            transformer = xhr.responseXML;
            processor = new XSLTProcessor();
            processor.importStylesheet(transformer);
            resultDocument = processor.transformToFragment(data, document);
            addResult(resultDocument.children[1].getElementsByTagName("td")[0].innerText)
        }
        else
            alert("Произошла ошибка!")
    }
}

function addResult(string_data)
{
    let table = document.getElementById("result");
    let data = string_data.split(' ')
    for(let i in data)
    {
        let tr = document.createElement("tr");
        let cells = [
            document.createElement("td"),
            document.createElement("td")
        ];
        cells[0].innerText = Number(i) + 1;
        cells[1].innerText = data[i];

        cells.forEach(function(value) {
            tr.appendChild(value);
        })
        table.appendChild(tr);
    }
}