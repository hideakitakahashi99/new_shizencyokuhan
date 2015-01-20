# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

    

if $('#map').length
  
    default_point = new google.maps.LatLng(35.494317, 134.225368)

  
    window.big_map = new google.maps.Map(
        document.getElementById('map'),
        {
        center: default_point, 
        zoom: 16,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        scaleControl: true
        }
    )

map_style_options = [
    {
        featureType: 'all',
        elementType: 'geometry',
        stylers: [{ hue: '#6d4d38' }, { saturation: '-70' }, { gamma: '2.0' }]
    }
    ]

my_style = new google.maps.StyledMapType(map_style_options)
map.mapTypes.set('MyStyle', my_style)
map.setMapTypeId('MyStyle')

google.maps.event.addListener(map, 'idle', ->
  
    pos = map.getBounds()
    north = pos.getNorthEast().lat()
    south = pos.getSouthWest().lat()
    east    = pos.getNorthEast().lng()
    west = pos.getSouthWest().lng()
   
    $.getScript("/projects/marker?&north=#{north}&south=#{south}&east=#{east}&west=#{west}")
)

 
