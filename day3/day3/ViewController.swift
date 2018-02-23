//
//  ViewController.swift
//  day3
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mySwitch: UISwitch!
    
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myImage: UIImageView!
    @IBOutlet weak var btnClick: UIButton!
    @IBOutlet weak var txtMy: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myImage.image = UIImage(named: "lion.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mySwitchTapped(_ sender: UISwitch) {
        
        var imageName : String?
        if sender.isOn
        {
            txtMy.text = "The switch is on"
             imageName = "lion.png"
        }
        else
        {
            txtMy.text = "the switch is off"
            imageName = "gorilla.png"
        }
        myImage.image = UIImage(named: imageName!)
    }
    
    @IBAction func btnClicked(_ sender: UIButton) {
        if mySwitch.isOn
        {
            txtMy.text = "The switch is off"
            mySwitch.setOn(false, animated: true)
        }
        else
        {
            txtMy.text = "the switch is on"
            mySwitch.setOn(true, animated: true)
        }
    }
    
    @IBAction func mySliderslide(_ sender: UISlider) {
        txtMy.text = String(Int(sender.value))
    }
}

