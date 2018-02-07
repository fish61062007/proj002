//
//  EventDetail.swift
//  proj002
//
//  Created by utaipei on 2018/2/4.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit
//import Firebase
//import FirebaseDatabase


class EventDetail: UIViewController{
    
    @IBOutlet weak var okButton: UIButton!
    var change2 = "selected"
    @IBAction func change(_ sender: Any) {
        if okButton.titleLabel?.text == change2{

            okButton.setTitle("select", for: .normal)
        }else {

            okButton.setTitle("selected", for: .normal)
        }
    }
    
    @IBOutlet weak var followButton: UIButton!
    var change = "followed"
    @IBAction func followed(_ sender: Any) {
        if followButton.titleLabel?.text == change{
            
            followButton.setTitle("follow", for: .normal)
        }else {
            
            followButton.setTitle("followed", for: .normal)
        }
    }
    
    
    @IBOutlet weak var eventTitle: UINavigationItem!
   
    @IBOutlet weak var detail01: UILabel!
    
//    var ref = Database.database().reference()
    
    //    func configureView() {
//        // Update the user interface for the detail item.
//        if let detail = detailItem {
//            if let label = detail01 {
//
//                var refHandle = ref.observe(DataEventType.value, with: { (snapshot) in
//                    let postDict = snapshot.value as? [String : AnyObject] ?? [:]
//                    self.detail01.text = postDict["Name"] as? String
//                })
//            }
//        }
//    }
    @IBOutlet weak var timeEnd: UITextView!
    
    @IBOutlet weak var timeStart: UITextView!
    
    @IBOutlet weak var place: UITextView!
    
    @IBOutlet weak var holder: UITextView!
    
    @IBOutlet weak var content: UITextView!
    
    @IBOutlet weak var register: UITextView!
    
    @IBOutlet weak var registerDate: UITextView!
    
    @IBOutlet weak var number: UITextView!
    
    @IBOutlet weak var number2: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventTitle.title = "活動詳情"
//        configureView()
        let eventNavi = self.navigationController as? EventDetailNavi
        detail01.text = eventNavi?.eventData["name"]
        detail01.lineBreakMode = NSLineBreakMode.byWordWrapping
        detail01.numberOfLines = 0
        
        timeEnd.text = eventNavi?.eventData["timeEnd"]
        timeStart.text = eventNavi?.eventData["timeStart"]
        place.text = "活動地點：\n" + (eventNavi?.eventData["place"])!
        holder.text = "主辦單位：" +  (eventNavi?.eventData["holder"])!
        content.text = eventNavi?.eventData["content"]
        register.text = eventNavi?.eventData["register"]
        registerDate.text =  (eventNavi?.eventData["registerDate"])! + "\n截止報名"
        number.text = "名額剩餘\n" + (eventNavi?.eventData["number"])!
        number2.text = "總名額 " + (eventNavi?.eventData["number2"])!
        
        // Do any additional setup after loading the view.
        let color1 = UIColor(red: 1,green: 1,blue: 235/255,alpha: 1)
        let color2 = UIColor(red: 253/255,green: 186/255,blue: 165/255,alpha: 1)
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.frame
        gradient.colors = [color1.cgColor,color2.cgColor]
        
        self.view.layer.insertSublayer(gradient, at: 0)
        
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
