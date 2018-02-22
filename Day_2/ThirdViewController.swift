//
//  ThirdViewController.swift
//  Day_2
//
//  Created by MacStudent on 2018-02-21.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
 var strHello: String?
    override func viewDidLoad() {
       
        super.viewDidLoad()
        print(strHello ?? 0)
        // Do any additional setup after loading the view.
    }

    func goData(str: String)
    {
        print(str)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
