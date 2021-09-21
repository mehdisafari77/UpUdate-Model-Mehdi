//
//  ContentView.swift
//  UpUdate Model
//
//  Created by Mehdi MMS on 10/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI

struct SigninView: View {
    
     @ObservedObject var signinViewModel = SigninViewModel()

      func signIn() {
        
        signinViewModel.signin(email: signinViewModel.email, password: signinViewModel.password, completed: { (user) in
            print("login: \(user.email)")
            self.clean()
        }) { (errorMessage) in
            print("Error: \(errorMessage)")
            self.signinViewModel.showAlert = true
            self.signinViewModel.errorString = errorMessage
            self.clean()
        }
    
      }
      
      func clean() {
          self.signinViewModel.password = ""
          self.signinViewModel.email = ""
      }

    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                HeaderView()
                Spacer()
                Divider()
                EmailTextField(email: $signinViewModel.email)
                PasswordTextField(password: $signinViewModel.password)
                SigninButton(action: signIn, label: TEXT_SIGN_IN).alert(isPresented: $signinViewModel.showAlert) {
                    Alert(title: Text("Error"), message: Text(self.signinViewModel.errorString), dismissButton: .default(Text("OK")))
                }
                Divider()
                NavigationLink(destination: SignupView()) {
                SignupText()
                }
                
            }
        }.accentColor(Color.black)
    }
}

struct SigninView_Previews: PreviewProvider {
    static var previews: some View {
        SigninView()
    }
}







