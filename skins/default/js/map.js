// JavaScript Document
var map;
	
	var myCollection;
	
	ymaps.ready(function () {
    map = new ymaps.Map('YMapsID', {
        center: [56.326944, 44.0075],
        zoom: 15,
        type: 'yandex#map',
        behaviors: ['default', 'scrollZoom']
    });
	
	//Добавляем элементы управления
	 map.controls                
            .add('zoomControl')                
            .add('typeSelector')                
            .add('mapTools');
			
	myCollection = new ymaps.GeoObjectCollection();			
			
	$("select").change(function () {			
	var town = $("#selecttown :selected").val();	
	do_search(town);			
	})
    .change();			
	})
	
function do_search(town){

$('#shops').html('');
 
$.getJSON("/map.php", {town: town}, function(json){ 
var src_res="<p><strong>результаты поиска: </strong></p>";

myCollection.removeAll();

src_res=src_res+'<p><strong>Найдено объектов: '+json.length+'</strong></p>';

for (i = 0; i < json.length; i++) {
var sch = i+1;
var placemark = new ymaps.Placemark([json[i].lon,json[i].lat], {
	iconContent: sch,
    balloonContentHeader: '<div style="color:#ff0303;font-weight:bold">'+json[i].address+'</div>',
    balloonContentBody: '<div class="forJS"><div><strong>Адрес:</strong> '+json[i].address+'<br>'+'<strong>Режим работы:</strong> '+json[i].rrab+'<br></div></div>'   
        }, {
        // Опции
        preset: 'twirl#nightStretchyIcon' // иконка растягивается под контент
        });
myCollection.add(placemark);
src_res=src_res+'<p>'+sch+'. '+'<a href="#" onClick="return go_to('+json[i].lat+', '+json[i].lon+",'"+json[i].address+"');"+'\">'+json[i].address+'</a></p>';
}
map.geoObjects.add(myCollection);
map.setBounds(myCollection.getBounds());

$('#shops').html(src_res);

});
}

function go_to(lat,lon,address){
map.setCenter([lon, lat], 16);

myCollection.each(function (item) {
    if (item.properties.get('balloonContentHeader') == '<div style="color:#ff0303;font-weight:bold">'+address+'</div>') {
        item.balloon.open();
     }
	});
return false;
}		





