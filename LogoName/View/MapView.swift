//
//  MapView.swift
//  LogoName
//
//  Created by Quan Tong Nhat on 04/08/2023.
//
//
//import SwiftUI
//import MapKit
//
//struct MapView: View {
//    let coordinate : CLLocationCoordinate2D
//
//    @State private var region = MKCoordinateRegion()
//
//       var body: some View {
//           Map(coordinateRegion: $region)
//               .onAppear(){
//                   region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004))
//               }
//               .edgesIgnoringSafeArea(.all)
//       }
//}
//
//
//struct MapView_Previews: PreviewProvider {
//    static var previews: some View {
//        MapView(coordinate: CLLocationCoordinate2D(latitude: 12.000, longitude: -120.002))
//    }
//}
import SwiftUI
import MapKit

struct MapView: View {
    let coordinate: CLLocationCoordinate2D

    @State private var region = MKCoordinateRegion()
    @State private var annotation = MKPointAnnotation()

    var body: some View {
        Map(coordinateRegion: $region, annotationItems: [annotation]) { item in
            MapMarker(coordinate: item.coordinate)
        }
        .onAppear() {
            region = MKCoordinateRegion(center: coordinate, span: MKCoordinateSpan(latitudeDelta: 0.004, longitudeDelta: 0.004))
            annotation.coordinate = coordinate
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: CLLocationCoordinate2D(latitude: 12.000, longitude: -120.002))
    }
}

extension MKPointAnnotation: Identifiable {
    public var id: UUID {
        return UUID()
    }
}
