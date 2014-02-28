
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
  
  $('#runbtn').click(function(){
    $('#test_request').submit();  
  });
  
  
});