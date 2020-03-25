//
//  Models.swift
//  AnimationApp(HW2.9)
//
//  Created by Михаил Малышев on 24/03/2020.
//  Copyright © 2020 Mikhail Malyshev. All rights reserved.
//

import Spring

struct Animation {
    let animation: String
    let animationCurve: String
    let duration: CGFloat
    let force: CGFloat
    
    static func getAnimation() -> [Animation] {
        var animations: [Animation] = []
        animations.append(Animation.init(animation: Spring.AnimationPreset.Morph.rawValue,
                                         animationCurve: Spring.AnimationCurve.EaseIn.rawValue,
                                         duration: CGFloat.random(in: 1...5),
                                         force: CGFloat.random(in: 1...3)))
        animations.append(Animation.init(animation: Spring.AnimationPreset.Squeeze.rawValue,
                                         animationCurve: Spring.AnimationCurve.EaseInBack.rawValue,
                                         duration: CGFloat.random(in: 1...5),
                                         force: CGFloat.random(in: 1...3)))
        animations.append(Animation.init(animation: Spring.AnimationPreset.Wobble.rawValue,
                                         animationCurve: Spring.AnimationCurve.EaseInOutQuad.rawValue,
                                         duration: CGFloat.random(in: 1...5),
                                         force: CGFloat.random(in: 1...3)))
        animations.append(Animation.init(animation: Spring.AnimationPreset.Swing.rawValue,
                                         animationCurve: Spring.AnimationCurve.EaseOutSine.rawValue,
                                         duration: CGFloat.random(in: 1...5),
                                         force: CGFloat.random(in: 1...3)))
        return animations
    }
}
