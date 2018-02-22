//
//  SecondViewController.swift
//  Day_2
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btnAlert(_ sender: Any) {
        
        // create alertcontroller object
       let alert = UIAlertController(title: "Message" , message: "Hello world" , preferredStyle: UIAlertControllerStyle.alert)
        
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
    
    @IBAction func btnAction(_ sender: Any) {
        // create alertcontroller object
        let alert = UIAlertController(title: "Message" , message: "Hello world" , preferredStyle: UIAlertControllerStyle.actionSheet)
        
        //OK button add
        let actionOk = UIAlertAction(title: "OK" , style: UIAlertActionStyle.default , handler:
        {
             _ in print("Alert ok")
        })
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
    @IBAction func btnNext(_ sender: UIButton) {
        let myStoryBoard: UIStoryboard = UIStoryboard(name: "Main" , bundle: nil)
        let nextVC = myStoryBoard.instantiateViewController(withIdentifier: "thirdVC") as! ThirdViewController
      //  self.present (nextVC, animated: true , completion: nil)
           nextVC.strHello = "hello world"
        
        self.navigationController?.pushViewController(nextVC, animated: true)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
