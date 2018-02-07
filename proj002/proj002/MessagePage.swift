//
//  MessagePage.swift
//  proj002
//
//  Created by utaipei on 2018/2/7.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class MessagePage: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var message = ["通知1","通知2","通知3","通知4"]
    
    @IBOutlet weak var messageTable: UITableView!
    @IBAction func clear(_ sender: Any) {
        message.removeAll()
        messageTable.reloadData()
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return message.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "MyCell")
        if cell == nil {
            cell = UITableViewCell(style: .default,reuseIdentifier: "MyCell")
        }
        cell?.textLabel?.text = message[indexPath.row]
        
        return cell!
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.tabBarController?.tabBar.isHidden = true
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let color1 = UIColor(red: 1,green: 1,blue: 235/255,alpha: 1)
        let color2 = UIColor(red: 253/255,green: 186/255,blue: 165/255,alpha: 1)
        
        let gradient = CAGradientLayer()
        gradient.frame = self.view.frame
        gradient.colors = [color1.cgColor,color2.cgColor]
        
        self.view.layer.insertSublayer(gradient, at: 0)
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
