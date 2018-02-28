//
//  ViewController.swift
//  day_6
//
//  Created by MacStudent on 2018-02-27.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.loadURL()
        //self.loadHTML()
        self.textURL()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func loadURL()
    {
        let url = NSURL (string: "https://www.lambtoncollege.ca");
        let requestObj = NSURLRequest(url: url! as URL);
        myWebView.loadRequest(requestObj as URLRequest);
    }
    
    func loadHTML()
    {
        let localfile = Bundle.main.url(forResource: "home", withExtension: "html")
        let requestObj = NSURLRequest(url: localfile!)
        myWebView.loadRequest(requestObj as URLRequest)
    }
    
    func textURL()
    {
        let htmlString:String! = "<br /><h2>Welcome to SourceFreeze!!!</h2>"
        self.myWebView.loadHTMLString(htmlString, baseURL: nil)
    }
}

