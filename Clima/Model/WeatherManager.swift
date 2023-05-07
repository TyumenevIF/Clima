//
//  WeatherManager.swift
//  Clima
//
//  Created by Ilyas Tyumenev on 07.05.2023.
//

import Foundation

struct WeatherManager {
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=73a7d564078dabe8073cc302ea01aa0e&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        print(urlString)
    }
}
