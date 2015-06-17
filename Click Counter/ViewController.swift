//
//  ViewController.swift
//  Click Counter
//
//  Created by Brian Quick on 6/16/15.
//  Copyright (c) 2015 Brian Quick. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var label:UILabel!
    var label2:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Label
        var label = UILabel()
        label.frame = CGRectMake(150,150,60,60)
        label.text = "0"
        
        //Label2
        var label2 = UILabel()
        label2.frame = CGRectMake(250,150, 60,60)
        label2.text = "0"
        
        self.view.addSubview(label)
        self.label = label
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        
        //Button
        var button = UIButton()
        button.frame = CGRectMake(150,250,60,60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)
        
        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        //Button
        var button2 = UIButton()
        button2.frame = CGRectMake(225,250,60,60)
        button2.setTitle("Click", forState: .Normal)
        button2.setTitleColor(UIColor.redColor(), forState: .Normal)
        self.view.addSubview(button2)
        
        button2.addTarget(self, action: "deIncrementCount", forControlEvents: UIControlEvents.TouchUpInside)

        //Button
        var button3 = UIButton()
        button3.frame = CGRectMake(300,250,60,60)
        button3.setTitle("Click", forState: .Normal)
        button3.setTitleColor(UIColor.greenColor(), forState: .Normal)
        self.view.addSubview(button3)
        
        button3.addTarget(self, action: "getRandomColor", forControlEvents: UIControlEvents.TouchUpInside)
        
        
        
    }
    
    func incrementCount(){
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func deIncrementCount(){
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    
    
    
    
    func getRandomColor(){
        var randomRed:CGFloat = CGFloat(drand48())
        var randomGreen:CGFloat = CGFloat(drand48())
        var randomBlue:CGFloat = CGFloat(drand48())
        self.view.backgroundColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
    }
    
}

