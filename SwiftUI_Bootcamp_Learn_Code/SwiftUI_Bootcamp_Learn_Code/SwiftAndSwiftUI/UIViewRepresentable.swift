//
//  UIViewRepresentable.swift
//  SwiftUI_Bootcamp_Learn_Code
//
//  Created by SYZ on 2024/7/12.
//

import Foundation

import UIKit
import SwiftUI
import MapKit

struct Map: UIViewRepresentable {
    
    var locationManager:CLLocationManager = CLLocationManager()
    
    func makeUIView(context: Context) -> MKMapView {
        self.setupManager()
       
        let map = MKMapView(frame: UIScreen.main.bounds)
        map.showsUserLocation = true
        map.userTrackingMode = .followWithHeading
        return map
        
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
    }
    
    
    func setupManager(){
        
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
    }
    
}
