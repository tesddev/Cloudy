//
//  DayViewModel.swift
//  Cloudy
//
//  Created by Tes on 02/01/2023.
//  Copyright © 2023 Cocoacasts. All rights reserved.
//

import Foundation

struct DayViewModel {
    let weatherData: WeatherData
    
    var date: String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEE, MMMM d"
        return dateFormatter.string(from: weatherData.time)
    }
    
    var time: String {
        // Initialize Date Formatter
        let dateFormatter = DateFormatter()

        // Configure Date Formatter
        dateFormatter.dateFormat = UserDefaults.timeNotation.dateFormat

        return dateFormatter.string(from: weatherData.time)
    }
    
    var summary: String {
        weatherData.summary
    }
    
    var temperature: String {
        let temperature = weatherData.temperature
        
        switch UserDefaults.temperatureNotation {
        case .fahrenheit:
            return String(format: "%.1f °F", temperature)
        case .celsius:
            return String(format: "%.1f °C", temperature.toCelcius)
        }
    }
}
