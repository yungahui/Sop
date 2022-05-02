//
//  ContentView.swift
//  Sop
//
//  Created by 윤가희 on 2022/04/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            MainView()
                .tabItem{
                    Image(systemName: "house")
                    Text("Feed")
                }
            DiscoveryView()
                .tabItem{
                    Image(systemName: "photo.on.rectangle")
                    Text("Gallery")
                }
            HeartView()
                .tabItem{
                    Image(systemName: "heart")
                    Text("Love")
                }
        }
        .accentColor(.black)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
