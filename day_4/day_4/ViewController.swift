//
//  ViewController.swift
//  day_4
//
//  Created by MacStudent on 2018-02-23.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
     @IBOutlet weak var myActivity: UIActivityIndicatorView!
    var timer = Timer()
    var seconds = 10
    override func viewDidLoad() {
        super.viewDidLoad()
        myImage.image = UIImage(named: "girl-icon.png")
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector (showProgress), userInfo: nil, repeats: true)
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @objc func showProgress()
    {
        seconds -= 1
        if(seconds == 0)
        {
            timer.invalidate()
            myActivity.stopAnimating()
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func mySegment(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0{
            print ("1")
        }
        else if sender.selectedSegmentIndex == 1{
            print("2")
        }
        else if sender.selectedSegmentIndex == 2{
            print("3")
        }
    }
    
    @IBAction func mySegmentPeople(_ sender: UISegmentedControl) {
        var imageName : String?
        if sender.selectedSegmentIndex == 0{
            imageName = "girl-icon.png"
        }
        else if sender.selectedSegmentIndex == 1{
           imageName = "doctor-icon.png"
        }
        else if sender.selectedSegmentIndex == 2{
           imageName = "artist-icon.png"
        }
       myImage.image = UIImage(named: imageName!)
        
    }
    @IBAction func myStepper(_ sender: UIStepper) {
        print(sender.value)
    }
}

