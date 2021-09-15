$(document).ready(function(){
			//sendData();
   });

function sendData(){
	alert(' inside sendData ');
	var mge = 'getUnit';
    alert(mge);
    $.ajax({
        type: "POST",
        url: "UnitServlet",
        data: { message : mge  }
      }).done(function( msg ) {
        alert( "Data Saved: " + msg );
        
      });
}


function getUnits(){
	var unit = new Object();  // title, content, lat ,long
	var mge = 'testing';
    //alert(mge);
    $.ajax({
        type: "POST",
        url: "UnitServlet",
        data: { message : mge  }
      }).done(function( msg ) {
        //alert( "Data Saved: " + msg );
        
      });
    return mge;
}

