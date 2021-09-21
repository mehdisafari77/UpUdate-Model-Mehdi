//
//  PasswordTextField.swift
//  UpUdate Model
//
//  Created by Mehdi MMS on 10/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import Foundation
import SwiftUI

struct PasswordTextField: View {
    
    @Binding var password: String
    
    var body: some View {
        HStack {
            Image(systemName: "lock.fill").foregroundColor(.gray)
            SecureField("Password", text: $password)
        }.modifier(TextFieldModifier())
    }
}
