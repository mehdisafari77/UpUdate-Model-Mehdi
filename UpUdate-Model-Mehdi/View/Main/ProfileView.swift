//
//  ProfileView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 22/06/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct ProfileView: View {
     var photoArray = [Photo(photo: "photo"), Photo(photo: "photo1"), Photo(photo: "photo2"), Photo(photo: "photo3"), Photo(photo: "photo4"), Photo(photo: "photo5"), Photo(photo: "photo6"), Photo(photo: "photo2"), Photo(photo: "photo7"), Photo(photo: "photo8"), Photo(photo: "photo9")]
        
    @State var selection = 0
    var displayState = ["square.grid.2x2.fill", "list.dash"]
    var body: some View {
        let splitted = photoArray.splited(into: 3)
        return
            NavigationView {
            ScrollView {
            VStack(alignment: .leading, spacing: 15) {
                      ProfileHeaderView()
                      Button(action: {}) {
                            HStack {
                                Spacer()
                                Text("Edit Profile").fontWeight(.bold).foregroundColor(Color.white)
                              Spacer()
                          }.frame(height: 30).background(Color.black)
                      }.cornerRadius(5).padding(.leading, 20).padding(.trailing, 20)
                      
                      VStack(alignment: .leading, spacing: 4) {
                          Text("Lisa").bold()
                          Text("IOS Developer")
                      }.padding(.leading, 20)
                      
                      Picker(selection: $selection, label: Text("Grid or Table")) {
                           ForEach(0..<displayState.count) { index in
                               Image(systemName: self.displayState[index]).tag(index)
                       }
                      }.pickerStyle(SegmentedPickerStyle()).padding(.leading, 20).padding(.trailing, 20)
                VStack(alignment: .leading, spacing: 1) {
                    // Rows
                        ForEach(0..<splitted.count) { index in
                        HStack(spacing: 1) {
                        // Columns
                            ForEach(splitted[index]) { photo_element in
                                                                         
                            Image(photo_element.photo).resizable().scaledToFill().frame(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.width / 3).clipped()
                                }
                            }
                        }
                    }
            }.padding(.top, 20)
                }.navigationBarTitle(Text("Profile"), displayMode: .inline).navigationBarItems(leading:
                Button(action: {}) {
                    NavigationLink(destination: UsersView()) {
                        Image(systemName: "person.fill").imageScale(Image.Scale.large).foregroundColor(.black)
                }
            })
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}


