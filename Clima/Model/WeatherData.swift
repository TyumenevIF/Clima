//
//  WeatherData.swift
//  Clima
//
//  Created by Ilyas Tyumenev on 07.05.2023.
//

import Foundation

struct WeatherData: Codable {
    let name: String
    let weather: [Weather]
    let main: Main
}

struct Weather: Codable {
    let id: Int
    let description: String
}

struct Main: Codable {
    let temp: Double
}
