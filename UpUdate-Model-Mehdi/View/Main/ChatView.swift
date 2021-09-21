//
//  ChatView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 05/07/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct ChatView: View {
    var body: some View {
        NavigationView {
            VStack {
                ScrollView {
                    ForEach(0..<10) { _ in
                        VStack(alignment: .leading) {
                                ChatRow(isCurrentUser: false)
                                ChatRow(isCurrentUser: true)
                                ChatRow(isCurrentUser: false, isPhoto: true)
                        }.padding(.top, 20)
                    }
                }
                HStack(spacing: 0) {
                    ZStack {
                    RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 1).padding()
                        HStack(spacing: 10) {
                            Button(action: {}) {
                                Image(systemName: "camera.fill").padding(10).foregroundColor(.white).background(Color.green).clipShape(Circle())
                            }.padding(.leading, 20)
                            
                            TextField("Message...", text: .constant("")).padding(.top, 30).padding(.bottom, 30)
                        Button(action: {}) {
                            Image(systemName: "photo").imageScale(.large).foregroundColor(.black)
                            }
                        Button(action: {}) {
                            Image(systemName: "mic").imageScale(.large).foregroundColor(.black)
                            }
                        Button(action: {}) {
                            Image(systemName: "paperplane").imageScale(.large).foregroundColor(.black).padding(.trailing, 30)
                            }
                        }
                    }.frame(height: 50)
                }
            }.navigationBarTitle(Text("Chat"), displayMode: .inline)
        }
    }
}

struct ChatView_Previews: PreviewProvider {
    static var previews: some View {
        ChatView()
    }
}

struct ChatRow: View {
    var isCurrentUser = false
    var isPhoto = false
    var body: some View {
        Group {
            if !isCurrentUser && !isPhoto {
                   HStack(alignment: .top) {
                       Image("photo").resizable().scaledToFill().frame(width: 30, height: 30).clipShape(Circle())
                    Text("Hi guys ").padding(10).foregroundColor(.white).background(Color.purple).cornerRadius(10).font(.callout)
                   }.padding(.leading, 15).padding(.trailing, 50)
               } else if !isPhoto{
                   HStack(alignment: .top) {
                    Spacer(minLength: 50)
                    Text("Hi guys ").padding(10).foregroundColor(.white).background(Color.green).cornerRadius(10).font(.callout)
                   }.padding(.trailing, 15)
               }
            
            if !isCurrentUser && isPhoto {
                HStack(alignment: .top) {
                    Image("photo").resizable().scaledToFill().frame(width: 30, height: 30).clipShape(Circle())
                    Image("photo1").scaledToFill().frame(width: 200, height: 200).cornerRadius(10)
                    Spacer()
                }.padding(.leading, 15)
                
                
            } else if isCurrentUser && isPhoto{
                HStack {
                    Spacer()
                    Image("photo6").scaledToFill().frame(width: 200, height: 200).cornerRadius(10)
                }.padding(.trailing, 15)
                
            }
        }
    }
}