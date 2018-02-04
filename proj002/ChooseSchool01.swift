//
//  ChooseSchool01.swift
//  proj002
//
//  Created by utaipei on 2018/2/4.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class ChooseSchool01: UIViewController,UIPickerViewDelegate,UIPickerViewDataSource {

    var titleText: String?
    
    var data:[String]?
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return (data?.count)!
    }
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return data?[row]
    }
    
    

    
    
    @IBOutlet weak var titlee: UILabel!
    @IBOutlet weak var schools: UIPickerView!
    
    var pickedSchool:String?
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        pickedSchool = data?[row]
    }
    
    @IBAction func okButton(_ sender: Any) {
        let eventTrue = storyboard?.instantiateViewController(withIdentifier: "TabBar")
        if pickedSchool == "05"{
            
        }
        present(eventTrue!, animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titlee.text = titleText
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
