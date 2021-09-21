//
//  Constants.swift
//  UpUdate Model
//
//  Created by Mehdi MMS on 10/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import SwiftUI
import Firebase
import FirebaseStorage

let COLOR_LIGHT_GRAY = Color(red: 0, green: 0, blue: 0, opacity: 0.15)

//Sign in & Sign up pages
let TEXT_NEED_AN_ACCOUNT = "Dont't have an account?"
let TEXT_SIGN_UP = "Sign up"
let TEXT_SIGN_IN = "Sign in"
let TEXT_EMAIL = "Email"
let TEXT_USERNAME = "Username"
let TEXT_PASSWORD = "Password"
let TEXT_SIGNIN_HEADLINE = "Instagram"
let TEXT_SIGNIN_SUBHEADLINE = "Everything Of Your Everyday"
let TEXT_SIGNUP_NOTE = "An account will allow you to save and access photo information across devices. You can delete your account at any time and your information will not be shared."
let TEXT_SIGNUP_PASSWORD_REQUIRED = "At least 8 characters required"

let IMAGE_LOGO = "logo"
let IMAGE_USER_PLACEHOLDER = "user-placeholder"

class Ref {
    // Storage
    static var STORAGE_ROOT = Storage.storage().reference(forURL: "gs://upudate-model-mehdi.appspot.com")
    static var STORAGE_AVATAR = STORAGE_ROOT.child("avatar")
    static func STORAGE_AVATAR_USERID(userId: String) -> StorageReference {
        return STORAGE_AVATAR.child(userId)
    }
    
    //Firestore
    static var FIRESTORE_ROOT = Firestore.firestore()
    static var FIRESTORE_COLLECTION_USERES = FIRESTORE_ROOT.collection("users")
    static func FIRESTORE_DOCUMENT_USERID(userId: String) -> DocumentReference {
        return FIRESTORE_COLLECTION_USERES.document(userId)
    }
}

