$(document).ready(function() {
    var select = function(start, end, allDay) {
        var title = window.prompt("title");
        var data = {schedule: {title: title,
                            start: start,
                            end: end, 
                            allDay: allDay}};
        $.ajax({
            type: "POST",
            url: "/staff/schedules",
            data: data,
            success: function() {
                calendar.fullCalendar('refetchEvents');
            }
        });
        calendar.fullCalendar('unselect');
    };

    var calendar = $('#calendar').fullCalendar({
        schedules: '/staff/schedules.json',
        selectable: true,
        selectHelper: true,
        ignoreTimezone: false,
        editable: true,
        select: select,
        eventClick: updateEvent,
        eventResize: updateEvent,
        eventDrop: updateEvent
    });
});



 var updateEvent = function(event, revertFunc) {
    var title = window.prompt("Edit title", schedule.title);
    var url = "/staff/schedules/" + schedule.id;
    var data = {_method: 'PUT',
            schedule: {title: title,
                start: schedule.start,
                end: schedule.end,
                allDay: schedule.allDay}};
    $.ajax({
        type: "POST",
        url: url,
        data: data,
        success: function() {
        calendar.fullCalendar("refetchEvents");
        },
        error: revertFunc
    });
    };

  
