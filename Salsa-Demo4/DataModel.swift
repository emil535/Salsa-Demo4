//
//  DataModel.swift
//  Salsa-Demo4
//
//  Created by Emil Safier on 7/3/19.
//  Copyright © 2019 Emil Safier. All rights reserved.
//

import Foundation

class Artifact: NSObject {
    var imageName: String
    var imageTitle: String
    var tag: String
    init(
        imageName: String,
        imageTitle: String,
        tag: String
        )
    {
        self.imageName = imageName
        self.imageTitle = imageTitle
        self.tag = tag
    }
    
}

var artifacts = [
    Artifact(imageName: "IMG_0595", imageTitle: "Donna", tag: "personal"),
    Artifact(imageName: "IMG_0597", imageTitle: "Contact at:  @EmilSafier", tag: "personal"),
    Artifact(imageName: "IMG_0598", imageTitle: "Gas Station, Beverly Hills", tag: "interesting"),
    Artifact(imageName: "IMG_0624", imageTitle: "Slide Deck", tag: "interesting"),
    Artifact(imageName: "IMG_0627", imageTitle: "Lecture Hall", tag: "interesting"),
    Artifact(imageName: "IMG_0628", imageTitle: "3rd Street View", tag: "dine"),
    Artifact(imageName: "arc-de-triomphe", imageTitle: "Arc de Triomphe", tag: "paris"),
    Artifact(imageName: "IMG_0639", imageTitle: "Louvre Museum", tag: "paris"),
    Artifact(imageName: "IMG_9315", imageTitle: "Notre Dame", tag: "paris"),
    Artifact(imageName: "IMG_9316", imageTitle: "Eiffle Tower", tag: "paris"),
    Artifact(imageName: "IMG_9317", imageTitle: "Palace of Versaille", tag: "paris"),
    Artifact(imageName: "IMG_0603", imageTitle: "Chinese Cult", tag: "Santa Monica"),
    Artifact(imageName: "IMG_0604", imageTitle: "Chess on the Beach", tag: "Santa Monica"),
    Artifact(imageName: "IMG_0605", imageTitle: "Beach Day", tag: "Santa Monica"),
    Artifact(imageName: "IMG_0607 2", imageTitle: "Red head", tag: "Santa Monica")
]



