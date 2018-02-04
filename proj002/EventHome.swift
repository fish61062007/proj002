//
//  EventHome.swift
//  proj002
//
//  Created by utaipei on 2018/2/4.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class EventHome: UIViewController, UITableViewDelegate, UITableViewDataSource, UIPickerViewDelegate, UIPickerViewDataSource {
    
    @IBAction func backToEventHome(segue: UIStoryboardSegue){}
    
    //PickerView
    @IBOutlet weak var categoryPicker: UIPickerView!
    let categoryData = ["推薦","收藏","追蹤"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return categoryData.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return categoryData[row]
    }
    
    //TableView
    var eventData:[String] = ["2017東亞數學史國際研討會","106年度蘋果節「蘋安喜樂」演唱會暨閉幕典禮","臺北市立大學 畢聯會「大發辦桌會」","1052教師精進研習工作坊(LMS教學)","市立動物園金仕謙園長講座 主題[動物園的保育使命]","臺灣史製作團隊講座 主題【臺灣吧：打造新的學習世界】","南投縣立爽文國中王政忠教導主任 主題【我有一個夢】","教育部師資課程教學與評量協作中心規劃委員汪履維教授 主題【十二年國教的課程教學與評量:改革新動向】","美感細胞教育改革計畫陳慕天先生 主題【社會創新】","教學助理培訓-微電影剪輯技巧","105學年度第2學期輔導教師座談會議","「與時代接軌—影像製作接軌So Fun」-影像剪接入門及混音","「與時代接軌—影像製作接軌So Fun」-雙機影像剪輯及字幕效果","「與時代接軌—影像製作接軌So Fun」-影像特效及輸出成品","舉行105學年度第2學期全校教師教學研 討會","教學助理培訓-微電影剪輯技巧","臺北市立大學105學年度第2學期理學院數學系科學大師週末研習-統計","【教師精進研討】通識教育這條路─教學經驗分享與省思","【教師精進研討】數位教學課程線上經營經驗分享","教學助理培訓-口語表答關鍵力","教學助理培訓-時間管理","善用 EverCam ~ 教學可以更輕鬆、有效!","產學合作工作坊","產學合作工作坊(4月25日場)","教學助理培訓-Illustrator 很簡單","106年度資訊安全暨個人資料檔案清冊盤點暨風險評鑑教育訓練第一梯次(天母校區)","106年度資訊安全暨個人資料檔案清冊盤點暨風險評鑑教育訓練第二梯次(博愛校區)","ZUVIO 雲端即時反饋系統","106年一般環境安全衛生講習","教學助理培訓-Illustrator 很簡單","教育系105學年度教育部補助精進師資素質計畫「國民小學適性教學工作坊：模擬教甄」","「教育學講座」 單文經教授演講：杜威教育思想今詮","「通識教育與語文教學」暨106學年度第1學期通識教師精進研討會","106學年度第1學期教師教學工作坊","邱培榮 創意總監/晶舜設計工程公司 講題:【展示設計與品牌精神】","李雨珊 總經理/墨色國際 講題:【從幾米到幾米品牌-幾米品牌的經營策略與創意】","王俊秀 教授/國立清華大學 講題:【SD to SD:共善作為地球之道】","卜袞‧伊斯瑪哈單‧伊斯立端 先生/布農族詩人 講題:【談族語文學創作】","劉瑞玲 部主任/臺北榮民總醫院眼科部 講題:【現代人常見眼疾及未來隱憂】","陳致宏 博士/德國 維藤·赫德克大學 講題:【從德國民族主義與德國人對古代歷史的觀點談起】","106-1教師教學工作坊-新進教師如何準備教師評鑑","讓Apple創造你的無限想像","用Mac開始你的創新應用","用Keynote讓你的簡報獨一無二","用iMovie讓你的影片有聲有色","用iPad開始你的行動教學","用iPad翻轉你的教室,你的課堂","G-Suite For Education 雲端應用","告別乾燥～冬季保養品DIY","冬至一起搓湯圓～「哩麥皂！！」","醒腦大作戰 萬金油DIY 還可以防蚊喔！","矽(珪)藻土吸水杯墊－吸濕又除臭","乾洗手DIY 病菌不要來！","WIX網頁輕鬆學","106-1教職員工輔導知能研習-情感教育講座之「如何與學生們，談”情”說”愛”」","如何完成期末海報","簡報技巧與規劃實務訓練","ZUVIO雲端即時系統教學","EverCam & ee-class輕鬆學","「多媒！多美！多媒體科技新手上路！」","攝影棚好好玩","自我激勵與潛能發展管理","106學年度第1學期全校教師教學研習會","膝關節運動傷害防制與科技輔助","膝關節退化的預防與保養方針","運動傷害與防護：輕輕鬆鬆 擺脫痠痛","手機植物攝影","認識你的身體～身體組成分析測量III","台北風華，深度旅行","運動效能護具與服飾裝備開發趨勢","健身產品設計與產學合作經驗分享","跑步傷痛防護大調查及自我療護","亞洲運動保健產業市場發展趨勢","天母校區106-1心肺復甦術訓練班","第二期iOS APP跨領域合作課程","畢聯會系列講座 系列二：熱血"]
   
    
    
    @IBOutlet weak var eventTableView: UITableView!
    
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath){
        
        let detail = storyboard?.instantiateViewController(withIdentifier: "EventDetailNavi")
        present(detail!,animated: true,completion: nil)
        
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return eventData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell:UITableViewCell? = tableView.dequeueReusableCell(withIdentifier: "MyCell")
        if cell == nil {
            cell = UITableViewCell(style: .default,reuseIdentifier: "MyCell")
        }
        cell?.textLabel?.text = eventData[indexPath.row]
        
        return cell!
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
