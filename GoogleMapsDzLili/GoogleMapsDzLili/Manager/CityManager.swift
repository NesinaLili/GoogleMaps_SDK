//
//  CityManager.swift
//  GoogleMapsDzLili
//
//  Created by Лилия on 6/15/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import Foundation

class CityManager {

var cities: [City] = []
    
init() {
    
    cities.append(City(name: "AMSTERDAM", image: "amsterdam", location: Location(latitude: 52.3668778, longitude: 4.8755356, museum: [Museum(latitudeMuseum: 52.376289, longitudeMuseum: 4.884208, nameMuseum: "Музей Тюльпанов", descriptionMuseum: "116III, EA, Prinsengracht 1015, 1017 KN Amsterdam, Нидерланды"), Museum(latitudeMuseum: 52.362658, longitudeMuseum: 4.922297, nameMuseum: "Музей тропиков", descriptionMuseum: "Linnaeusstraat 2, 1092 CK Amsterdam, Нидерланды"), Museum(latitudeMuseum: 52.374211, longitudeMuseum: 4.912336, nameMuseum: "Музей NEMO", descriptionMuseum: "Oosterdok 2, 1011 VX Amsterdam, Нидерланды"), Museum(latitudeMuseum: 52.358012, longitudeMuseum: 4.879751, nameMuseum: "Стеделейк", descriptionMuseum: "Museumplein 10, 1071 DJ Amsterdam, Нидерланды"), Museum(latitudeMuseum: 52.365678, longitudeMuseum: 4.898978, nameMuseum: "Музей Виллет-Холтхаусен", descriptionMuseum: "Herengracht 605, 1017 CE Amsterdam, Нидерланды")])))
    
    cities.append(City(name: "BARSELONA", image: "barselona", location: Location(latitude: 41.405016, longitude: 2.155628, museum: [Museum(latitudeMuseum: 41.412976, longitudeMuseum: 2.131552, nameMuseum: "Музей «Космокайша» в Барселоне", descriptionMuseum: "Carrer d'Isaac Newton, 26, 08022 Barcelona, Испания"), Museum(latitudeMuseum: 41.380268, longitudeMuseum: 2.120905, nameMuseum: "Музей футбольного клуба «Барселона»", descriptionMuseum: "C. d'Arístides Maillol, s/n, 08028 Barcelona, Испания"), Museum(latitudeMuseum: 41.368442, longitudeMuseum: 2.153568, nameMuseum: "Национальный музей искусства Каталонии", descriptionMuseum: "Palau Nacional, Parc de Montjuïc, s/n, 08038 Barcelona, Испания"), Museum(latitudeMuseum: 41.402454, longitudeMuseum: 2.188079, nameMuseum: "The Design Museum of Barcelona", descriptionMuseum: "Plaça de les Glòries Catalanes, 37, 08018 Barcelona, Испания"), Museum(latitudeMuseum: 41.388837, longitudeMuseum: 2.163466, nameMuseum: "Museu del Modernisme Català", descriptionMuseum: "Carrer de Balmes, 48, 08007 Barcelona, Испания")])))
    
    cities.append(City(name: "KYIV", image: "kyiv", location: Location(latitude: 50.449852, longitude: 30.522717, museum: [Museum(latitudeMuseum: 50.448762, longitudeMuseum: 30.460644, nameMuseum: "Государственный политехнический музей при НТУУ КПИ", descriptionMuseum: "проспект Перемоги, 37/6, Київ, 02000"), Museum(latitudeMuseum: 50.487351, longitudeMuseum: 30.494147, nameMuseum: "Experimentanium", descriptionMuseum: "проспект Степана Бандери, 6, Київ, 04071"), Museum(latitudeMuseum: 50.450311, longitudeMuseum: 30.468854, nameMuseum: "Киевский музей восковых фигур", descriptionMuseum: "проспект Перемоги, 29, Київ, 01034"), Museum(latitudeMuseum: 50.353419, longitudeMuseum: 30.503597, nameMuseum: "Національний музей народної архітектури та побуту України", descriptionMuseum: "вулиця Академіка Тронька, Київ, 03026"), Museum(latitudeMuseum: 50.427909, longitudeMuseum: 30.564706, nameMuseum: "Музей истории Украины во Второй мировой войне", descriptionMuseum: "вулиця Лаврська, 24, Київ, 01015"), Museum(latitudeMuseum: 50.353419, longitudeMuseum: 30.503597, nameMuseum: "Національний музей народної архітектури та побуту України", descriptionMuseum: "вулиця Академіка Тронька, Київ, 03026")])))
    
    cities.append(City(name: "MADRID", image: "madrid", location: Location(latitude: 40.416779, longitude: -3.703791, museum: [Museum(latitudeMuseum: 40.4243583, longitudeMuseum: -3.6743622, nameMuseum: "Museo Casa de la Moneda", descriptionMuseum: "Calle del Dr. Esquerdo, 36, 28028 Madrid, Испания"), Museum(latitudeMuseum: 40.4402675, longitudeMuseum: -3.7450039, nameMuseum: "Музей Америки", descriptionMuseum: "Av. de los Reyes Católicos, 6, 28040 Madrid, Испания"), Museum(latitudeMuseum: 40.4137986, longitudeMuseum: -3.6921409, nameMuseum: "Музей Прадо", descriptionMuseum: "Calle de Ruiz de Alarcon, 23, 28014 Madrid, Испанияя")])))
    
    cities.append(City(name: "MOSCOW", image: "moskov", location: Location(latitude: 55.755367, longitude: 37.617162, museum: [Museum(latitudeMuseum: 55.7675435, longitudeMuseum: 37.6136332, nameMuseum: "Музей космонавтики", descriptionMuseum: "пр-т Мира, 111, Москва, Россия, 129223"), Museum(latitudeMuseum: 55.7492079, longitudeMuseum: 37.6043122, nameMuseum: "Государственный музей изобразительных искусств имени А.С. Пушкина", descriptionMuseum: "ул. Волхонка, 12, Москва, Россия, 119019"), Museum(latitudeMuseum: 55.7806438, longitudeMuseum: 37.5699986, nameMuseum: "Музей русского импрессионизма", descriptionMuseum: "Ленинградский пр-т., 15 строение 11, Москва, Россия, 125040"), Museum(latitudeMuseum: 55.7278202, longitudeMuseum: 37.6015551, nameMuseum: "Московский музей современного искусства", descriptionMuseum: "Петровка ул., 25, Москва, Россия, 125009")])))
    
    cities.append(City(name: "PARIS", image: "paris", location: Location(latitude: 48.856632, longitude: 2.351877, museum: [Museum(latitudeMuseum: 48.8606657, longitudeMuseum: 2.3376303, nameMuseum: "Лувр", descriptionMuseum: "Rue de Rivoli, 75001 Paris, Франция"), Museum(latitudeMuseum: 48.8434678, longitudeMuseum: 2.3634756, nameMuseum: "Национальный музей естественной истории", descriptionMuseum: "57 Rue Cuvier, 75005 Paris, Франция"), Museum(latitudeMuseum: 48.8955864, longitudeMuseum: 2.3878873, nameMuseum: "Музей Мармоттан-Моне", descriptionMuseum: "2 Rue Louis Boilly, 75016 Paris, Франция")])))
    
    cities.append(City(name: "VENICE", image: "venice", location: Location(latitude: 45.441050, longitude: 12.315321, museum: [Museum(latitudeMuseum: 45.4367295, longitudeMuseum: 12.3252563, nameMuseum: "Скуола Сан-Рокко", descriptionMuseum: "San Polo, 3052, 30125 Venezia VE, Италия"), Museum(latitudeMuseum: 45.4311255, longitudeMuseum: 12.3280594, nameMuseum: "Музей Академии", descriptionMuseum: "Campo della Carita, 1050, 30123 Venezia VE, Италия"), Museum(latitudeMuseum: 45.4335905, longitudeMuseum: 12.337015, nameMuseum: "Коррер", descriptionMuseum: "Piazza San Marco, 52, 30124 Venezia VE, Италия")])))
    
    }
}
