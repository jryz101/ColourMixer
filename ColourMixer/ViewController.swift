//
//  ViewController.swift
//  ColourMixer
//
//  Created by Jerry Tan on 22/02/2019.
//  Copyright © 2019 Initiate Design®. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Declare variables.
    var redValue = 255
    var greenValue = 255
    var blueValue = 255
    
    //Link up outlets.
    @IBOutlet weak var redText: UILabel!
    @IBOutlet weak var greenText: UILabel!
    @IBOutlet weak var blueText: UILabel!
    
    
    //Link up slider.
    @IBAction func redSliderChanged(_ sender: UISlider) {
        redValue = Int(sender.value)
        redText.text = "R: \(redValue)"
        changeBackgroundColor()
    }
    
    @IBAction func greenSliderChanged(_ sender: UISlider) {
        greenValue = Int(sender.value)
        greenText.text = "R: \(greenValue)"
        changeBackgroundColor()
    }
    
    @IBAction func blueSliderChanged(_ sender: UISlider) {
        blueValue = Int(sender.value)
        blueText.text = "R: \(redValue)"
        changeBackgroundColor()
    }
    
    
    //Create a changeBackgroundColor function with no input.
    func changeBackgroundColor() {
      view.backgroundColor =  UIColor(red: CGFloat(redValue) / 255, green: CGFloat(greenValue) / 255, blue: CGFloat(blueValue) / 255, alpha: 1)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

