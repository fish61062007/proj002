//
//  Sign2ViewController.swift
//  proj002
//
//  Created by john on 2018/2/4.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class Sign2ViewController: UIViewController {
    
    @IBOutlet weak var name2: UILabel!
    
    @IBOutlet weak var school2: UILabel!
    
    @IBOutlet weak var department2: UILabel!
    
    @IBOutlet weak var phone2: UILabel!
    
    @IBOutlet weak var email2: UILabel!
    
    
    var name3: String = ""
    var school3: String = ""
    var department3: String = ""
    var phone3: String = ""
    var email3: String = ""
    


    
    override func viewDidLoad() {
        super.viewDidLoad()
        name2.text = name3
        school2.text = school3
        department2.text = department3
        phone2.text = phone3
        email2.text = email3
        // Do any additional setup after loading the view.
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
