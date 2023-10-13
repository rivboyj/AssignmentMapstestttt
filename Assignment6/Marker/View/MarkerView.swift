//
//  MarkerView.swift
//  Assignment6
//
//  Created by River on 10/11/23.
//

import Foundation
import SwiftUI
import MapKit


struct MarkerView: View {
    @State var latitude: String = ""
    @State  var longitude: String = ""
    @State var name: String = ""
    
    
    var viewModel : MarkerViewModel
    var body: some View {
        ZStack{
            Image("map")
                         .resizable()
                         .scaledToFill() // Use .scaledToFill content mode
                         .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height)
                         .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Latitude:")
                TextField("Enter Latitude", text: $latitude)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .foregroundColor(.green)
                
                Text("Longitude:")
                TextField("Enter Longitude", text: $longitude)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Text("Name:")
                TextField("Enter Name", text: $name)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                
                Button(action: {
                    if let lat = Double(latitude), let long = Double(longitude) {
                                      let newCoordinate = CLLocationCoordinate2D(latitude: lat, longitude: long)
                                        let newMarker = MarkerArr(latitude: latitude, longitude: longitude, name: name, coordinates:newCoordinate )
                                        viewModel.markerInfo.append(newMarker)
                                    
                                  }
   
                               
                               // Clear the text fields for the next entry
                               latitude = ""
                               longitude = ""
                               name = ""
                    
                   
                    
                }) {
                    Text("Submit")
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(30)
                }
                .padding()
            }
            .padding()
          
        }
    }
}
