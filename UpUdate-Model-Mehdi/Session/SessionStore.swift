//
//  SessionStore.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 23/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import Foundation
import Combine
import FirebaseAuth

class SessionStore: ObservableObject {
    
    @Published var isLoggedIn = false
    @Published var userSession: User?

    var handle: AuthStateDidChangeListenerHandle?
    
    func listenAuthenticationState() {
        handle = Auth.auth().addStateDidChangeListener({ (auth, user) in
            if let user = user {
                print(user.email ?? user.displayName)
                let firestoreUserId = Ref.FIRESTORE_DOCUMENT_USERID(userId: user.uid)
                          firestoreUserId.getDocument { (document, error) in
                              if let dict = document?.data() {
                                  guard let decoderUser = try? User.init(fromDictionary: dict) else {return}
                                self.userSession = decoderUser
                               
                              }
                          }
                 self.isLoggedIn = true
            } else {
                print("isLoggenIn is false")
                self.isLoggedIn = false
                self.userSession = nil
            }
        })
    }
    
    func logout() {
        do {
            try Auth.auth().signOut()
            
        } catch {
            
        }
    }
    
    // stop listening for auth changes
    func unbind() {
        if let handle = handle {
            Auth.auth().removeStateDidChangeListener(handle)
        }
    }
    
    deinit {
        unbind()
    }
}
