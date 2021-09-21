//
//  ProfileHeaderView.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 22/06/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
               HStack {
            Image("photo").resizable().clipShape(Circle()).scaledToFill().frame(width: 80, height: 80).padding(.leading, 20)
            Spacer()
            VStack {
                Text("50").font(.headline)
                Text("Posts").font(.subheadline)
            }.padding()
            VStack {
                Text("100").font(.headline)
                Text("Followers").font(.subheadline)
            }.padding()
            VStack {
                Text("200").font(.headline)
                Text("Following").font(.subheadline)
            }.padding()
            Spacer()
        }
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView()
    }
}
