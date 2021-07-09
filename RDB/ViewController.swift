//
//  ViewController.swift
//  RDB
//
//  Created by Сергей Жага on 09.07.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewColor: UIView!
    
    @IBOutlet weak var redSlider: UISlider! {
        didSet {
            redSlider.tintColor = UIColor.red
        }
    }
    @IBOutlet weak var greenSlider: UISlider! {
    didSet {
        greenSlider.tintColor = UIColor.green
    }
    }
    @IBOutlet weak var blueSlider: UISlider! {
     didSet {
        blueSlider.tintColor = UIColor.blue
    }
    }
    @IBOutlet weak var rNumber: UILabel!
    @IBOutlet weak var gNumber: UILabel!
    @IBOutlet weak var bNumber: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func changeView() {
        viewColor.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    @IBAction func sliderAction(_ sender: Any) {
        changeView()
        rNumber.text = String(redSlider.value)
        gNumber.text = String(greenSlider.value)
        bNumber.text = String(blueSlider.value)
        
    
    
}
}
