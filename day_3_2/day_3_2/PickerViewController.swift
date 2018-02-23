//
//  PickerViewController.swift
//  day_3_2
//
//  Created by MacStudent on 2018-02-22.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class PickerViewController: UIViewController , UIPickerViewDelegate , UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        if(component == 0)
        {
        return countryNameList.count
        }
        else{
        return studentList.count
        }
    }
    

    @IBOutlet weak var myPicker: UIPickerView!
    var countryNameList = ["India","Canada","USA","UK","Pakistan","France","Sri Lanka","Mexico","Bhutan","China","Singapor","South Africa"]
    
    var studentList = ["x", "y", "z"]
    override func viewDidLoad() {
        super.viewDidLoad()
        myPicker.delegate = self
        myPicker.dataSource = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if(component == 0){
        return countryNameList[row]
        }
        else
        {
            return studentList[row]
        }
    }
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        print(countryNameList[row])
        print(studentList[row])
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
