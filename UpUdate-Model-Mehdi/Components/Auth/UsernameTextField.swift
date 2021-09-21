//
//  UsernameTextField.swift
//  UpUdate Model
//
//  Created by Mehdi MMS on 10/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct UsernameTextField: View {
     @Binding var username: String
      
      var body: some View {
          HStack {
              Image(systemName: "person.fill").foregroundColor(.gray)
              TextField(TEXT_USERNAME, text: $username)
          }.modifier(TextFieldModifier())
      }
}

