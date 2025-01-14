<!doctype html>  
<html lang="en">  
   <head>  
      <meta charset="utf-8">  
      <title>jQuery UI Dialog functionality</title>  
      <link href="https://code.jquery.com/ui/1.10.4/themes/ui-lightness/jquery-ui.css" rel="stylesheet">  
      <script src="https://code.jquery.com/jquery-1.10.2.js"></script>  
      <script src="https://code.jquery.com/ui/1.10.4/jquery-ui.js"></script>  
      <!-- CSS -->  
      <style>  
         .ui-widget-header,.ui-state-default, ui-button{  
            background:crimson;  
            border: 2px solid brown;  
            color: white;  
            font-weight: bold; 
         }  
      </style>  
      <!-- Javascript -->  
      <script>  
         $(function() {  
            $( "#dialg" ).dialog({  
               autoOpen: false,    
            });  
            $( "#opener" ).click(function() {  
               $( "#dialg" ).dialog( "open" );  
            });  
         });  
      </script>  
   </head>  
   <body>  
      <!-- HTML -->   
      <div id="dialg" title="Definition: Knowledge">"The theoretical or practical understanding of a subject." </div>  
      <button id="opener">Dialog Box</button>  
   </body>  
</html>