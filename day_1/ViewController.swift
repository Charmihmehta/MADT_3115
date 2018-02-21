//
//  ViewController.swift
//  day_1
//
//  Created by MacStudent on 2018-02-20.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var togglebtn1: UISegmentedControl!
    
    @IBOutlet weak var lblTitle: UILabel!
    @IBOutlet weak var lblDob: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    @IBOutlet weak var lblGender: UILabel!
    @IBOutlet weak var lblName: UILabel!
     @IBOutlet weak var txtName: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        lblTitle.text = "Information !!"
        lblName.text = "Charmi Mehta"
        lblGender.text = "Female"
        lblEmail.text = "charmimehta@gmail.com"
        lblDob.text = "06/07/1996"
        
    }
  
   
    @IBAction func btnSubmit(_ sender: Any) {
        lblName.text = txtName.text
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func Togglebtn(_ sender: Any) {
        
    }
    
}

