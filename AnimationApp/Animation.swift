//
//  Animation.swift
//  AnimationApp
//
//  Created by Геник Мурадян on 07.09.2023.
//

struct Animation: CustomStringConvertible {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static var randomAnimation: Animation {
        Animation(
            preset: DataStore.shared.presets.randomElement()?.rawValue ?? "pop",
            curve: DataStore.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 0.6...1.8),
            delay: 1
        )
    }
}
