//
//  ContentView.swift
//  Assignment6
//
//  Created by River on 10/11/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var markerViewModel = MarkerViewModel()
    let pushNotificationService = PushNotificationService() // Create an instance of your PushNotificationService
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("Earth")
                    .scaleEffect(1.5)
                VStack {
                    NavigationLink(destination: MapView(viewModel: markerViewModel)) {
                        Text("Go to Map")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(30)
                    }
                    .padding()
                    
                    NavigationLink(destination: MarkerView(viewModel: markerViewModel)) {
                        Text("Add a location")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(30)
                    }
                    .padding()
                    
                    NavigationLink(destination: HistoryView(viewModelInstance: markerViewModel)) {
                        Text("Location history")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(30)
                    }
                    .padding()
                    
                    //button to request notification permission
                    Button(action: {
                        pushNotificationService.requestPermissions()
                    }) {
                        Text("Request Notification Permission")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(30)
                    }
                    .padding()
                    
                    Button(action: {
                        pushNotificationService.scheduleNotification(title: "Hello", subtitle: "This is your notification!")
                    }) {
                        Text("Schedule Notification")
                            .foregroundColor(.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(30)
                    }
                    .padding()
                    
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}

