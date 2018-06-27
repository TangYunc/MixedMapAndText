//
//  DemoViewController.swift
//  MixedMapAndText
//
//  Created by 唐云川 on 2018/6/27.
//  Copyright © 2018年 唐云川. All rights reserved.
//

import UIKit

class DemoViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        //0.图片附件
        let attachment = NSTextAttachment()
        attachment.image = #imageLiteral(resourceName: "compose_emoticonbutton_background_highlighted")
        let height = label.font.lineHeight
        attachment.bounds = CGRect(x: 0, y: -4, width: height, height: height)
        //1.创建属性文本
        let imageStr = NSAttributedString(attachment: attachment)
        //2.可变的图文字符串
        let mattStr = NSMutableAttributedString(string: "我")
        mattStr.append(imageStr)
        mattStr.append(NSAttributedString(string: "99!"))
        //设置label
        label.attributedText = mattStr
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
