
$(document).ready(function(){
  //First populating the test suite table
  $.ajax({
          type: 'post',
          url:  'table_display.php',
          data: 'type=suite',
          datatype: 'json',
          success:  function(data)
          {
            var result_html = "";
            var return_array = jQuery.parseJSON(data);
            for (var i=0;i<return_array.length;i++) {
              var test_suite = return_array[i];
              //console.log(return_array[i]);
              result_html += "<tr><td><input type='checkbox' name='suites[]' value='"+test_suite.id+"'> ";
              result_html += test_suite.name+"</td>";
              result_html += "<td>"+test_suite.description+"</td></tr>";
            }
            //By now result_html would have all the table struction for test suite
            $('#test_suite_table').html(result_html);
          }
  }); //End of ajax foo test_suite_table
  
  //Populating the test table
  $.ajax({
          type: 'post',
          url:  'table_display.php',
          data: 'type=test',
          datatype: 'json',
          success:  function(data)
          {
            var result_html = "";
            var return_array = jQuery.parseJSON(data);
            for (var i=0;i<return_array.length;i++) {
              var test_case = return_array[i];
              result_html += "<tr><td><input type='checkbox'  name='tests[]' value='"+test_case.id+"'> ";
              result_html += test_case.name+"</td>";
              result_html += "<td>"+test_case.description+"</td></tr>";
            }
            //By now result_html would have all the table struction for test suite
            $('#test_table').html(result_html);
          }
  }); //End of ajax foo test_table
  
  //Somehow double quotes in label will show up with \ in front of it.
  $('#runbtn').click(function(){
    var label = prompt("Please enter a Label for the test run");
    var label_input = "<input type='hidden' name='label' value='"+escapeHtml(label)+"'>";
    $('#test_request').append(label_input);
    $('#test_request').submit();  
  });
  
  function escapeHtml(text) {
    var characters = {
      '&': '&amp;',
      '"': '&quot;',
      "'": '&#039;',
      '<': '&lt;',
      '>': '&gt;'
    };
    return (text + "").replace(/[<>&"']/g, function(m){
      return characters[m];
    });
  };
  
  //Filtering all 4 tables
  
  $('#test_request_search').on('keyup', function(){
    var rex = new RegExp($(this).val(),'i');
    $('.test_request_searchable tr').hide();
    $('.test_request_searchable tr').filter(function(){
      return rex.test($(this).text());
    }).show();
  });
  
  $('#progress_search').on('keyup', function(){
    var rex = new RegExp($(this).val(),'i');
    $('.progress_searchable tr').hide();
    $('.progress_searchable tr').filter(function(){
      return rex.test($(this).text());
    }).show();
  });
  
  $('#queue_search').on('keyup', function(){
    var rex = new RegExp($(this).val(),'i');
    $('.queue_searchable tr').hide();
    $('.queue_searchable tr').filter(function(){
      return rex.test($(this).text());
    }).show();
  });
  
  $('#history_search').on('keyup', function(){
    var rex = new RegExp($(this).val(),'i');
    $('.history_searchable tr').hide();
    $('.history_searchable tr').filter(function(){
      return rex.test($(this).text());
    }).show();
  });
  
  //Hiding rows in progress table
  
  //progress table
  $('tbody').on('click','.test_kill_btn',function(){
    var rid = $(this).attr('id');
    var tr_selector = '#p_'+rid;
    $.ajax({
      type: 'get',
      url:  'action.php',
      data: 'action=kill&rid='+rid,
      success: function(data){
        if(data == 'ok'){$(tr_selector).hide();}
        else{console.log(data);}
      }
    });//end of ajax
    return false;
  });
  
  //queue table
  $('tbody').on('click','.test_cancel_btn',function(){
    var rid = $(this).attr('id');
    var tr_selector = '#q_'+rid;
    $.ajax({
      type: 'get',
      url:  'action.php',
      data: 'action=cancel&rid='+rid,
      success: function(data){
        if(data == 'ok'){$(tr_selector).hide();}
        else{console.log(data);}
      }
    });//end of ajax
    return false;
  });
  
  //env table -- lock
  $('tbody').on('click','.env_lock_btn',function(){
    var eid = $(this).attr('id');
    var current_selector = $(this);
    $.ajax({
      type: 'get',
      url:  'env_action.php',
      data: 'action=lock&eid='+eid,
      success: function(data){
        if(data == 'ok')
        {
          current_selector.removeClass('env_lock_btn btn-danger').addClass('env_unlock_btn btn-success').text('Unlock it');
        }
        else{console.log(data);}
      }
    });//end of ajax
    return false;
  });
  
  //env table -- unlock
  $('tbody').on('click','.env_unlock_btn',function(){
    var eid = $(this).attr('id');
    var current_selector = $(this);
    $.ajax({
      type: 'get',
      url:  'env_action.php',
      data: 'action=unlock&eid='+eid,
      success: function(data){
        if(data == 'ok')
        {
          current_selector.removeClass('env_unlock_btn btn-success').addClass('env_lock_btn btn-danger').text('Lock it');
        }
        else{console.log(data);}
      }
    });//end of ajax
    return false;
  });
  
  
});