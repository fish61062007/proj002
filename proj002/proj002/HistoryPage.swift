//
//  HistoryPage.swift
//  proj002
//
//  Created by utaipei on 2018/2/7.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class HistoryPage: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var fakeData = ["教學助理培訓-微電影剪輯技巧", "教育系105學年度教育部補助精進師資素質計畫「國民小學適性教學工作坊：模擬教甄」", "「與時代接軌—影像製作接軌So Fun」-影像特效及輸出成品", "自我激勵與潛能發展管理", "膝關節退化的預防與保養方針", "用Mac開始你的創新應用", "美感細胞教育改革計畫陳慕天先生 主題【社會創新】", "南投縣立爽文國中王政忠教導主任 主題【我有一個夢】", "106-1教師教學工作坊-新進教師如何準備教師評鑑", "畢聯會系列講座 系列二：熱血", "教育部師資課程教學與評量協作中心規劃委員汪履維教授 主題【十二年國教的課程教學與評量:改革新動向】", "ZUVIO 雲端即時反饋系統", "陳致宏 博士/德國 維藤·赫德克大學 講題:【從德國民族主義與德國人對古代歷史的觀點談起】", "教學助理培訓-Illustrator 很簡單", "舉行105學年度第2學期全校教師教學研 討會", "106-1教職員工輔導知能研習-情感教育講座之「如何與學生們，談”情”說”愛”」", "天母校區106-1心肺復甦術訓練班", "認識你的身體～身體組成分析測量III"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fakeData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "MyCell")
        if cell == nil {
            cell = UITableViewCell(style: .default,reuseIdentifier: "MyCell")
        }
        cell?.textLabel?.text = fakeData[indexPath.row]
        
        return cell!
    }
    
    
    @IBOutlet weak var historyTable: UITableView!
    @IBAction func clear(_ sender: Any) {

        fakeData.removeAll()
        historyTable.reloadData()
  
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
