//
//  Card.swift
//  GridViewExper
//
//  Created by Mattia Robuschi Caprara on 18/06/21.
//

import SwiftUI

struct Card: View {
    
    var text: String
    let skyBlue = Color(red: 0.4627, green: 0.8392, blue: 1.0)
    
    init(_ text: String){
        self.text = text
    }
    
    var body: some View {
        
        ZStack{
            Rectangle()
                .fill(LinearGradient(gradient: Gradient(colors: [.blue, skyBlue]), startPoint: .bottomLeading, endPoint: .topTrailing))
                .frame(width: 145, height: 160)
                .cornerRadius(35.0)
            
            Capsule()
                .fill(Color.black)
                .frame(width: 125, height: 45)
                .opacity(0.6)
                .offset(y: 50)
            
            Text(text)
                .foregroundColor(.white)
                .offset(y: 50)
        }
    }
}

struct Card_Previews: PreviewProvider {
    static var previews: some View {
        Card("Hello World!")
    }
}
