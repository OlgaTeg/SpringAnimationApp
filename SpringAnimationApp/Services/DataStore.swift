//
//  DataStore.swift
//  SpringAnimationApp
//
//  Created by Olga Tegza on 12.12.2022.
//
import SpringAnimation

class DataStore {
    
    static let shared = DataStore()
    let presets = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
