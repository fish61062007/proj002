//
//  ChooseSchool.swift
//  proj002
//
//  Created by utaipei on 2018/2/4.
//  Copyright © 2018年 utaipei. All rights reserved.
//

import UIKit

class ChooseSchool: UIViewController {
    
    let northData:[String] = ["國立政治大學","國立清華大學","國立臺灣大學","國立臺灣師範大學","國立交通大學","國立中央大學","國立臺灣海洋大學","國立陽明大學","國立臺北大學","國立臺北藝術大學","國立臺灣藝術大學","國立聯合大學","國立臺北教育大學","國立體育大學","臺北市立大學","國立臺灣科技大學","國立臺北科技大學","國立臺北護理健康大學","國立臺北商業大學","國立臺灣戲曲學院","國立空中大學","國防大學","中央警察大學","國防醫學院","陸軍專科學校","臺灣警察專科學校","輔仁大學","東吳大學","中原大學","淡江大學","中國文化大學","長庚大學","元智大學","中華大學","華梵大學","世新大學","銘傳大學","實踐大學","真理大學","大同大學","臺北醫學大學","玄奘大學","開南大學","康寧學校財團法人康寧大學","馬偕學校財團法人馬偕醫學院","法鼓學校財團法人法鼓文理學院","龍華科技大學","明新科技大學","健行學校財團法人健行科技大學","萬能學校財團法人萬能科技大學","明志科技大學","聖約翰科技大學","中國科技大學","光宇學校財團法人元培醫事科技大學","景文科技大學","東南科技大學","德明財經科技大學","中華學校財團法人中華科技大學","廣亞學校財團法人育達科技大學","長庚學校財團法人長庚科技大學","城市學校財團法人臺北城市科技大學","大華學校財團法人大華科技大學","醒吾學校財團法人醒吾科技大學","華夏學校財團法人華夏科技大學","致理學校財團法人致理科技大學","宏國學校財團法人宏國德霖科技大學","崇右學校財團法人崇右影藝科技大學","台北海洋學校財團法人台北海洋科技大學","亞東技術學院","南亞科技學校財團法人南亞技術學院","黎明技術學院","經國管理暨健康學院","亞太學校財團法人亞太創意技術學院","馬偕學校財團法人馬偕醫護管理專科學校","仁德醫護管理專科學校","耕莘健康管理專科學校","新生醫護管理專科學校","學校財團法人中華浸信會基督教台灣浸會神學院","臺北基督學院","台灣神學研究學院","國立金門大學"]
    let midData = ["國立中興大學","國立彰化師範大學","國立暨南國際大學","國立臺中教育大學","國立臺灣體育運動大學","國立雲林科技大學","國立虎尾科技大學","國立勤益科技大學","國立臺中科技大學","東海大學","逢甲大學","靜宜大學","大葉大學","中山醫學大學","中國醫藥大學","亞洲大學","明道學校財團法人明道大學","朝陽科技大學","弘光科技大學","建國科技大學","嶺東科技大學","中臺科技大學","南開科技大學","僑光科技大學","環球學校財團法人環球科技大學","中州學校財團法人中州科技大學","修平學校財團法人修平科技大學","一貫道崇德學院"]
    let southData = ["國立成功大學","國立中山大學","國立中正大學","國立高雄師範大學","國立嘉義大學","國立高雄大學","國立臺南藝術大學","國立臺南大學","國立屏東大學","國立屏東科技大學","國立高雄第一科技大學","國立高雄應用科技大學","國立高雄海洋科技大學","國立高雄餐旅大學","國立臺南護理專科學校","高雄市立空中大學","中華民國陸軍軍官學校","中華民國海軍軍官學校","中華民國空軍軍官學校","空軍航空技術學院","義守大學","高雄醫學大學","南華大學","長榮大學","台灣首府學校財團法人台灣首府大學","中信學校財團法人中信金融管理學院","稻江科技暨管理學院","南臺學校財團法人南臺科技大學","崑山科技大學","嘉藥學校財團法人嘉南藥理大學","樹德科技大學","輔英科技大學","正修學校財團法人正修科技大學","高苑科技大學","大仁科技大學","台南家專學校財團法人台南應用科技大學","遠東科技大學","中華醫事科技大學","美和學校財團法人美和科技大學","吳鳳科技大學","南榮學校財團法人南榮科技大學","文藻學校財團法人文藻外語大學","東方學校財團法人東方設計大學","和春技術學院","大同技術學院","樹人醫護管理專科學校","慈惠醫護管理專科學校","敏惠醫護管理專科學校","高美醫護管理專科學校","育英醫護管理專科學校","崇仁醫護管理專科學校","財團法人一貫道天皇基金會一貫道天皇學院"]
    let eastData = ["國立東華大學","國立臺東大學","國立宜蘭大學","國立臺東專科學校","慈濟學校財團法人慈濟大學","佛光大學","慈濟學校財團法人慈濟科技大學","大漢技術學院","蘭陽技術學院","臺灣觀光學院","聖母醫護管理專科學校"]
    
    
    @IBAction func backToChoose(segue: UIStoryboardSegue){
    }
    var title01:String = ""
    
    @IBOutlet weak var northButton: UIButton!
    @IBOutlet weak var midButton: UIButton!
    @IBOutlet weak var southButton: UIButton!
    @IBOutlet weak var eastButton: UIButton!
    
    @IBAction func chooseButton(_ sender: Any) {
        
        let rr = storyboard?.instantiateViewController(withIdentifier: "ChooseSchool01") as! ChooseSchool01
        
        
        if sender as? UIButton == northButton {
            rr.titleText = "北部"
            rr.data = northData
        }
        if sender as? UIButton == midButton {
            rr.titleText = "中部"
            rr.data = midData
        }
        if sender as? UIButton == southButton {
            rr.titleText = "南部"
            rr.data = southData
        }
        if sender as? UIButton == eastButton {
            rr.titleText = "東部"
            rr.data = eastData
        }
        
        self.present(rr, animated: true, completion: nil)
        
        
        
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
