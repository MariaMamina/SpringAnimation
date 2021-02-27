//
//  Animation.swift
//  SpringAnimation
//
//  Created by Maria Mamina on 26.02.2021.
//

import Foundation

struct Animation {
    let animation: String
    let curve: String
    let delay: Float
    let force: Float
    let duration: Float
    let rotate: Float
}

extension Animation {
    static func getAnimation() -> Animation {
        let force = Float.random(in: 1...3)
        let delay = Float.random(in: 1...2)
        let duration = Float.random(in: 1...3)
        let rotate = Float.random(in: -2...2)
        let animation = DataManager.shared.animations.randomElement() ?? "shake"
        let curve = DataManager.shared.curves.randomElement() ?? "spring"
        
        let nextAnimation = Animation(animation: animation,
                                      curve: curve,
                                      delay: delay,
                                      force: force,
                                      duration: duration,
                                      rotate: rotate)
        return nextAnimation
    }
}
