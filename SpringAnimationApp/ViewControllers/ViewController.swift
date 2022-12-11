//
//  ViewController.swift
//  SpringAnimationApp
//
//  Created by Olga Tegza on 09.12.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet var springAnimationView: SpringView!
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    
    @IBOutlet var buttonName: UIButton!
    
    // MARK: - Private Properties
    private var randomAnimation = Animation()
    private var animationStarted = false
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        randomAnimation = randomAnimation.getRandomAnimation()
        setLabelsValue(animation: randomAnimation)
        
    }
    
    // MARK: - IBAction
    @IBAction func startAnimationButton() {
        springAnimationView.animate()
        runAnimation()
    }
}


// MARK: - Private Methods
extension ViewController {
    
    private func setLabelsValue(animation: Animation) {
        presetLabel.text = "Preset: " + animation.preset
        curveLabel.text = "Curve: " + animation.curve
        forceLabel.text = "Force: " + String.init(format: "%.2F", animation.force)
        delayLabel.text = "Delay: " + String.init(format: "%.2F", animation.delay)
        durationLabel.text = "Duration: " + String.init(format: "%.2F", animation.duration)
    }
    
    private func runAnimation() {
        setLabelsValue(animation: randomAnimation)
        
        springAnimationView.animation = randomAnimation.preset
        springAnimationView.curve = randomAnimation.curve
        springAnimationView.force = randomAnimation.force
        springAnimationView.delay = randomAnimation.delay
        springAnimationView.duration = randomAnimation.duration
        springAnimationView.animate()
        
        randomAnimation = randomAnimation.getRandomAnimation()
        setButtonTitle(animation: randomAnimation)
    }
    
    private func setButtonTitle(animation: Animation) {
        buttonName.setTitle("Run \(animation.preset)", for: .normal)
    }
}
