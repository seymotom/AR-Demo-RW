//
//  WanderPost.swift
//  Wandr
//
//  Created by C4Q on 2/28/17.
//  Copyright © 2017 C4Q. All rights reserved.
//

import Foundation
import CloudKit
import CoreLocation

enum PostContentType: NSString {
  case audio, text, video
}

enum PrivacyLevel: NSString {
  case message, friends, everyone
}


class WanderPost: ARAnnotation {
//    let location: CLLocation
    let content: AnyObject
    let contentType: PostContentType
    let privacyLevel: PrivacyLevel
    let reactions: [Reaction]
    //Confirm that time is coming in as an (NS)Date
    let time: Date
    
    init (location: CLLocation, content: AnyObject, contentType: PostContentType, privacyLevel: PrivacyLevel, reactions: [Reaction], time: Date) {
        self.content = content
        self.contentType = contentType
        self.privacyLevel = privacyLevel
        self.reactions = reactions
        self.time = time
      super.init()
      self.location = location
    }
}
