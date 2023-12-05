//
//  ViewController.swift
//  codePath
//
//  Created by Nasif Zaman on 12/4/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var label1: UILabel!
    
    @IBOutlet weak var label2: UILabel!
    
    @IBOutlet weak var label3: UILabel!
    
    
    @IBOutlet weak var button1: UIButton!
    
    @IBAction func changeBackgroundColor() {
        let (randomColor, orandomColor)=changeColor()
        view.backgroundColor=randomColor
        label1.textColor=orandomColor
        label2.textColor=orandomColor
        label3.textColor=orandomColor
    }
    

    func  changeColor()->(UIColor, UIColor){
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        return (UIColor(red:red, green:green, blue:blue, alpha: 0.5), UIColor(red:1-red/2, green:1-green/2, blue:1-blue/2, alpha: 0.5))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

