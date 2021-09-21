//
//  UsersView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 05/07/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct UsersView: View {
    
    @State var searchText: String = ""
    
    func searchTextDidChange() {
        print("searchTextDidChange")
        print(searchText)
        // Find Users
    }
    
    var body: some View {
            VStack {
                SearchBar(text: $searchText, onSearchButtonChanged: searchTextDidChange)
                  List {
                  ForEach(0..<15) { _ in
                      HStack {
                          Image("photo1").resizable().clipShape(Circle()).frame(width: 50, height: 50).padding(.trailing, 10).padding(.leading, 8)
                      VStack(alignment: .leading, spacing: 5) {
                          Text("David").font(.headline).bold()
                          Text("IOS Developer").font(.subheadline)
                            }
                    }.padding(10)
                }
            }
        }.navigationBarTitle(Text("Search"), displayMode: .inline)
    }
}
struct UsersView_Previews: PreviewProvider {
    static var previews: some View {
        UsersView()
    }
}
