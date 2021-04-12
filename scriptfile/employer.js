$(document).ready(function(){
   $('#empmsg').hide();
   $(document).on('click','#closeemp',function(e){
   console.log("Hello");
       $('#Employer').trigger('close');
    });
});