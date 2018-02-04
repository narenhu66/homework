//
//  ViewController.swift
//  MyfirstApp1
//
//  Created by 娜仁乎 on 2018/01/27.
//  Copyright © 2018年 娜仁乎. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myslider: UISlider!
    
    @IBOutlet weak var scorelable: UILabel!
    @IBOutlet weak var targetlable: UILabel!
    var currentValue: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        currentValue = 1 + Int(arc4random_uniform(100))
        // 不确定类型，所以转换成，相等于targetlable.text = String(currentValue)
        targetlable.text = "\(currentValue)"
        targetlable.textColor = UIColor.red
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonclick(_ sender: Any) {
        print("hello world")
        
        let alert = UIAlertController(title: "hello", message: "当前值:\(lroundf(myslider.value))!\n回标值是\", preferredStyle: .alert)
        let action = UIAlertAction(title: "好", style: .default, handler:nil)
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
    }
    
    @IBAction func sliderValue(_ sender: UISlider) {
        print("slider is: \(sender.value)")
        
    }
    func update(<#parameters#>) -> <#return type#> {
        <#function body#>
    }
}

