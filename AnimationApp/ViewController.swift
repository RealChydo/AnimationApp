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
    
    @IBOutlet private var presetLabel: UILabel!
    @IBOutlet private var curveLabel: UILabel!
    @IBOutlet private var forceLabel: UILabel!
    @IBOutlet private var durationLabel: UILabel!
    @IBOutlet private var delayLabel: UILabel!
    
    override func viewDidLoad() {
        animationView.layer.cornerRadius = 10
        updateAnimation()
        updateLabelValues()
    }

    @IBAction private func runButtonTapped(_ sender: UIButton) {
        animationView.animate()
        updateLabelValues()
        updateAnimation()
        sender.setTitle("Run \(animationView.animation)", for: .normal)
    }
    
    private func updateLabelValues() {
        presetLabel.text = "preset: \(animationView.animation)"
        curveLabel.text = "curve: \(animationView.curve)"
        forceLabel.text = "force: \(String(format: "%.2f", animationView.force))"
        durationLabel.text = "duration: \(String(format: "%.2f", animationView.duration))"
        delayLabel.text = "delay: \(String(format: "%.2f", animationView.delay))"
    }
    
    private func updateAnimation() {
        animationView.animation = AnimationPreset.allCases.randomElement()?.rawValue ?? "pop"
        animationView.curve = AnimationCurve.allCases.randomElement()?.rawValue ?? "easeIn"
        animationView.force = CGFloat.random(in: 1...3.5)
        animationView.duration = CGFloat.random(in: 1...3.5)
        animationView.delay = CGFloat.random(in: 0.1...1.5)
    }
}
            
 
