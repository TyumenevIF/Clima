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
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString: String) {
        if let url = URL(string: urlString) {
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url, completionHandler: handle(data:response:error:))
            task.resume()
        }
    }
    
    func handle(data: Data?, response: URLResponse?, error: Error?) {
        if error != nil {
            print(error!)
            return
        }
        
        if let safeData = data {
            let dataString = String(data: safeData, encoding: .utf8)
            print(dataString)
        }
    }
}
