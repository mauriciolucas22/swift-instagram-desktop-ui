//
//  PostView.swift
//  Instagram Desktop
//
//  Created by Mac on 01/01/21.
//

import SwiftUI

struct PostView: View {
    var image: String
    
    var body: some View {
        GeometryReader {reader in
            VStack{
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .frame(width: reader.frame(in: .global).width, height: 250)
                    .cornerRadius(10)
                
                HStack{
                    // Use your own post model data
                    Image("avatar")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 30, height: 30)
                        .clipShape(Circle())
                        .padding(5)
                        .background(Circle().stroke(gradient, lineWidth: 2))
                        .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    
                    Text("Mauricio")
                        .foregroundColor(.white)
                    
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    
                    Button(action: {}, label: {
                        Label(
                            title: { Text("1.2k") },
                            icon: {Image(systemName: "suit.heart")}
                        )
                    })
                    .buttonStyle(PlainButtonStyle())
                    
                    Button(action: {}, label: {
                        Label(
                            title: { Text("500") },
                            icon: {Image(systemName: "message")}
                        )
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .padding(.horizontal)
            }
        }
        .frame(height: 300)
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
