//
//  DataStore.swift
//  AnimationApp
//
//  Created by Геник Мурадян on 07.09.2023.
//

import SpringAnimation

final class DataStore {
    
    static let shared = DataStore()
    
    let presets = AnimationPreset.allCases
    
    let curves = AnimationCurve.allCases
    
    private init() {}
}
