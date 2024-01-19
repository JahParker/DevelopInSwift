//
//  ContentView.swift
//  WeatherForecast
//
//  Created by Jah're Parker on 1/15/24.
//

import SwiftUI

var dayForecasts: [DayForecast] = [
    DayForecast(day: "Mon", isRainy: false, high: 70, low: 50),
    DayForecast(day: "Tue", isRainy: true, high: 60, low: 40),
    DayForecast(day: "Wed", isRainy: true, high: 63, low: 47),
    DayForecast(day: "Thur", isRainy: false, high: 68, low: 50),
    DayForecast(day: "Fri", isRainy: false, high: 68, low: 49),
    DayForecast(day: "Sat", isRainy: false, high: 65, low: 52),
    DayForecast(day: "Sun", isRainy: true, high: 67, low: 49)
]

struct ContentView: View {
    
    var body: some View {
        
        ZStack {
            Color.mint.ignoresSafeArea()
            VStack {
                WeekOverview()
                    .padding(.bottom, 32)
                HStack {
                    ForEach(dayForecasts.prefix(dayForecasts.count - 2), id: \.day) { forecast in
                        Divider()
                            .frame(width: 30, height: 100)
                        DayForecastView(DayForecast: forecast)
                            .padding(-10)
                    }
                    Divider()
                        .frame(width: 30, height: 100)
                }
                .scaleEffect(0.8)
                
                Divider()
                    .frame(width: 225, height: 0.5)
                    .overlay(.black)
                    .padding(5)
                
                HStack {
                    ForEach(dayForecasts.suffix(2), id: \.day) { forecast in
                        Divider()
                            .frame(width: 30, height: 100)
                        DayForecastView(DayForecast: forecast)
                            .padding(-10)
                    }
                    Divider()
                        .frame(width: 30, height: 100)
                }
                .scaleEffect(0.8)
                
            }
        }
    }
}

#Preview {
    ContentView()
}

// Handles DayForecast data and logic
struct DayForecast: Identifiable {
    let id = UUID()
    let day: String
    let isRainy: Bool
    let high: Int
    let low: Int
    
    // The type is a tuple with the values, name and color
    var iconInfo: (name: String, color: Color) {
        isRainy ? ("cloud.rain.fill", Color.blue) : ("sun.max.fill", Color.yellow)
    }
}

// Handles DayForecast appearance
struct DayForecastView: View {
    let DayForecast: DayForecast
    
    var body: some View {
        VStack {
            Text(DayForecast.day)
                .font(Font.headline)
            
            Image(systemName: DayForecast.iconInfo.name)
                .foregroundStyle(DayForecast.iconInfo.color)
                .font(Font.largeTitle)
                .padding()
            
            Text("High: \(DayForecast.high)º")
                .fontWeight(.regular)
            
            Text("Low: \(DayForecast.low)º")
                .foregroundStyle(.secondary)
        }
    }
}

struct WeekOverview: View {
    var avgHigh: Int {
        var sum = 0
        for forecast in dayForecasts {
            sum += forecast.high
        }
        
        return sum / 7
    }
    
    var avgLow: Int {
        var sum = 0
        for forecast in dayForecasts {
            sum += forecast.low
        }
        
        return sum / 7
    }
    
    var rainDaysCount: Int {
        var count = 0
        for dayForecast in dayForecasts {
            if (dayForecast.isRainy) {
                count += 1
            }
        }
        
        return count
    }
    
    
    var body: some View {
        Text("This Week's Overview")
            .font(.largeTitle)
            .fontWeight(.bold)
            .padding(.bottom, -30)
        Text("Jan 14th, 2024 - Jan 20th, 2024")
        
        VStack(spacing: 10) {
            HStack {
                Text("Avg High: \(avgHigh)º")
                Text("Avg Low: \(avgLow)º")
            }
            HStack {
                Text("Sun Days: \(dayForecasts.count - rainDaysCount)")
                Text("Rain Days: \(rainDaysCount)")
            }
        }
    }
}
