# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$(document).ready -> 
    #disable_next_buttons()
    clear_name_textbox()
    uncheck_radio()

    
disable_next_buttons = () ->
    $("#btnext2").prop('disabled', true)
    $("#btnext3").prop('disabled', true)
    $("#btfinish").prop('disabled', true) 

clear_name_textbox = () -> 
    $('#quiz_taker').val("")


uncheck_radio = () -> 
    $('.step2-radio').prop('checked', false)
    $('.step3-radio').prop('checked', false)
    $('.step4-radio').prop('checked', false)


    



    
    

    


    


    