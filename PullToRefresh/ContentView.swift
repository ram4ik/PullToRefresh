//
//  ContentView.swift
//  PullToRefresh
//
//  Created by Ramill Ibragimov on 08.06.2021.
//

import SwiftUI

struct ContentView: View {
    @State var refreshed = false
    
    var body: some View {
        NavigationView {
            List {
                Text(refreshed ? "Refreshed" : "Not refreshed")
                ForEach(0..<10) { i in
                    Text("\(i) index")
                }
            }
            .navigationTitle("Pull to refresh")
            // iOS 15
//            .refreshable {
//                refreshed = true
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
