//
//  ViewController.swift
//  AnimationApp(HW2.9)
//
//  Created by Михаил Малышев on 24/03/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//

import Spring

class MainViewController: UIViewController {
    
    @IBOutlet weak var springView: SpringView!
    @IBOutlet weak var animationTypeLabel: UILabel!
    @IBOutlet weak var curveTypeLabel: UILabel!
    @IBOutlet weak var durationValueLabel: UILabel!
    @IBOutlet weak var forceValueLabel: UILabel!
    @IBOutlet weak var runAnimationButton: UIButton!
    
    private let animations = Animation.getAnimation()
    private var numberOfAnimation = 0
    
    @IBAction func runAnimation(_ sender: SpringButton) {
        
        let animation = animations[numberOfAnimation]
        
        springView.animation = animation.animation
        springView.curve = animation.animationCurve
        springView.duration = animation.duration
        
        animationTypeLabel.text = "Type: \(animation.animation)"
        curveTypeLabel.text = "Curve: \(animation.animationCurve)"
        durationValueLabel.text = "Duration: \(round(value: animation.duration))"
        forceValueLabel.text = "Force: \(round(value: animation.force))"
        
        springView.animate()
        
        if numberOfAnimation + 1 > animations.count - 1 {
            runAnimationButton.setTitle("run \(animations.first?.animation ?? "error")", for: .normal)
            numberOfAnimation = 0
        } else {
            runAnimationButton.setTitle("run \(animations[numberOfAnimation + 1].animation)", for: .normal)
            numberOfAnimation += 1
        }
    }
    
    private func round(value: CGFloat) -> String {
        return String(format: "%.2f", value)
    }
}

