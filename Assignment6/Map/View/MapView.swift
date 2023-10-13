//
//  MapView.swift
//  Assignment6
//
//  Created by River on 10/11/23.
//

import Foundation
import SwiftUI
import MapKit

//struct MapView: View {
//    var viewModel : MarkerViewModel
//    var body: some View {
//        Map(){
//            Marker(viewModel.markerInfo[0].name, coordinate: viewModel.markerInfo[0].coordinates)
//            }
//           
//            }
//        }
//
struct MapView: View {
    var viewModel: MarkerViewModel
    
    var body: some View {
        Map() {
            ForEach(viewModel.markerInfo) { marker in //the markerInfo is identifyiable and has a unique id that will defaulty be used
                Marker(marker.name, coordinate: marker.coordinates)
            }
        }
    }
}
