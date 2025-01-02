//
//  testApp.swift
//  test
//
//  Created by Sudharaka Ashen Edussuriya on 2025-01-02.
//

import SwiftUI

@main
struct testApp: App {
    @State private var isLoading = true

    var body: some Scene {
        WindowGroup {
            if isLoading {
                LoadingView()
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            isLoading = false
                        }
                    }
            } else {
                NavigationView {
                    ContentView()
                }
            }
        }
    }
}
