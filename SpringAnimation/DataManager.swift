//
//  DataManager.swift
//  SpringAnimation
//
//  Created by Maria Mamina on 26.02.2021.
//

import Foundation

class DataManager {
 static let shared = DataManager()

    let animations = [
        "shake", "pop", "morph",
        "squeeze", "wobble", "swing",
        "flipX", "flipY", "fall",
        "squeezeLeft", "squeezeRight", "squeezeDown",
        "squeezeUp", "slideLeft", "slideRight",
        "slideDown", "slideUp", "fadeIn",
        "fadeOut", "fadeInLeft", "fadeInRight",
        "fadeInDown", "fadeInUp", "zoomIn",
        "zoomOut", "flash"
    ]

    let curves = [
        "spring", "linear", "easeIn",
        "easeOut","easeInOut"
    ]
    
    private init() {}


}

