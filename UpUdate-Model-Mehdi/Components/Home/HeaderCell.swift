//
//  HeaderCell.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 02/06/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct HeaderCell: View {
    var body: some View {
        VStack {
            HStack {
                    Image("photo1").resizable().clipShape(Circle()).frame(width: 35, height: 35).padding(.trailing, 8).padding(.leading, 8)
                  VStack(alignment: .leading) {
                      Text("David").font(.subheadline).bold()
                      Text("location").font(.caption)
                  }
                  Spacer()
                Image(systemName: "ellipsis")
              }.padding(.trailing, 16).padding(.leading, 15)
              
                    Image("photo2").resizable().scaledToFill().frame(width: UIScreen.main.bounds.size.width, height: 300).clipped().padding(.leading, -1)
        }
    }
}

struct HeaderCell_Previews: PreviewProvider {
    static var previews: some View {
        HeaderCell()
    }
}
