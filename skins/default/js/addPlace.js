// JavaScript Document

ymaps.ready(init);

function init () {

//Определение начальных параметров карты
				var myMap = new ymaps.Map("map", {
								center: [56.326944, 44.0075], 
								zoom: 13
						}, {
								balloonMaxWidth: 600
						});
		
//Добавляем элементы управления
myMap.controls                
					.add('zoomControl')                
					.add('typeSelector')                
					.add('mapTools');

	
//Отслеживаем событие клик левой кнопкой мыши на карте
			myMap.events.add('click', function (e) {
					if (!myMap.balloon.isOpen()) {
							var coords = e.get('coordPosition');
							myMap.balloon.open(coords, {                        
									contentBody: '<div id="menu">\
											 <div id="menu_list">\
													<label>Название:</label> <input type="text" class="input-medium" name="icon_text" /><br />\
													 <label>Подсказка:</label> <input type="text" class="input-medium" name="hint_text" /><br />\
													 <label>Балун:</label> <input type="text" class="input-medium" name="balloon_text" /><br />\
													 <div class="control-group"><label>Значок метки:</label>\
													 <div class="input-prepend"><span class="add-on"><img src="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/blue.png" style="height: 20px" /></span>\
													 <select name="image" id="image" class="span2" >\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/blue.png" value="twirl#blueIcon">twirl#blueIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/darkblue.png" value="twirl#darkblueIcon">twirl#darkblueIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/darkgreen.png" value="twirl#darkgreenIcon">twirl#darkgreenIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/darkorange.png" value="twirl#darkorangeIcon">twirl#darkorangeIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/green.png" value="twirl#greenIcon">twirl#greenIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/grey.png" value="twirl#greyIcon">twirl#greyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/lightblue.png" value="twirl#lightblueIcon">twirl#lightblueIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/night.png" value="twirl#nightIcon">twirl#nightIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/orange.png" value="twirl#orangeIcon">twirl#orangeIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/pink.png" value="twirl#pinkIcon">twirl#pinkIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/red.png" value="twirl#redIcon">twirl#redIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/violet.png" value="twirl#violetIcon">twirl#violetIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/white.png" value="twirl#whiteIcon">twirl#whiteIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/yellow.png" value="twirl#yellowIcon">twirl#yellowIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/brown.png" value="twirl#brownIcon">twirl#brownIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/black.png" value="twirl#blackIcon">twirl#blackIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/bluestr.png" value="twirl#blueStretchyIcon">twirl#blueStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/darkbluestr.png" value="twirl#darkblueStretchyIcon">twirl#darkblueStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/darkgreenstr.png" value="twirl#darkgreenStretchyIcon">twirl#darkgreenStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/darkorangestr.png" value="twirl#darkorangeStretchyIcon">twirl#darkorangeStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/greenstr.png" value="twirl#greenStretchyIcon">twirl#greenStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/greystr.png" value="twirl#greyStretchyIcon">twirl#greyStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/lightbluestr.png" value="twirl#lightblueStretchyIcon">twirl#lightblueStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/nightstr.png" value="twirl#nightStretchyIcon">twirl#nightStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/orangestr.png" value="twirl#orangeStretchyIcon">twirl#orangeStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/pinkstr.png" value="twirl#pinkStretchyIcon">twirl#pinkStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/redstr.png" value="twirl#redStretchyIcon">twirl#redStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/violetstr.png" value="twirl#violetStretchyIcon">twirl#violetStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/whitestr.png" value="twirl#whiteStretchyIcon">twirl#whiteStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/yellowstr.png" value="twirl#yellowStretchyIcon">twirl#yellowStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/brownstr.png" value="twirl#brownStretchyIcon">twirl#brownStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/blackstr.png" value="twirl#blackStretchyIcon">twirl#blackStretchyIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/airplane.png" value="twirl#airplaneIcon">twirl#airplaneIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/anchor.png" value="twirl#anchorIcon">twirl#anchorIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/badminton.png" value="twirl#badmintonIcon">twirl#badmintonIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/bank.png" value="twirl#bankIcon">twirl#bankIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/bar.png" value="twirl#barIcon">twirl#barIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/barberShop.png" value="twirl#barberShopIcon">twirl#barberShopIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/bicycle.png" value="twirl#bicycleIcon">twirl#bicycleIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/bowling.png" value="twirl#bowlingIcon">twirl#bowlingIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/buildings.png" value="twirl#buildingsIcon">twirl#buildingsIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/bus.png" value="twirl#busIcon">twirl#busIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/cafe.png" value="twirl#cafeIcon">twirl#cafeIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/camping.png" value="twirl#campingIcon">twirl#campingIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/car.png" value="twirl#carIcon">twirl#carIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/cellular.png" value="twirl#cellularIcon">twirl#cellularIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/cinema.png" value="twirl#cinemaIcon">twirl#cinemaIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/downhillSkiing.png" value="twirl#downhillSkiingIcon">twirl#downhillSkiingIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/dps.png" value="twirl#dpsIcon">twirl#dpsIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/dryCleaner.png" value="twirl#dryCleanerIcon">twirl#dryCleanerIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/electricTrain.png" value="twirl#electricTrainIcon">twirl#electricTrainIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/factory.png" value="twirl#factoryIcon">twirl#factoryIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/theater.png" value="twirl#theaterIcon">twirl#theaterIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/fishing.png" value="twirl#fishingIcon">twirl#fishingIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/gasStation.png" value="twirl#gasStationIcon">twirl#gasStationIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/gym.png" value="twirl#gymIcon">twirl#gymIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/hospital.png" value="twirl#hospitalIcon">twirl#hospitalIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/house.png" value="twirl#houseIcon">twirl#houseIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/keyMaster.png" value="twirl#keyMasterIcon">twirl#keyMasterIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/mailPost.png" value="twirl#mailPostIcon">twirl#mailPostIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/metroKiev.png" value="twirl#metroKievIcon">twirl#metroKievIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/metroMoscow.png" value="twirl#metroMoscowIcon">twirl#metroMoscowIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/metroStPetersburg.png" value="twirl#metroStPetersburgIcon">twirl#metroStPetersburgIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/metroYekaterinburg.png" value="twirl#metroYekaterinburgIcon">twirl#metroYekaterinburgIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/motobike.png" value="twirl#motobikeIcon">twirl#motobikeIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/mushroom.png" value="twirl#mushroomIcon">twirl#mushroomIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/phone.png" value="twirl#phoneIcon">twirl#phoneIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/photographer.png" value="twirl#photographerIcon">twirl#photographerIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/pingPong.png" value="twirl#pingPongIcon">twirl#pingPongIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/restauraunt.png" value="twirl#restaurauntIcon">twirl#restaurauntIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/ship.png" value="twirl#shipIcon">twirl#shipIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/shop.png" value="twirl#shopIcon">twirl#shopIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/skating.png" value="twirl#skatingIcon">twirl#skatingIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/stadium.png" value="twirl#stadiumIcon">twirl#stadiumIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/skiing.png" value="twirl#skiingIcon">twirl#skiingIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/smartphone.png" value="twirl#smartphoneIcon">twirl#smartphoneIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/workshop.png" value="twirl#workshopIcon">twirl#workshopIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/storehouse.png" value="twirl#storehouseIcon">twirl#storehouseIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/swimming.png" value="twirl#swimmingIcon">twirl#swimmingIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/tailorShop.png" value="twirl#tailorShopIcon">twirl#tailorShopIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/tennis.png" value="twirl#tennisIcon">twirl#tennisIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/tire.png" value="twirl#tireIcon">twirl#tireIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/truck.png" value="twirl#truckIcon">twirl#truckIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/train.png" value="twirl#trainIcon">twirl#trainIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/tramway.png" value="twirl#tramwayIcon">twirl#tramwayIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/trolleybus.png" value="twirl#trolleybusIcon">twirl#trolleybusIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/wifi.png" value="twirl#wifiIcon">twirl#wifiIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/wifiLogo.png" value="twirl#wifiLogoIcon">twirl#wifiLogoIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/turnLeft.png" value="twirl#turnLeftIcon">twirl#turnLeftIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/turnRight.png" value="twirl#turnRightIcon">twirl#turnRightIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/arrowDownLeft.png" value="twirl#arrowDownLeftIcon">twirl#arrowDownLeftIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/arrowDownRight.png" value="twirl#arrowDownRightIcon">twirl#arrowDownRightIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/arrowLeft.png" value="twirl#arrowLeftIcon">twirl#arrowLeftIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/arrowRight.png" value="twirl#arrowRightIcon">twirl#arrowRightIcon</option>\
														<option data-path="http://api.yandex.ru/maps/doc/jsapi/2.x/ref/images/styles/arrowUp.png" value="twirl#arrowUpIcon">twirl#arrowUpIcon</option>\
														</select></div>\
											 </div></div>\
									 <button type="submit" class="btn btn-success">Сохранить</button>\
									 </div>'});
			 
	var myPlacemark = new ymaps.Placemark(coords);
	
	//Добавляем картинку при выборе опции select
	$('#image').change(function(){
		$('.add-on').find('img:first').attr('src', $('#image option:selected').attr('data-path'));
	});		 
		
	//Сохраняем данные из формы		
	 $('#menu button[type="submit"]').click(function () {
				var iconText =   $('input[name="icon_text"]').val(),
				hintText = 			 $('input[name="hint_text"]').val(),
				balloonText = 	 $('input[name="balloon_text"]').val(),
				stylePlacemark = $('select[@name=image] option:selected').text();
		
		//Добавляем метку на карту	
		myMap.geoObjects.add(myPlacemark);

		//Изменяем свойства метки и балуна
			myPlacemark.properties.set({
					iconContent: iconText,
					hintContent: hintText,
					balloonContent: balloonText});
			//Устанавливаем стиль значка метки
			myPlacemark.options.set({
			preset: stylePlacemark
			});	
			//Закрываем балун
			myMap.balloon.close();
			});		 
			} else {
			myMap.balloon.close();
			}
			});


}
