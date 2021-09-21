//
//  EmailTextField.swift
//  UpUdate Model
//
//  Created by Mehdi MMS on 10/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import Foundation
import SwiftUI

struct EmailTextField: View {
    
    @Binding var email: String
    
    var body: some View {
        HStack {
            Image(systemName: "envelope.fill").foregroundColor(.gray)
            TextField(TEXT_EMAIL, text: $email)
        }.modifier(TextFieldModifier())
    }
}

