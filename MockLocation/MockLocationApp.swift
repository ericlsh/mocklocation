//
//  MockLocationApp.swift
//  MockLocation
//
//  Created by Eric Leung on 2023-10-16.
//

import SwiftUI

@main
struct MockLocationApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

/*
 
 <?xml version="1.0"?>
 <gpx version="1.1" creator="Xcode">
 <!-- vancouver downtown path
     49.28515904004322, -123.11430818213351
     49.282502663855276, -123.09960479215592
 10mins

 <wpt lat="49.28515904004322" lon="-123.11430818213351">
     <time>2014-09-24T14:00:37Z</time>
 </wpt>

 <wpt lat="49.282502663855276" lon="-123.09960479215592">
     <time>2014-09-24T14:10:37Z</time>
 </wpt>
 -->

 <!-- mk to tst path
 22.320160015014263, 114.1693166091623
 22.294831885725465, 114.1734621423374
 34mins
 -->
     <wpt lat="22.320160015014263" lon="114.1693166091623">
         <time>2014-09-24T14:00:37Z</time>
     </wpt>
     
     <wpt lat="22.294831885725465" lon="114.1734621423374">
         <time>2014-09-24T14:25:37Z</time>
     </wpt>
 </gpx>

 */
