//
//  ViewController.swift
//  RandomSpringApp
//
//  Created by KooK MeeM on 02.11.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {

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
        "a"
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
        
        springViewOutlet.animation = randomAnimationTypeArray.randomElement() ?? ""
        springViewOutlet.curve = "easeOutBack"
        springViewOutlet.force = Double.random(in: 0...1.5)
        springViewOutlet.duration = Double.random(in: 0.5...1)
        springViewOutlet.delay = Double.random(in: 0.2...0.8)
        springViewOutlet.animate()
        
        
        
        
    }


}

