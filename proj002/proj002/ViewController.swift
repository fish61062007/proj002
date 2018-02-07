//
//  ViewController.swift
//  proj002
//
//  Created by utaipei on 2018/2/4.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func start(segue: UIStoryboardSegue){}
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let color1 = UIColor(red: 1,green: 1,blue: 235/255,alpha: 1)
        let color2 = UIColor(red: 253/255,green: 186/255,blue: 165/255,alpha: 1)
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.frame
        gradient.colors = [color1.cgColor,color2.cgColor]
        
        self.view.layer.insertSublayer(gradient, at: 0)
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

