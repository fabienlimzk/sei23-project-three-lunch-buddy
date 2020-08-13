handler = Gmaps.build('Google');  
handler.buildMap({ provider: {}, internal: {id: 'map'}}, function(){  
    let appointment = $('.appointment').data("appointment")
        markers = handler.addMarkers([  
            {  
            "lat": appointment.latitude, 
            "lng": appointment.longitude,  
            "picture": {  
                "width":  32,  
                "height": 32  
            },
            "infowindow": appointment.address
            }  
        ]);  
        handler.bounds.extendWith(markers);  
        handler.fitMapToBounds();  
});  