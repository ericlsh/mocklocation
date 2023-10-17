//
//  AppDelegate.swift
//  MockLocation
//
//  Created by Eric Leung on 2023-10-16.
//

import Foundation
import UIKit
import CoreLocation

class AppDelegate: NSObject, UIApplicationDelegate {
    let locationManager = CLLocationManager()
    var currentLocation:CLLocation!
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        DispatchQueue.global().async {
            if CLLocationManager.locationServicesEnabled() {
                switch(CLLocationManager.authorizationStatus()) {
                case .authorizedAlways, .authorizedWhenInUse:
                    self.locationManager.startUpdatingLocation()
                    break
                case .notDetermined:
                    self.locationManager.requestWhenInUseAuthorization()
                    break
                case .restricted:
                    print("Restricted.")
                    break
                case .denied:
                    UIApplication.shared.open(URL(string:UIApplication.openSettingsURLString)!, options: [:], completionHandler: nil)
                @unknown default:
                    break
                }
            }
        }
        return true
    }
}

extension AppDelegate: CLLocationManagerDelegate {
    func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
        if status == .authorizedWhenInUse {
            locationManager.startUpdatingLocation()
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        self.currentLocation = locations.last! as CLLocation
        
        //            if (self.appDelegateLocationUpdateDelegate != nil && (self.appDelegateLocationUpdateDelegate?.responds(to: #selector(self.appDelegateLocationUpdateDelegate?.currentLocationUpdate(_:))))!)
        //            {
        //                self.appDelegateLocationUpdateDelegate?.currentLocationUpdate!(locations.last! as CLLocation)
        //            }
        print("User current location===>>",locations)
    }
}
