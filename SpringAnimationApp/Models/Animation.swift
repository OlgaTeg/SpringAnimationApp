//
//  Model.swift
//  SpringAnimationApp
//
//  Created by Olga Tegza on 11.12.2022.
//
import SpringAnimation
import UIKit

struct Animation {
    var preset = ""
    var curve = ""
    var force: CGFloat = 0.0
    var delay: CGFloat = 0.0
    var duration: CGFloat = 0.0
}

extension Animation {
    func getRandomAnimation() -> Animation {
        let animationPresets = [
            AnimationPreset.pop,
            AnimationPreset.slideLeft,
            AnimationPreset.slideRight,
            AnimationPreset.slideDown,
            AnimationPreset.slideUp,
            AnimationPreset.squeezeLeft,
            AnimationPreset.squeezeRight,
            AnimationPreset.squeezeDown,
            AnimationPreset.squeezeUp,
            AnimationPreset.fadeIn,
            AnimationPreset.fadeOut,
            AnimationPreset.fadeOutIn,
            AnimationPreset.fadeInLeft,
            AnimationPreset.fadeInRight,
            AnimationPreset.fadeInDown,
            AnimationPreset.fadeInUp,
            AnimationPreset.zoomIn,
            AnimationPreset.zoomOut,
            AnimationPreset.fall,
            AnimationPreset.shake,
            AnimationPreset.flipX,
            AnimationPreset.flipY,
            AnimationPreset.morph,
            AnimationPreset.squeeze,
            AnimationPreset.flash,
            AnimationPreset.wobble,
            AnimationPreset.swing
        ]
        let presetIndex = Int.random(in: 0..<animationPresets.count)
        let preset = animationPresets[presetIndex].rawValue
        let animationCurves = [
            AnimationCurve.easeIn,
            AnimationCurve.easeOut,
            AnimationCurve.easeInOut,
            AnimationCurve.linear,
            AnimationCurve.spring,
            AnimationCurve.easeInSine,
            AnimationCurve.easeOutSine,
            AnimationCurve.easeInOutSine,
            AnimationCurve.easeInQuad,
            AnimationCurve.easeOutQuad,
            AnimationCurve.easeInOutQuad,
            AnimationCurve.easeInCubic,
            AnimationCurve.easeOutCubic,
            AnimationCurve.easeInOutCubic,
            AnimationCurve.easeInQuart,
            AnimationCurve.easeOutQuart,
            AnimationCurve.easeInOutQuart,
            AnimationCurve.easeInQuint,
            AnimationCurve.easeOutQuint,
            AnimationCurve.easeInOutQuint,
            AnimationCurve.easeInExpo,
            AnimationCurve.easeOutExpo,
            AnimationCurve.easeInOutExpo,
            AnimationCurve.easeInCirc,
            AnimationCurve.easeOutCirc,
            AnimationCurve.easeInOutCirc,
            AnimationCurve.easeInBack,
            AnimationCurve.easeOutBack,
            AnimationCurve.easeInOutBack
        ]
        
        let curveIndex = Int.random(in: 0..<animationCurves.count)
        let curve = animationCurves[curveIndex].rawValue
        
        let force = CGFloat.random(in: 0.2...0.55)
        let delay = CGFloat.random(in: 0.1...0.7)
        let duration = CGFloat.random(in: 0.5...1.5)
        
        let animation = Animation(
            preset: preset,
            curve: curve,
            force: force,
            delay: delay,
            duration: duration
        )
        return animation
    }
}
