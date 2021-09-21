//
//  Signin+HeaderView.swift
//  UpUdate Model
//
//  Created by Mehdi MMS on 10/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import Foundation
import SwiftUI

struct HeaderView: View {
    var body: some View {
        Group {
            Image("logo").resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80)
            Text("Instagram").font(Font.title).padding(.bottom)
            Text("The Everything Of Your Everyday")
                .font(Font.subheadline)
                .foregroundColor(.gray)
                .multilineTextAlignment(TextAlignment.center)
            
        }
    }
}

