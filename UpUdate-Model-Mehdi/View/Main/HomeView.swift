//
//  HomeView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 30/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//
//.padding(.trailing, -10)
import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            ScrollView {
                ScrollViewStory().padding(.trailing, -10)
               
                ForEach(1..<20) { _ in
                    HeaderCell()
                    FooterCell()
                }
            }
        .navigationBarTitle(Text("Instagram"), displayMode: .inline)
                
        .navigationBarItems(leading: Image("logo").resizable().frame(width: 50, height: 35))
        }
    }
}
struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}




