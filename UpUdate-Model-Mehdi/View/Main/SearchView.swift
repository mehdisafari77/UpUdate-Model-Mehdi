//
//  SearchView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 04/06/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct Photo: Identifiable {
    let id = UUID()
    var photo = ""
}

struct SearchView: View {
    var photoArray = [Photo(photo: "photo"), Photo(photo: "photo1"), Photo(photo: "photo2"), Photo(photo: "photo3"), Photo(photo: "photo4"), Photo(photo: "photo5"), Photo(photo: "photo6"), Photo(photo: "photo2"), Photo(photo: "photo7"), Photo(photo: "photo8"), Photo(photo: "photo9")]
    
@State var selection = 0
var displayState = ["square.grid.2x2.fill", "list.dash"]
var body: some View {
let splitted = photoArray.splited(into: 2)
return
    NavigationView {
    ScrollView {
        
        Picker(selection: $selection, label: Text("Grid or Table")) {
            ForEach(0..<displayState.count) { index in
                Image(systemName: self.displayState[index]).tag(index)
        }
        }.pickerStyle(SegmentedPickerStyle()).padding()
                           
        // Rows
            ForEach(0..<splitted.count) { index in
                HStack {
                    // Columns
                        ForEach(splitted[index]) { photo_element in
                                       
                            Image(photo_element.photo).resizable().scaledToFill().frame(width: UIScreen.main.bounds.width / 2, height: UIScreen.main.bounds.width / 2).clipped()
                        }
                    }
                }
            }.navigationBarTitle(Text("Explore"), displayMode: .inline)
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
