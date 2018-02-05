//
//  EventDetail.swift
//  proj002
//
//  Created by utaipei on 2018/2/4.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class EventDetail: UIViewController {
    
    
    @IBOutlet weak var eventTitle: UINavigationItem!
    @IBOutlet weak var detail01: UILabel!
    
    var titleText:String = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        eventTitle.title = titleText
        
        
        
        
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
