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
                
                let logInSuccess = storyboard?.instantiateViewController(withIdentifier: "TabBar")
                present(logInSuccess!, animated: true, completion: nil)
                
//                let userDefaults = UserDefaults.standard
//                userDefaults.set(true, forKey: "isLogined")
//                userDefaults.synchronize()
//
//                let userDefaults2 = UserDefaults.standard
//                userDefaults2.set(true, forKey: "isLogined")
//                userDefaults2.synchronize()
//
//                dismiss(animated: true, completion: nil)
                
//                let alertController = UIAlertController(title: "Success",message: "You have seccessfully loged in.",preferredStyle: .alert)
//                let defaultAction = UIAlertAction(title: "OK", style: .cancel, handler: {(UIAlertAction) in
//
//                    let logInSuccess = self.storyboard?.instantiateViewController(withIdentifier: "TabBar")
//                    self.present(logInSuccess!, animated: true, completion: nil)
//                })
//
//                alertController.addAction(defaultAction)
//                present(alertController, animated: true, completion: nil)
                
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
        let color1 = UIColor(red: 1,green: 1,blue: 235/255,alpha: 1)
        let color2 = UIColor(red: 253/255,green: 186/255,blue: 165/255,alpha: 1)
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.frame
        gradient.colors = [color1.cgColor,color2.cgColor]
        
        self.view.layer.insertSublayer(gradient, at: 0)
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardDidShow, object: nil, queue: nil) { (noti:Notification) in
            print("\(String(describing: noti.userInfo))")
        }
        
        NotificationCenter.default.addObserver(forName: NSNotification.Name.UIKeyboardDidHide, object: nil, queue: nil) { (noti:Notification) in
            print("\(String(describing: noti.userInfo))")
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
