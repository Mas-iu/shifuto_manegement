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
        var minTime = currentDate.toISOString().split('T')[0] + 'T09:00';
        var maxTime = currentDate.toISOString().split('T')[0] + 'T23:00';
        
        field.setAttribute('min', minTime);
        field.setAttribute('max', maxTime);
        field.setAttribute('step', '1800'); // 30分ごと
      }
    }
  
    function validateTimeRange(event) {
      var startField = document.querySelector('input[type="datetime-local"][name="possibility_attendance[employee_work_time_start]"]');
      var endField = document.querySelector('input[type="datetime-local"][name="possibility_attendance[employee_work_time_end]"]');
      
      var startTime = new Date(startField.value);
      var endTime = new Date(endField.value);
  
      var minTime = new Date(startTime.toISOString().split('T')[0] + 'T09:00');
      var maxTime = new Date(startTime.toISOString().split('T')[0] + 'T23:00');
  
      if (startTime < minTime || startTime > maxTime || endTime < minTime || endTime > maxTime) {
        alert('出勤時間は09:00〜23:00の範囲内で設定してください。');
        event.preventDefault(); // フォーム送信を停止
      }
    }
  
    var startField = document.querySelector('input[type="datetime-local"][name="possibility_attendance[employee_work_time_start]"]');
    var endField = document.querySelector('input[type="datetime-local"][name="possibility_attendance[employee_work_time_end]"]');
    
    setConstraints(startField);
    setConstraints(endField);
  
    var form = document.querySelector('form');
    if (form) {
      form.addEventListener('submit', validateTimeRange);
    }
  });
  
  
  
  