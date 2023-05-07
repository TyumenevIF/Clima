//
//  WeatherData.swift
//  Clima
//
//  Created by Ilyas Tyumenev on 07.05.2023.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let weather: [Weather]
    let main: Main
}

struct Weather: Decodable {
    let id: Int
    let description: String
}

struct Main: Decodable {
    let temp: Double
}
