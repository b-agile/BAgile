// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap
//= require_tree .


function allowDrop(ev) {
    ev.preventDefault();
}

function drag(ev) {
    ev.dataTransfer.setData("Text", ev.target.id);
}

function drop(ev) {
    handleDragLeave(ev)
    ev.preventDefault();
    var data = ev.dataTransfer.getData("Text");
    var droppable =getDroppable(ev.target);
    droppable.appendChild(document.getElementById(data));
    $.post( "tasks/"+data, { status: droppable.attributes['status'].value } );
}

function handleDragOver(e) {
    if (e.preventDefault) {
        e.preventDefault(); // Necessary. Allows us to drop.
    }

    e.dataTransfer.dropEffect = 'move';  // See the section on the DataTransfer object.

    return false;
}

function handleDragEnter(ev) {
    // this / e.target is the current hover target.
    getDroppable(ev.target).classList.add('on-drag');
}

function handleDragLeave(ev) {
    getDroppable(ev.target).classList.remove('on-drag');  // this / e.target is previous target element.
}

function getDroppable(element){
    if(element==null || element == undefined){
        return null;
    }
    if(element.attributes['droppable']!=null && element.attributes['droppable']!=undefined){
        if(element.attributes['droppable'].value=='true'){
            return element
        }
    }
    return getDroppable(element.parentNode);

}