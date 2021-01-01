//
//  MainView.swift
//  Instagram Desktop
//
//  Created by Mac on 01/01/21.
//

import SwiftUI

struct MainView: View {
    
    @State var search = ""
    @State var currentFeed = "Latest"
    
    var body: some View {
        ScrollView {
            VStack() {
                HStack {
                    TextField("Search", text: $search)
                        .textFieldStyle(PlainTextFieldStyle())
                        .padding(.vertical, 10)
                        .padding(.horizontal)
                        .background(Color.white.opacity(0.25))
                        .cornerRadius(10)
                    
                    Button(action: {}, label: {
                        Label(
                            title: {Text("Add Photos")},
                            icon: {Image(systemName: "plus.square")}
                        )
                        .foregroundColor(.white)
                        .padding(10)
                        .background(gradient)
                        .cornerRadius(10)
                    })
                    .buttonStyle(PlainButtonStyle())
                }
                .padding()
                .padding(.top, 20)
                
                Text("Stories")
                    .font(.title2)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                
                // Stories...
                ScrollView(.horizontal, showsIndicators: /*@START_MENU_TOKEN@*/true/*@END_MENU_TOKEN@*/, content: {
                    HStack(spacing: 15) {
                        Button(action: {}, label: {
                            Image(systemName: "plus")
                                .font(.title2)
                                .foregroundColor(.white)
                                .frame(width: 55, height: 55)
                                .background(Color.orange.opacity(0.15))
                                .clipShape(Circle())
                        })
                        .buttonStyle(PlainButtonStyle())
                        
                        ForEach(1...6, id: \.self) {index in
                            Image("p\(index)")
                                .resizable()
                                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                                .frame(width: 55, height: 55)
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                                .padding(5)
                                .background(Circle().stroke(gradient, lineWidth: 2))
                                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                        }
                        
                    }.padding()
                })
                
                HStack(alignment: .top){
                    Text("Feed")
                        .font(.title2)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        
                    Spacer()
                    
                    ForEach(["Latest", "Popular"], id: \.self) {type in
                        Button(action: {
                            withAnimation{currentFeed = type}
                        }, label: {
                            VStack(spacing: 8) {
                                Text(type)
                                    .foregroundColor(currentFeed == type ? .white : .gray)
                                ZStack{
                                    Circle()
                                        .fill(Color.clear)
                                        .frame(width: 5, height: 5)
                                    
                                    if currentFeed == type {
                                        Circle()
                                            .fill(Color.white)
                                            .frame(width: 5, height: 5)
                                    }
                                }
                            }
                        })
                        .buttonStyle(PlainButtonStyle())
                    }
                }
                .padding(.horizontal)
            }
            .padding(.horizontal)
            .padding(.top, 8)
            
            // Posts...
            LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 15), count: 2), content: {

                ForEach(1...9, id: \.self){index in
                    PostView(image: "post\(index)")
                }
            }).padding()
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color("Main"))
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
