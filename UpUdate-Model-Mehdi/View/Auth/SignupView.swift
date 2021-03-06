//
//  SignupView.swift
//  UpUdate Model
//
//  Created by Mehdi MMS on 10/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI
import FirebaseAuth
import Firebase
import FirebaseStorage

struct SignupView: View {
   
    
    @ObservedObject var signupViewModel = SignupViewModel()

    func signUp() {
        signupViewModel.signup(username: signupViewModel.username, email: signupViewModel.email, password: signupViewModel.password, imageData: signupViewModel.imageData, completed: { (user) in
            print(user.email)
            self.clean()
            // Switch to the Main App
        }) { (errorMessage) in
            print("Error: \(errorMessage)")
            self.signupViewModel.showAlert = true
            self.signupViewModel.errorString = errorMessage
            self.clean()
        }
    }
    
    func clean() {
        self.signupViewModel.username = ""
        self.signupViewModel.password = ""
        self.signupViewModel.email = ""
    }
    
    var body: some View {
        VStack {
            Spacer()
            signupViewModel.image.resizable().aspectRatio(contentMode: .fill).frame(width: 80, height: 80).clipShape(Circle()).padding(.bottom, 80)
                .onTapGesture {
                    print("Tapped")
                    self.signupViewModel.showImagePicker = true
            }
            UsernameTextField(username: $signupViewModel.username)
            EmailTextField(email: $signupViewModel.email)
            VStack(alignment: .leading) {
                PasswordTextField(password: $signupViewModel.password)
                Text(TEXT_SIGNUP_PASSWORD_REQUIRED).font(.footnote).foregroundColor(.gray).padding([.leading])
            }
            SignupButton(action: signUp, label: TEXT_SIGN_UP).alert(isPresented: $signupViewModel.showAlert) {
                Alert(title: Text("Error"), message: Text(self.signupViewModel.errorString), dismissButton: .default(Text("OK")))
            }
            Divider()
            Text(TEXT_SIGNUP_NOTE).font(.footnote).foregroundColor(.gray).padding().lineLimit(nil)
            Spacer()
            
        }.sheet(isPresented: $signupViewModel.showImagePicker) {
            //ImagePickerController()
            ImagePicker(showImagePicker:
                self.$signupViewModel.showImagePicker, pickedImage:
                self.$signupViewModel.image, imageData:
                self.$signupViewModel.imageData)
        }
        .navigationBarTitle("Register", displayMode: .inline)
    }
}

struct SignupView_Previews: PreviewProvider {
    static var previews: some View {
        SignupView()
        }
    }

