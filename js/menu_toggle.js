/**********************************************************
 *  This script provides functionality to the menu button *
 *  on mobile or small-width versions of the webpage      *
 *  @author Eduardo Aguilar <eagui939@mtroyal.ca>         *
 **********************************************************/

    var width = window.innerWidth; // stores the last width of the webpage by means of the resize event listener
    window.onload = updateWidth(); // once the pages is loaded update the width variable

     function updateWidth(){
         width = window.innerWidth;
     }

    /**
     * This function hides/shows the menu when the 
     * menu_button is pressed and hides the rest 
     * of the webpage.
     */
    function showhide_menu(){

      var menu = document.getElementById("menu");   
      var menu_prof = document.getElementById("profile"); 
      var all = document.getElementById("contenido");

      if(menu.style.visibility == "visible"){
        all.style.visibility = "visible" ;
        menu.style.visibility = "hidden" ;
        menu.style.width = "0";
        menu.style.position = "relative";
        profile.style.position = "absolute";              
      }
      else{
        all.style.visibility = "hidden" ;
        menu.style.visibility = "visible" ;
        menu.style.width = "100%";
        menu.style.position = "absolute";              
        profile.style.position = "relative";
      }
    }

    /**
     * This eventlistener ensures that the webpage reset
     * only when the page width changes more than 8 pixels, ignoring the height changes
     * ( otherwise it would reset when the address-bar hides in the mobile version )
     * ( the width trigger of 8px also to fix/smooth mobile version minor reorder-glitches )     
     */
    window.addEventListener('resize', function(event){
        if(Math.abs(width - window.innerWidth) > 8){
        var menu = document.getElementById("menu");   
        var menu_prof = document.getElementById("profile"); 
        var all = document.getElementById("contenido");

        all.removeAttribute('style');
        menu.removeAttribute('style');
        profile.removeAttribute('style');
        width = window.innerWidth;
      }
    });