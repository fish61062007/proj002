//
//  SignIn.swift
//  proj002
//
//  Created by utaipei on 2018/2/4.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class SignIn: UIViewController {

    @IBOutlet weak var account: UITextField!
    @IBOutlet weak var password: UITextField!
    
    var correctAccount:String = "user001@gmail.com"
    var correctPassword:String = "qwer1234"
    
    func checkAccount() -> Bool {
        if account.text == correctAccount && password.text == correctPassword {
            return true
        }else{
            return false
        }
    }
    
    @IBAction func logInButton(_ sender: Any) {
        account.resignFirstResponder()
        password.resignFirstResponder()
        
        if account.text == "" || password.text == ""{
            
            let alertController = UIAlertController(title: "ERROR",message: "Please enter your email and password.",preferredStyle: .alert)
            let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            
            alertController.addAction(defaultAction)
            present(alertController, animated: true, completion: nil)
            
        }else {
            if checkAccount() {
                
                let userDefaults = UserDefaults.standard
                userDefaults.set(true, forKey: "isLogined")
                
                userDefaults.synchronize()
                
                
                let alertController = UIAlertController(title: "Success",message: "You have seccessfully loged in.",preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: {(UIAlertAction) in
                    let logInSuccess = self.storyboard?.instantiateViewController(withIdentifier: "TabBar")
                    self.present(logInSuccess!, animated: true, completion: nil)
                })
                
                alertController.addAction(defaultAction)
                present(alertController, animated: true, completion: nil)
            }else{
                let alertController = UIAlertController(title: "ERROR",message: "Wrong email or password.",preferredStyle: .alert)
                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: nil)
                
                alertController.addAction(defaultAction)
                present(alertController, animated: true, completion: nil)
                
                account.text = ""
                password.text = ""
                
            }
        }
        
    }
    
    
    @IBAction func cancelButton(_ sender: Any) {
        
        account.resignFirstResponder()
        password.resignFirstResponder()
        
    }
    
    //keyboard
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        account.resignFirstResponder()
        password.resignFirstResponder()
        return true
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        account.resignFirstResponder()
        password.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardDidShow, object: nil, queue: nil) { (noti:Notification) in
            print("\(noti.userInfo)")
        }
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardDidHide, object: nil, queue: nil) { (noti:Notification) in
            print("\(noti.userInfo)")
        }
        
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
