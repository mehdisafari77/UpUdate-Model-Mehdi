//
//  SignupButton.swift
//  UpUdate Model
//
//  Created by Mehdi MMS on 10/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI



struct SignupButton: View {
    var action: () -> Void
    var label: String
    var body: some View {
        Button(action: action) {
            HStack {
                Spacer()
                Text(label).fontWeight(.bold).foregroundColor(Color.white)
                Spacer()
            }
            
        }.modifier(SigninButtonModifier())
    }
}

struct SignupButton_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
