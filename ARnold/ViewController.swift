//
//  ViewController.swift
//  ARnold
//
//  Created by Jacob Muller on 2/2/20.
//  Copyright © 2020 Jacob Muller. All rights reserved.
//

import UIKit
import RealityKit

class ViewController: UIViewController {
    
    @IBOutlet var arView: ARView!
    @IBOutlet var labelCode: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Load the "Box" scene from the "Experience" Reality File
        let boxAnchor = try! Experience.loadBox()
        
        // Add the box anchor to the scene
        arView.scene.anchors.append(boxAnchor)

    }
    @objc func handleTap() {
        print ("Tap on second label detected")
    }
}
