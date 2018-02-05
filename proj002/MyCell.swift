//
//  MyCell.swift
//  proj002
//
//  Created by utaipei on 2018/2/5.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class MyCell: UITableViewCell {


    @IBOutlet weak var eventName: UILabel!
    @IBOutlet weak var sellectButton: UIButton!
    
    let change = "sellected"
    
    var isSellected:Bool = false
    
    @IBAction func changeName(_ sender: Any) {
        if sellectButton.titleLabel?.text == change{
            isSellected = false
            sellectButton.setTitle("sellect", for: .normal)
        }else {
            isSellected = true
            sellectButton.setTitle("sellected", for: .normal)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
