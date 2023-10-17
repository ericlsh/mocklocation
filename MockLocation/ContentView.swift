//
//  ContentView.swift
//  MockLocation
//
//  Created by Eric Leung on 2023-10-16.
//

import SwiftUI
import CoreGPX

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.run")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Let run between mk and tst !")
            Button("Downtown Vancouver") {
                changeToRouteDowntown()
            }
            Button("HK MK to TST") {
                changeToRouteHk()
            }
            
            Text("After installation, the mock will work automatically. Just delete the app to cancel the mock.")
                .multilineTextAlignment(.center)
                
        }
        .padding()
    }
    
    // MARK: - Change Route
    func changeToRouteDowntown() {
        let root = GPXRoot()
        /*
         49.28515904004322, -123.11430818213351
         49.282502663855276, -123.09960479215592
     10mins
         */
        let startPoint = GPXWaypoint(latitude: 49.28515904004322, longitude: -123.11430818213351)
        let endPoint = GPXWaypoint(latitude: 49.282502663855276, longitude: -123.09960479215592)
        
        root.add(waypoints: [startPoint, endPoint])
        
        print(root.gpx())
        do {
            let url = getDocumentsDirectory()//.appendingPathComponent("Location.gpx")
//            let url = Bundle.main.url(forResource: "Location", withExtension: "gpx")
            try root.outputToFile(saveAt: url, fileName: "Location.gpx")
        } catch {
            print("Create file failed")
        }
    }
    
    func changeToRouteHk() {
        let root = GPXRoot()
        /*
         49.28515904004322, -123.11430818213351
         49.282502663855276, -123.09960479215592
     10mins
         */
        let startPoint = GPXWaypoint(latitude: 49.28515904004322, longitude: -123.11430818213351)
        let endPoint = GPXWaypoint(latitude: 49.282502663855276, longitude: -123.09960479215592)
        
        root.add(waypoints: [startPoint, endPoint])
        
        print(root.gpx())
        do {
            var url = Bundle.main.url(forResource: "Location", withExtension: "gpx")!
            url = Bundle.main.resourceURL!
//            Bundle.main.ur
            try root.outputToFile(saveAt: url, fileName: "Location.gpx")
        } catch {
            print("Create file failed")
        }
    }
    
    func getDocumentsDirectory() -> URL {
        // find all possible documents directories for this user
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)

        // just send back the first one, which ought to be the only one
        return paths[0]
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
