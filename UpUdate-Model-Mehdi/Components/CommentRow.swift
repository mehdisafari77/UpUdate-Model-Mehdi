//
//  CommentRow.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 03/06/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct CommentRow: View {
    var body: some View {
        HStack {
            Image("photo1").resizable().clipShape(Circle()).frame(width: 35, height: 35).padding(.trailing, 8).padding(.leading, 8)
            VStack(alignment: .leading) {
                Text("David").font(.subheadline).bold()
                    Text("Comment").font(.caption)
                }
                Spacer()
                Text("1 day ago").font(.caption).foregroundColor(.gray)
        }.padding(.trailing, 16).padding(.leading, 15)
    }
}

struct CommentRow_Previews: PreviewProvider {
    static var previews: some View {
        CommentRow()
    }
}
