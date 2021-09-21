//
//  SignInViewModel.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 23/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import Foundation
import FirebaseAuth
import Firebase
import FirebaseStorage
import SwiftUI

class SigninViewModel: ObservableObject {
    
    var email: String = ""
    var password: String = ""
    
    var errorString = ""
    @Published var showAlert: Bool = false
    
    
    func signin(email: String, password: String, completed: @escaping(_ user: User) -> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        if !email.isEmpty && !password.isEmpty {
               AuthService.signinUser(email: email, password: password, onSuccess: completed, onError: onError)
        } else {
            showAlert = true
            errorString = "Please fill in all fields"
        }
    }
}
