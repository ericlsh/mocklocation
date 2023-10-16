//
//  ContentView.swift
//  MockLocation
//
//  Created by Eric Leung on 2023-10-16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "figure.run")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Let run between mk and tst !")
            Spacer(minLength: 2)
            Text("After installation, the mock will work automatically. Just delete the app to cancel the mock.")
                .multilineTextAlignment(.center)
                
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
