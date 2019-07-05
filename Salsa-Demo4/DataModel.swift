//
//  DataModel.swift
//  Salsa-Demo4
//
//  Created by Emil Safier on 7/3/19.
//  Copyright © 2019 Emil Safier. All rights reserved.
//

import Foundation


/**
 class used to represent an Artifact with an image, a title and a tag.
 
 - imageName:  used to retrieve image from Assets
 - imageTitle: is displayed in NavBat title when selected
 - imageTag: used to select images to include in the CollectionView
 */
class Artifact: NSObject {
    var imageName: String
    var imageTitle: String
    var imageTag: String
    init(
        imageName: String,
        imageTitle: String,
        imageTag: String
        )
    {
        self.imageName = imageName
        self.imageTitle = imageTitle
        self.imageTag = imageTag
    }
    
}

var artifacts = [
    Artifact(imageName: "IMG_0595", imageTitle: "Donna", imageTag: "personal"),
    Artifact(imageName: "IMG_0597", imageTitle: "Contact at:  @EmilSafier", imageTag: "personal"),
    Artifact(imageName: "IMG_0598", imageTitle: "Gas Station, Beverly Hills", imageTag: "interesting"),
    Artifact(imageName: "IMG_0624", imageTitle: "Slide Deck", imageTag: "interesting"),
    Artifact(imageName: "IMG_0627", imageTitle: "Lecture Hall", imageTag: "interesting"),
    Artifact(imageName: "IMG_0628", imageTitle: "3rd Street View", imageTag: "dine"),
    Artifact(imageName: "arc-de-triomphe", imageTitle: "Arc de Triomphe", imageTag: "paris"),
    Artifact(imageName: "IMG_0639", imageTitle: "Louvre Museum", imageTag: "paris"),
    Artifact(imageName: "IMG_9315", imageTitle: "Notre Dame", imageTag: "paris"),
    Artifact(imageName: "IMG_9316", imageTitle: "Eiffle Tower", imageTag: "paris"),
    Artifact(imageName: "IMG_9317", imageTitle: "Palace of Versaille", imageTag: "paris"),
    Artifact(imageName: "IMG_0603", imageTitle: "Chinese Cult", imageTag: "Santa Monica"),
    Artifact(imageName: "IMG_0604", imageTitle: "Chess on the Beach", imageTag: "Santa Monica"),
    Artifact(imageName: "IMG_0605", imageTitle: "Beach Day", imageTag: "Santa Monica"),
    Artifact(imageName: "IMG_0607 2", imageTitle: "Red head", imageTag: "Santa Monica")
]



