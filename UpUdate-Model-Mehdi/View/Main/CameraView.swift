//
//  CameraView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 05/06/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct CameraView: View {
    var body: some View {
        NavigationView {
        VStack {
            HStack(alignment: .top) {
                      Image("photo").resizable().scaledToFill().frame(width: 60, height: 60).clipped()
                      TextField("Write a caption...", text: .constant("")).padding(.top, 5)
                }.padding()
                Spacer()
        }.navigationBarTitle(Text("Camera"), displayMode:       .inline).navigationBarItems(trailing: Button(action: {}) {
            Image(systemName: "arrow.turn.up.right").imageScale(Image.Scale.large)
            }).foregroundColor(.black)
        }
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        CameraView()
    }
}
