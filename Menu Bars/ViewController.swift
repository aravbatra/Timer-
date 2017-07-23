//
//  ViewController.swift
//  Menu Bars
//
//  Created by Arav Batra on 7/22/17.
//  Copyright © 2017 Arav Batra. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var timer = Timer()
    
    @IBOutlet var Time: UILabel!
    var timeCounter = 210
    func decreaseCounter(){
        
        if(timeCounter > 0){
        
            timeCounter -= 1
        
            Time.text = String(timeCounter)
        }
        
        else{
            timer.invalidate()
        }
        
        
    }
    
    @IBAction func Play(_ sender: AnyObject) {
         timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseCounter), userInfo: nil, repeats: true)
    }
    @IBAction func Pause(_ sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func minusTen(_ sender: AnyObject) {
        
        if (timeCounter > 10) {
        
        timeCounter -= 10
        Time.text = String(timeCounter)
            
        }
    }
    @IBAction func addTen(_ sender: AnyObject) {
        timeCounter += 10
        Time.text = String(timeCounter)
    }
    @IBAction func reset(_ sender: AnyObject) {
        timeCounter = 210
        Time.text = String(timeCounter)

    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
       
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

