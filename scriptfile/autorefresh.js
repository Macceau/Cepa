$(document).ready(function(){
    setInterval(function(){
      Push.Permission.request();

      },1000);
});