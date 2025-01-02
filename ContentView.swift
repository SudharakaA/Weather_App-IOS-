//
//  ContentView.swift
//  test
//
//  Created by Sudharaka Ashen Edussuriya on 2025-01-02.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
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
