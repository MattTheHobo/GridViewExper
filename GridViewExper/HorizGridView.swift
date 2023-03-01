//
//  HorizGridView.swift
//  GridViewExper
//
//  Created by Mattia Robuschi Caprara on 18/06/21.
//

import SwiftUI

struct HorizGridView: View {
    
    let data = Array(1...1000).map { "Items \($0)"}
    
    let layout = [
        GridItem(.flexible())
    ]
    
    var body: some View {
        NavigationView{
            ScrollView (.horizontal){
                LazyHGrid(rows: layout, spacing: 20){
                    ForEach(data, id: \.self){ item in
                        NavigationLink(destination: Text("Destination \(item)")){
                            Card(item)
                        }
                    }
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct HorizGridView_Previews: PreviewProvider {
    static var previews: some View {
        HorizGridView()
    }
}
