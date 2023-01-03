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
}
