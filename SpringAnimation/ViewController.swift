//
//  ViewController.swift
//  SpringAnimation
//
//  Created by Maria Mamina on 25.02.2021.
//

import Spring

class ViewController: UIViewController {
    
    @IBOutlet var animationSpringView: SpringView!
    @IBOutlet var animationDescription: UILabel!
    
    private var nextAnimation = Animation.getAnimation()
    
    @IBAction func animationChanged(_ sender: UIButton) {
        setSpringViewAtributes()
        descriptionSet()
        animationSpringView.animate()

        nextAnimation = Animation.getAnimation()
        sender.setTitle("Run \(nextAnimation.animation)", for: .normal)
    }
    
    private func setSpringViewAtributes() {
        animationSpringView.animation = nextAnimation.animation
        animationSpringView.curve = nextAnimation.curve
        animationSpringView.force = CGFloat(nextAnimation.force)
        animationSpringView.delay = CGFloat(nextAnimation.delay)
        animationSpringView.duration = CGFloat(nextAnimation.duration)
        animationSpringView.rotate = CGFloat(nextAnimation.rotate)
        
    }
    
    private func descriptionSet() {
        animationDescription.text =
            "Preset \(animationSpringView.animation)\n" +
            "Curve \(animationSpringView.curve)\n" +
            String(format: "Duration %.2f\n", animationSpringView.duration) +
            String(format: "Delay %.2f\n ", animationSpringView.delay) +
            String(format: "Force %.2f\n", animationSpringView.force) +
            String(format: "Rotate %.2f\n", animationSpringView.rotate)
    }
}

