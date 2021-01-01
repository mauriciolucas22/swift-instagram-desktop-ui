//
//  Home.swift
//  Instagram Desktop
//
//  Created by Mac on 01/01/21.
//

import SwiftUI

//Gradient
let gradient = LinearGradient(gradient: .init(colors: [Color("gradient1"), Color("gradient2")]), startPoint: /*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.trailing/*@END_MENU_TOKEN@*/)

struct Home: View {
    
    var screen = NSScreen.main!.visibleFrame
    
    var body: some View {
        HStack(spacing: 0) {
            
            ViewSide()
            MainView()
            
        }
        .ignoresSafeArea(.all, edges: .all)
        .frame(width: screen.width / 1.4, height: screen.height - 60)
        
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
