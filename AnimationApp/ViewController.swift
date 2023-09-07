//
//  ViewController.swift
//  AnimationApp
//
//  Created by Геник Мурадян on 06.09.2023.
//

import UIKit
import SpringAnimation

final class ViewController: UIViewController {
    
    @IBOutlet private var animationView: SpringView!
    @IBOutlet var animationLabel: UILabel!
    
    override func viewDidLoad() {
        animationLabel.text = """
            preset:
            curve:
            force:
            duration:
            delay:
            """
    }
    
    private var animation = Animation.randomAnimation
    
    @IBAction func runButtonPressed(_ sender: UIButton) {
        updateAnimation()
        animationLabel.text = animation.description
        animation = Animation.randomAnimation
        sender.setTitle("Run \(animation.preset)", for: .normal)
        
    }
    
    private func updateAnimation() {
        animationView.animation = animation.preset
        animationView.curve = animation.curve
        animationView.duration = animation.duration
        animationView.force = animation.force
        animationView.delay = animation.delay
        animationView.animate()
    }
}
            
 
