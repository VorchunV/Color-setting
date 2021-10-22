//
//  ViewController.swift
//  Color setting
//
//  Created by Варвара Фомина on 21.10.2021.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet var colorField: UIView!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorField.layer.cornerRadius = 10
        
        redSlider.minimumTrackTintColor = .red
        greenSlider.minimumTrackTintColor = .green
        
        redSlider.maximumValue = 1
        greenSlider.maximumValue = 1
        blueSlider.maximumValue = 1
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        //        Попробовала реализовать настройку лейбла через код
        redLabel.font = UIFont(name: "Snell Roundhand Bold" , size: 20)
        greenLabel.font = UIFont(name: "Snell Roundhand Bold", size: 20)
        blueLabel.font = UIFont(name: "Snell Roundhand Bold", size: 20)
        
        colorField.backgroundColor  = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha:1.0
        )
    }
    
    
    
    @IBAction func colorSetting(_ sender: UISlider ) {
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        colorField.backgroundColor  = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha:1.0
        )
    }
    
}




