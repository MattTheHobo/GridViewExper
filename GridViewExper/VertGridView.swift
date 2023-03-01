//
//  VertGridView.swift
//  GridViewExper
//
//  Created by Mattia Robuschi Caprara on 18/06/21.
//

import SwiftUI

struct VertGridView: View {
        
    let data = Array(1...1000).map { "Items \($0)"}
    
    let layout = [
        GridItem(.adaptive(minimum: 180))
    ]
    
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVGrid(columns: layout, spacing: 20){
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

struct VertGridView_Previews: PreviewProvider {
    static var previews: some View {
        VertGridView()
    }
}
