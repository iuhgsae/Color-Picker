//
//  ViewController.swift
//  Color Picker
//
//  Created by Hana on 9/19/15.
//  Copyright © 2015 sarcrates. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var RedSlider: UISlider!
    @IBOutlet weak var GreenSlider: UISlider!
    @IBOutlet weak var BlueSlider: UISlider!
    
    @IBOutlet weak var RedLabel: UILabel!
    @IBOutlet weak var GreenLabel: UILabel!
    @IBOutlet weak var BlueLabel: UILabel!
    @IBOutlet weak var ColorLabel: UILabel!
    
    @IBOutlet weak var combinedRGBLabel: UILabel!
    
    @IBOutlet weak var ResetButton: UIButton!
    
    
    
    var redColor : Float = 0
    var greenColor : Float = 0
    var blueColor : Float = 0
    

    override func viewDidLoad() {
        super.viewDidLoad()
        RedSlider.value = 0
        GreenSlider.value = 0
        BlueSlider.value = 0
        combinedRGBLabel.text = "0"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func RedSliderAction(_ sender: UISlider) {
    
        changeColors()
    }
    
    @IBAction func GreenSliderAction(_ sender: UISlider) {
    
        changeColors()
    }
    
    @IBAction func BlueSliderAction(_ sender: UISlider) {
        changeColors()
    
    }
    
    func ChangeLabelColor(){
        ColorLabel.backgroundColor = UIColor(red: CGFloat(redColor), green: CGFloat(greenColor), blue: CGFloat(blueColor), alpha: 1.0)
        changeLabels()
    }

    
    func changeColors(){
        
        redColor = RedSlider.value
        greenColor = GreenSlider.value
        blueColor = BlueSlider.value
        
        ChangeLabelColor()
        
    }
    
    
    func changeLabels(){
        
        let RoundedRed = String(format: "%0.0f", (redColor * 255))
        let RoundedGreen = String(format: "%0.0f", (greenColor * 255))
        let RoundedBlue = String(format: "%0.0f", (blueColor * 255))
        
        
        RedLabel.text = "Red: \(RoundedRed)"
        GreenLabel.text = "Green: \(RoundedGreen)"
        BlueLabel.text = "Blue: \(RoundedBlue)"
        
        let combinedRGB = "RGB: \(RoundedRed), \(RoundedGreen), \(RoundedBlue)"
        combinedRGBLabel.text = combinedRGB
        
    }
    
    @IBAction func ResetButtonAction(_ sender: UIButton) {
        ResettingSliders()
        
        
    }
    
    func ResettingSliders(){
        RedSlider.value = 0.5
        GreenSlider.value = 0.5
        BlueSlider.value = 0.5
        
        RedLabel.text = String("Red: 0")
        GreenLabel.text = String("Green: 0")
        BlueLabel.text = String("Blue: 0")

        
    }
    
}

