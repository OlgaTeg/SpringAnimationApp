//
//  Model.swift
//  SpringAnimationApp
//
//  Created by Olga Tegza on 11.12.2022.
//
import SpringAnimation
import UIKit

struct Animation {
    let preset: String
    let curve: String
    let force: Float
    let delay: Float
    let duration: Float
    
    var description: String {
        return """
            preset: \(preset)
            curve: \(curve)
            force: \(String(format: "%.02f", force))
            duration: \(String(format: "%.02f", duration))
            delay: \(String(format: "%.02f", delay))
            """
    }
}

extension Animation {
    static func getRandomAnimation() -> Animation {
        let animation = Animation(
            preset: DataStore.shared.presets.randomElement()?.rawValue ?? "wobble",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "linear",
            force: Float.random(in: 0.2...0.55),
            delay: Float.random(in: 0.1...0.7),
            duration: Float.random(in: 0.5...1.5)
                )
        return animation
    }
}
