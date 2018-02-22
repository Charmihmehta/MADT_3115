//
//  ViewController.swift
//  Day_2
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var txtPsw: UITextField!
    @IBOutlet weak var txtemail: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.title = "login"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func validatingUser()
    {
        if(txtemail.text == "admin@gmail.com" && txtPsw.text == "admin123")
        {
            print("Hello, My First Click : ", txtemail.text! )
            
            let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main" , bundle: nil)
            let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "secondVC") as! SecondViewController
            self.present (nextVC, animated: true , completion: nil)
        }
        else
        {
            // create alertcontroller object
            let alert = UIAlertController(title: "Error" , message: "Invalid User name/ Password" , preferredStyle: UIAlertControllerStyle.alert)
            
            //OK button add
            let actionOk = UIAlertAction(title: "OK" , style: UIAlertActionStyle.default , handler: nil)
            alert.addAction(actionOk)
            
            
            //cancle button add
            let actionCancle = UIAlertAction(title: "Cancle" , style: UIAlertActionStyle.cancel , handler: nil)
            alert.addAction(actionCancle)
            
            //retry button add
            let actionRetry = UIAlertAction(title: "Retry" , style: UIAlertActionStyle.destructive , handler: nil)
            alert.addAction(actionRetry)
            
            //show alert dialog
            self.present(alert, animated: true, completion: nil)
        }
    }
    @IBAction func btnLogin(_ sender: Any) {
        validatingUser()
    }
}

