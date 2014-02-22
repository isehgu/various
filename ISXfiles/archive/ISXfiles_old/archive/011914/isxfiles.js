var tdValueArray = new Array();

$(document).ready(function(){
  $('#datediv input').datepicker({
    autoclose:true
  });
  
  $('#dateinput').datepicker().on('changeDate', function(e){
        var datestring = $(this).val();
        console.log(datestring);
        window.location.href = "index.php?datestring="+datestring;
    });
  
  $('#iseappname_select').change(function(){
      var selected = $("#iseappname_select option:selected").val();
      //console.log(selected);
      hideRows('iseappname',selected); //hide all the rows that are not selected
      
      //Remove all filtered values from <select> in all columns
      tdValueArray = getCurrentValue('iseappname');//Get all the column td values
      removeOptions('option.iseappname_option');
      tdValueArray = getCurrentValue('instancename');//Get all the column td values
      removeOptions('option.instancename_option');
      tdValueArray = getCurrentValue('instanceversion');//Get all the column td values
      removeOptions('option.instanceversion_option');
      tdValueArray = getCurrentValue('timestamp');//Get all the column td values
      removeOptions('option.timestamp_option');
      tdValueArray = getCurrentValue('instancenode');//Get all the column td values
      removeOptions('option.instancenode_option');
      
      $('option').show();
      $('option.option_remove').wrap('<span></span>').hide();
      //$('option.option_remove').hide();
  }); //End of select's change()
  
  $('#instancename_select').change(function(){
      var selected = $("#instancename_select option:selected").val();
      //console.log(selected);
      hideRows('instancename',selected); //hide all the rows that are not selected
      
      //Remove all filtered values from <select> in all columns
      tdValueArray = getCurrentValue('iseappname');//Get all the column td values
      removeOptions('option.iseappname_option');
      tdValueArray = getCurrentValue('instancename');//Get all the column td values
      removeOptions('option.instancename_option');
      tdValueArray = getCurrentValue('instanceversion');//Get all the column td values
      removeOptions('option.instanceversion_option');
      tdValueArray = getCurrentValue('timestamp');//Get all the column td values
      removeOptions('option.timestamp_option');
      tdValueArray = getCurrentValue('instancenode');//Get all the column td values
      removeOptions('option.instancenode_option');
      
      $('option').show();
      $('option.option_remove').wrap('<span></span>').hide();
      //$('option.option_remove').hide();
  }); //End of select's change() 
  
  $('#instanceversion_select').change(function(){
      var selected = $("#instanceversion_select option:selected").val();
      //console.log(selected);
      hideRows('instanceversion',selected); //hide all the rows that are not selected
      
      //Remove all filtered values from <select> in all columns
      tdValueArray = getCurrentValue('iseappname');//Get all the column td values
      removeOptions('option.iseappname_option');
      tdValueArray = getCurrentValue('instancename');//Get all the column td values
      removeOptions('option.instancename_option');
      tdValueArray = getCurrentValue('instanceversion');//Get all the column td values
      removeOptions('option.instanceversion_option');
      tdValueArray = getCurrentValue('timestamp');//Get all the column td values
      removeOptions('option.timestamp_option');
      tdValueArray = getCurrentValue('instancenode');//Get all the column td values
      removeOptions('option.instancenode_option');
      
      $('option').show();
      $('option.option_remove').wrap('<span></span>').hide();
      //$('option.option_remove').hide();
  }); //End of select's change()
  
  $('#timestamp_select').change(function(){
      var selected = $("#timestamp_select option:selected").val();
      //console.log(selected);
      hideRows('timestamp',selected); //hide all the rows that are not selected
      
      //Remove all filtered values from <select> in all columns
      tdValueArray = getCurrentValue('iseappname');//Get all the column td values
      removeOptions('option.iseappname_option');
      tdValueArray = getCurrentValue('instancename');//Get all the column td values
      removeOptions('option.instancename_option');
      tdValueArray = getCurrentValue('instanceversion');//Get all the column td values
      removeOptions('option.instanceversion_option');
      tdValueArray = getCurrentValue('timestamp');//Get all the column td values
      removeOptions('option.timestamp_option');
      tdValueArray = getCurrentValue('instancenode');//Get all the column td values
      removeOptions('option.instancenode_option');
      
      $('option').show();
      $('option.option_remove').wrap('<span></span>').hide();
      //$('option.option_remove').hide();
  }); //End of select's change()
 
 $('#instancenode_select').change(function(){
      var selected = $("#instancenode_select option:selected").val();
      //console.log(selected);
      hideRows('instancenode',selected); //hide all the rows that are not selected
      
      //Remove all filtered values from <select> in all columns
      tdValueArray = getCurrentValue('iseappname');//Get all the column td values
      removeOptions('option.iseappname_option');
      tdValueArray = getCurrentValue('instancename');//Get all the column td values
      removeOptions('option.instancename_option');
      tdValueArray = getCurrentValue('instanceversion');//Get all the column td values
      removeOptions('option.instanceversion_option');
      tdValueArray = getCurrentValue('timestamp');//Get all the column td values
      removeOptions('option.timestamp_option');
      tdValueArray = getCurrentValue('instancenode');//Get all the column td values
      removeOptions('option.instancenode_option');
      
      $('option').show();
      $('option.option_remove').wrap('<span></span>').hide();
      //$('option.option_remove').hide();
  }); //End of select's change()
 
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
  //Base on the basename given, hide the appropriate rows
  function hideRows(basename,selected)
  {
    if(selected) //if value of selected is not empty and has value
    {
      $('tr').removeClass(basename+'_hide'); //reset all TRs hidden due to this heading's filter in basename before applying new value
      
      $('td.'+basename+'_td').each(function(){
        if($(this).text() != selected) //comparing each of the td with what's selected, if they are not the same, add column_hide class to parent tr
        {
          $(this).parent('tr').addClass(basename+'_hide');
        }//end of if
      });//end of each()
    }//end of if(selected)
    else //if selected is empty
    {
      $('tr').removeClass(basename+'_hide');
    }
    $('tr').show(); //Show everything just to reset display
    
    //Now redraw table base on the new hidden classes
    $('tr.iseappname_hide').hide();
    $('tr.instancename_hide').hide();
    $('tr.instanceversion_hide').hide();
    $('tr.timestamp_hide').hide();
    $('tr.instancenode_hide').hide();
  }
  
  //Base on the given basename -- i.e iseappname-- return an array that contains all of its values
  function getCurrentValue(basename)
  {
    var valueArray = new Array();
    //From all tr that don't have any _hide class, select the child td and get its value
    $('tr.data').not("tr[class*='_hide']").children('.'+basename+'_td').each(function(){
      var value = $(this).text();
      valueArray.push(value);
      //console.log(value);
    });
  
    return valueArray;
  }
  
  function removeOptions(optionSelector)
  {
    //console.log(optionSelector);
    //Now removing the unneccesary options
    $(optionSelector).each(function(){
      var optionValue = $(this).val();
      //console.log(optionValue);
      
      if($(this).hasClass('option_remove'))
      {
        $(this).unwrap();
        $(this).removeClass('option_remove'); //Resetting options
      }
      
      //var tdValueArray = getCurrentValue('instancename_td');//Get all the column td values
      //console.log('I am here');
      //console.log(tdValueArray.length);
      for(counter = 0; counter < tdValueArray.length; counter++)
      {
        //console.log('inside forloop');
        //console.log(optionValue+"=="+tdValueArray[counter]);
        if(optionValue == tdValueArray[counter]) //if option value is in the currently displayed in td, then break the for loop and do nothing
        {
          break;
        }
      }//End of for loop
      if(counter >= tdValueArray.length)//if the loop ended, and no td value is the same as the option value in question, then add class option_remove
      {
        $(this).addClass('option_remove');
      }//end of if(counter >= tdValueArray.length)
    }); //End of instancename option each()
  }
  
});