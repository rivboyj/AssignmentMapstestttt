//
//  MarkerModel.swift
//  Assignment6
//
//  Created by River on 10/11/23.
//

import Foundation
import SwiftUI
import MapKit

struct MarkerArr : Identifiable{
    var latitude: String
    var longitude: String
    var name: String
    var coordinates : CLLocationCoordinate2D
    var id: Int { return UUID().hashValue }
}
