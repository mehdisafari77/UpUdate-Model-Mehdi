//
//  MessagesView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 05/07/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct MessagesView: View {
    var body: some View {
            NavigationView {
               List {
               ForEach(0..<15) { _ in
                   HStack {
                       Image("photo1").resizable().clipShape(Circle()).frame(width: 50, height: 50).padding(.trailing, 8).padding(.leading, 8)
                   VStack(alignment: .leading, spacing: 5) {
                       Text("David").font(.headline).bold()
                    Text("Shared a new photo Shared a new photo Shared a new photo Shared a new photo").font(.subheadline).lineLimit(2)
                           }
                           Spacer()
                    VStack(spacing: 5) {
                        Text("15:00").bold()
                        
                        Text("2").padding(8).background(Color.blue).foregroundColor(Color.white).clipShape(Circle())
                        
                    }

                       }.padding(10)
                   }
               }.navigationBarTitle(Text("Messages"), displayMode: .inline)
           }
    }
}

struct MessagesView_Previews: PreviewProvider {
    static var previews: some View {
        MessagesView()
    }
}
