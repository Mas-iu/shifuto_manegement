// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels").

/*document.addEventListener('DOMContentLoaded', function() {
    /*var startField = document.querySelector('#shift_employee_work_time_start');
    var endField = document.querySelector('#shift_employee_work_time_end');
    var startField = document.querySelector('input[type="datetime-local"][name="possibility_attendance[employee_work_time_start]"]');
    var endField = document.querySelector('input[type="datetime-local"][name="possibility_attendance[employee_work_time_end]"]');
  
    function setConstraints(field) {
      field.setAttribute('min', 'strftime("%Y / %m / %d %H:%M")T09:00');
      field.setAttribute('max', 'strftime("%Y / %m / %d %H:%M)T23:00');
      field.setAttribute('step', '1800'); // 30分ごと
    }
  
    setConstraints(startField);
    setConstraints(endField);
  });*/

  document.addEventListener('DOMContentLoaded', function() {
    function setConstraints(field) {
      if (field) {
        var currentDate = new Date();
        var minTime = new Date(currentDate.setHours(9, 0, 0)).toISOString().slice(0, 16);
        var maxTime = new Date(currentDate.setHours(23, 0, 0)).toISOString().slice(0, 16);
        
        field.setAttribute('min', minTime);
        field.setAttribute('max', maxTime);
        field.setAttribute('step', '1800'); // 30分ごと
  
        // オプションを30分単位に制限
        field.addEventListener('focus', function() {
          var optionTimes = [];
          var start = new Date(currentDate.setHours(9, 0, 0));
          var end = new Date(currentDate.setHours(23, 0, 0));
  
          for (var i = start; i <= end; i.setMinutes(i.getMinutes() + 30)) {
            optionTimes.push(new Date(i).toISOString().slice(0, 16));
          }
  
          field.setAttribute('list', 'timeOptions');
          var datalist = document.createElement('datalist');
          datalist.id = 'timeOptions';
          optionTimes.forEach(function(time) {
            var option = document.createElement('option');
            option.value = time;
            datalist.appendChild(option);
          });
  
          document.body.appendChild(datalist);
        });
      }
    }
  
    var startField = document.querySelector('input[type="datetime-local"][name="possibility_attendance[employee_work_time_start]"]');
    var endField = document.querySelector('input[type="datetime-local"][name="possibility_attendance[employee_work_time_end]"]');
    
    setConstraints(startField);
    setConstraints(endField);
  });
  
  