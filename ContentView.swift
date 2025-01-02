//
//  ContentView.swift
//  test
//
//  Created by Sudharaka Ashen Edussuriya on 2025-01-02.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    @State private var cityName = "City Name"
    @State private var temperature = "22°C"
    @State private var weatherDescription = "Partly Cloudy"
    @State private var weatherIcon = "cloud.sun.fill"

    var body: some View {
        NavigationView {
            VStack {
                TextField("Search for a city", text: $searchText, onCommit: {
                    searchWeather(for: searchText)
                })
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()

                VStack {
                    Text(cityName)
                        .font(.largeTitle)
                        .bold()
                    Text("Today, Jan 2")
                        .font(.title3)
                        .foregroundColor(.secondary)
                    
                    Image(systemName: weatherIcon)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 100, height: 100)
                        .foregroundStyle(.yellow, .blue)
                    
                    Text(temperature)
                        .font(.system(size: 64, weight: .bold))
                    Text(weatherDescription)
                        .font(.title2)
                        .foregroundColor(.secondary)
                }
                .padding()

                NavigationLink(destination: WeatherView()) {
                    Text("Go to Weather View")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(8)
                }
            }
            .padding()
        }
    }

    private func searchWeather(for city: String) {
        // Implement the search functionality here
        // For now, we'll just simulate a search result
        cityName = city
        temperature = "25°C"
        weatherDescription = "Sunny"
        weatherIcon = "sun.max.fill"
    }
}
#Preview {
    ContentView()
}

import SwiftUI

struct WeatherView: View {
    var body: some View {
        VStack(spacing: 20) {
            // Current Weather Section
            VStack {
                Text("City Name")
                    .font(.largeTitle)
                    .bold()
                Text("Today, Jan 2")
                    .font(.title3)
                    .foregroundColor(.secondary)
                
                Image(systemName: "cloud.sun.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .foregroundStyle(.yellow, .blue)
                
                Text("22°C")
                    .font(.system(size: 64, weight: .bold))
                Text("Partly Cloudy")
                    .font(.title2)
                    .foregroundColor(.secondary)
            }
            
            Divider()
                .padding(.horizontal)
            
            // Forecast Section
            VStack(alignment: .leading, spacing: 15) {
                Text("5-Day Forecast")
                    .font(.headline)
                    .padding(.leading)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(spacing: 20) {
                        ForEach(0..<5) { day in
                            VStack {
                                Text("Day \(day + 1)")
                                    .font(.subheadline)
                                Image(systemName: "cloud.rain.fill")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 50, height: 50)
                                    .foregroundStyle(.blue)
                                Text("18°C")
                                    .font(.headline)
                            }
                            .frame(width: 80, height: 150)
                            .background(Color(.secondarySystemBackground))
                            .cornerRadius(10)
                            .shadow(radius: 2)
                        }
                    }
                    .padding(.horizontal)
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    WeatherView()
}
