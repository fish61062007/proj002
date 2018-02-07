//
//  MyCell.swift
//  proj002
//
//  Created by utaipei on 2018/2/6.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {
    

    
    var int:Int!
    
    @IBOutlet weak var label2: UITextView!
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    @IBOutlet weak var label4: UILabel!
    
    @IBOutlet weak var okButton: UIButton!

    var change = "selected"
    @IBAction func okAction(_ sender: Any) {
        let event = EventHome()

//        if event.eventData[int].1{
//            okButton.setTitle("select", for: .normal)
//            event.eventData[int].1 = false
//        }else {
//            okButton.setTitle("selected", for: .normal)
//            event.eventData[int].1 = true
//        }
        if okButton.titleLabel?.text == change{
            okButton.setTitle("select", for: .normal)
            event.eventData[int].1 = false
        }else {
            okButton.setTitle("selected", for: .normal)
            event.eventData[int].1 = true
        }
    }

    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.numberOfLines = 0
        label3.lineBreakMode = NSLineBreakMode.byWordWrapping
        label3.numberOfLines = 0
        label4.lineBreakMode = NSLineBreakMode.byWordWrapping
        label4.numberOfLines = 0
        

        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
