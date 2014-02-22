var tdValueArray = new Array();

$(document).ready(function(){
  $('#iseappname_select').change(function(){
      var selected = $(this).val();
      //console.log(selected);
      
      if(selected) //if value of selected is not empty and has value
      {
        $('tr').removeClass('iseappname_hide'); //reset all TR before applying new value
        
        $('td.iseappname_td').each(function(){
          if($(this).text() != selected)
          {
            $(this).parent('tr').addClass('iseappname_hide');
          }//end of if
        });//end of each()
      }//end of if(selected)
      else //if selected is empty
      {
        $('tr').removeClass('iseappname_hide');
      }
      $('tr').show();
      $('tr.iseappname_hide').hide();
      
      /*
      $("tr.data").not(".iseappname_hide").children("td.instancename_td").each(function(){
        console.log($(this).text());
      })
      */
      
      
      tdValueArray = getCurrentValue('instancename_td');//Get all the column td values
      removeOptions('option.instancename_option');
      
      /*
      //Now removing the unneccesary options
      $('option.instancename_option').each(function(){
        var optionValue = $(this).val();
        //console.log(optionValue);
        
        if($(this).hasClass('option_remove'))
        {
          $(this).unwrap();
          $(this).removeClass('option_remove'); //Resetting options
        }
        
        //var tdValueArray = getCurrentValue('instancename_td');//Get all the column td values
        //console.log('I am here');
        //sconsole.log(tdValueArray.length);
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
      */
      $('option').show();
      $('option.option_remove').wrap('<span></span>').hide();
  
    }); //End of iseappname_select's change() 
  
  
  //Base on the given td_class -- i.e iseappname_td -- return an array that contains all of its values
  function getCurrentValue(td_class)
  {
    var valueArray = new Array();
    $('tr.data').not('.iseappname_hide').children('.'+td_class).each(function(){
      var value = $(this).text();
      valueArray.push(value);
      //console.log(value);
    });
  
    return valueArray;
  }
  
  function removeOptions(optionSelector)
  {
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