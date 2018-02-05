//
//  SuccessSignViewController.swift
//  proj002
//
//  Created by john on 2018/2/5.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class SuccessSignViewController: UIViewController,UINavigationControllerDelegate {

    
    @IBAction func backHome(_ sender: Any) {
self.navigationController?.popToRootViewController(animated: true)
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
