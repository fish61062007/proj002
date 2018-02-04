//
//  Sign1ViewController.swift
//  proj002
//
//  Created by john on 2018/2/4.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class Sign1ViewController: UIViewController {

    @IBOutlet weak var name1: UITextField!
    
    @IBOutlet weak var school1: UITextField!
    
    @IBOutlet weak var department1: UITextField!
    
    @IBOutlet weak var phone1: UITextField!
    
    
    @IBOutlet weak var email1: UITextField!
    
    @IBAction func empty(_ sender: Any) {
        if name1.text == "" || school1.text == "" || department1.text == "" || phone1.text == "" || email1.text == ""{
            let alertController = UIAlertController(title: "錯誤", message: "請輸入完整資訊", preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    
    var name3: String = ""
    var school3: String = ""
    var department3: String = ""
    var phone3: String = ""
    var email3: String = ""
    
    override func prepare(for segue:UIStoryboardSegue,
                          sender: Any?){
        let Sign1ViewController = segue.destination as? Sign2ViewController
        Sign1ViewController?.name3 = name1.text!
        Sign1ViewController?.school3 = school1.text!
        Sign1ViewController?.department3 = department1.text!
        Sign1ViewController?.phone3 = phone1.text!
        Sign1ViewController?.email3 = email1.text!
    }

    override func viewDidLoad() {
        super.viewDidLoad()

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
