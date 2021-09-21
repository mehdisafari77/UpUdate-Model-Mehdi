//
//  StorageService.swift
//  UpUdate-Model-Mehdi
//
//  Created by Mehdi MMS on 20/05/2020.
//  Copyright © 2020 Mehdi Safari. All rights reserved.
//

import Foundation
import Firebase
import FirebaseStorage

class StorageService {
    static func saveAvatar(userId: String, username: String, email: String, imageData: Data, metadata: StorageMetadata, storageAvatarRef: StorageReference, onSuccess: @escaping(_ user: User) -> Void, onError: @escaping(_ errorMessage: String) -> Void) {
        storageAvatarRef.putData(imageData, metadata: metadata) { (StorageMetadata, error) in
                    if error != nil {
                         onError(error!.localizedDescription)
                        return
                    }
                    
                    storageAvatarRef.downloadURL {(url, error) in
                        if let metaImageUrl = url?.absoluteString {
                            if let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest() {
                                changeRequest.photoURL = url
                                changeRequest.displayName = username
                                changeRequest.commitChanges { (error) in
                                    if error != nil {
                                         onError(error!.localizedDescription)
                                    return
                                }
                            }
                        }
                            
                            let firestoreUserId = Ref.FIRESTORE_DOCUMENT_USERID(userId: userId)
//                          let userInfor = ["username": self.username, "email": self.email, "profileImageUrl": metaImageUrl]
                            let user = User.init(uid: userId, email: email, profileImageUrl: metaImageUrl, username: username, bio: "", keywords: username.splitStringToArray())
                            guard let dict = try? user.toDictiornary() else {return}
                            
                           // guard let decoderUser = try? User.init(fromDictionary: dict) else {return}
                            //print(decoderUser.username)
                            
                            firestoreUserId.setData(dict) { (error) in
                                if error != nil {
                                     onError(error!.localizedDescription)
                                    return
                                }
                                onSuccess(user)
                            }
                        }
                    }
        
        }
    }
}
