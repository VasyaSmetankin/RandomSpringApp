//
//  ViewController.swift
//  RandomSpringApp
//
//  Created by KooK MeeM on 02.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    

    @IBOutlet var springPreset: UILabel!
    @IBOutlet var springCurve: UILabel!
    @IBOutlet var springForce: UILabel!
    @IBOutlet var springDuration: UILabel!
    @IBOutlet var springDelay: UILabel!
    
    
    @IBOutlet var springButtonOutlet: SpringButton!
    @IBOutlet var springViewOutlet: SpringView!
    
    
    var randomAnimationTypeArray = [
        "pop",
        "slideLeft",
        "slideRight",
        "slideDown",
        "slideUp",
        "squeezeLeft",
        "squeezeRight",
        "squeezeDown",
        "squeezeUp",
        "fadeIn",
        "fadeOut",
        "fadeOutIn",
        "fadeInLeft",
        "fadeInRight",
        "fadeInDown",
        "fadeInUp",
        "zoomIn",
        "zoomOut",
        "fall",
        "shake",
        "flipX",
        "flipY",
        "morph",
        "squeeze",
        "flash",
        "wobble",
        "swing",
        ]
    var randomCurveTypeArray = [
        
        "easeIn",
        "easeOut",
        "easeInOut",
        "linear",
        "spring",
        "easeInSine",
        "easeOutSine",
        "easeInOutSine",
        "easeInQuad",
        "easeInQuint",
        "easeOutQuint",
        "easeInOutQuint",
        "easeInExpo",
        "easeOutExpo",
        "easeInOutExpo",
        "easeInCirc",
        "easeOutCirc",
        "easeInOutCirc",
        "easeInBack",
        "easeOutBack",
        "easeInOutBack",
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        SetupProps()
    }
    
    
    
    
    
    private func SetupProps() {
        springViewOutlet.layer.cornerRadius = 10
        springButtonOutlet.layer.cornerRadius = 10
        springButtonOutlet.backgroundColor = #colorLiteral(red: 0.3145380922, green: 0.8607493594, blue: 0.9169696736, alpha: 1)
        springViewOutlet.backgroundColor = #colorLiteral(red: 0.7159170939, green: 0.7660595397, blue: 0.7039443353, alpha: 1)

    }
    @IBAction func springButtonDidTapped(_ sender: SpringButton) {
        
        var springViewOutletType = randomAnimationTypeArray.randomElement() ?? ""
        var springViewOutletCurve = randomCurveTypeArray.randomElement() ?? ""
        var springViewOutletForce = Double.random(in: 0...1.5)
        var springViewOutletDuration = Double.random(in: 0.5...1)
        var springViewOutletDelay = Double.random(in: 0.2...0.8)
        
        springPreset.text = "Preset: \(springViewOutletType)"
        springCurve.text = "Curve: \(springViewOutletCurve)"
        springForce.text = "Force: \(NSString(format: "%.2f", springViewOutletForce))"
        springDuration.text = "Duration: \(NSString(format: "%.2f",springViewOutletDuration))"
        springDelay.text = "Delay: \(NSString(format: "%.2f",springViewOutletDelay))"
        
        springViewOutlet.animation = springViewOutletType
        springButtonOutlet.setTitle(springViewOutletType, for: .normal)
        springViewOutlet.curve = springViewOutletCurve
        
        springViewOutlet.force = springViewOutletForce
        springViewOutlet.duration = springViewOutletDuration
        springViewOutlet.delay = springViewOutletDelay
        springViewOutlet.animate()
    }

}

