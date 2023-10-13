//
//  HistoryView.swift
//  Assignment6
//
//  Created by River on 10/11/23.
//

import Foundation
import SwiftUI


struct HistoryView: View {
    @ObservedObject var viewModelInstance: MarkerViewModel
    
    var body: some View {
        
        NavigationView {
            VStack {
                List(viewModelInstance.markerInfo, id: \.name) { marker in
                    VStack(alignment: .leading) {
                        Text("Name: \(marker.name)")
                        Text("Latitude: \(marker.latitude)")
                        Text("Longitude: \(marker.longitude)")
                    }
                }
                .navigationBarTitle("Location History")
                Text("MarkerObj Length: \(viewModelInstance.markerInfo.count)")
                Spacer()

                Button(action: {
                  
                    viewModelInstance.markerInfo.removeAll()
                }) {
                    Text("Reset")
                }
            }
        }
    }
}
