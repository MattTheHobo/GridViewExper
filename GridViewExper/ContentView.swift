//
//  ContentView.swift
//  GridViewExper
//
//  Created by Mattia Robuschi Caprara on 18/06/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            VertGridView()
                .tabItem { Label("VGrid", systemImage: "arrow.down.to.line.alt") }
            
            HorizGridView()
                .tabItem { Label("HGrid", systemImage: "arrow.right.to.line") }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
