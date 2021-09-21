//
//  CommentView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 03/06/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct CommentView: View {
    var body: some View {
        VStack {
        ScrollView {
                ForEach(1..<10) { _ in
                    CommentRow().padding(.bottom, 10)
                    }
                }
            CommentInput()
        }.padding(.top, 15)
    }
}

struct CommentView_Previews: PreviewProvider {
    static var previews: some View {
        CommentView()
    }
}
