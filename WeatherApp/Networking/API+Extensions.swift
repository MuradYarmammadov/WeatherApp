//
//  API+Extensions.swift
//  WeatherApp
//
//  Created by Murad Yarmamedov on 01.02.24.
//

import Foundation

extension API {
    static let baseURLString = "http://api.openweathermap.org/data/2.5/"
    
    static func getURLFor(lat: Double, lon: Double) -> String {
        return "\(baseURLString)onecall?lat=\(lat)&lon=\(lon)&exclude=minutely&appid=\(key)&units=imperial"
    }
}
