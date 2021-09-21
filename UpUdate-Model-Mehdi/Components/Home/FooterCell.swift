//
//  FooterCell.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 02/06/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct FooterCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Image(systemName: "heart")
                NavigationLink(destination: CommentView()) {
                    Image(systemName: "bubble.left").renderingMode(.original)
                }
                
                Image(systemName: "paperplane")
                Spacer()
                Image(systemName: "bookmark")
            }
            .padding(.trailing, 8).padding(.leading, 8)
            
            HStack {
                Text("David").font(.subheadline).bold()
                Text("Black and white").font(.subheadline)
            }
            .padding(.leading, 8)
            NavigationLink(destination: CommentView()) {
                Text("View all comments").font(.caption).foregroundColor(.gray).padding(.leading, 15).accentColor(.red)
            }
                        
            HStack {
                Image("photo1").resizable().clipShape(Circle()).frame(width: 25, height: 25)
                Text("Add a comment...").font(.caption).foregroundColor(.gray)
                Spacer()
                Text("♥️")
                Text("👏🏼")
                Image(systemName: "plus.circle").foregroundColor(.gray)
            }
             Text("1 day ago").font(.caption).foregroundColor(.gray)
        }
    }
}

struct FooterCell_Previews: PreviewProvider {
    static var previews: some View {
        FooterCell()
    }
}

