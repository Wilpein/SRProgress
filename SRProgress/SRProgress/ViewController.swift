//
//  ViewController.swift
//  SRProgress
//
//  Created by Mac on 16/8/11.
//  Copyright © 2016年 Weapon. All rights reserved.
//

import UIKit
let colord=UIColor .orangeColor()
let progresss=SRProgressView.init()
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let btn1=UIButton.init(frame: CGRectMake(100, 100, 40, 40))
        btn1.backgroundColor=UIColor.redColor()
        let btn2=UIButton.init(frame: CGRectMake(100, 150, 40, 40))
        btn2.backgroundColor=UIColor.blueColor()
        let btn3=UIButton.init(frame: CGRectMake(100, 200, 40, 40))
        btn3.backgroundColor=UIColor.greenColor()
        
        self.view.addSubview(btn1)
        self.view.addSubview(btn2)
        self.view.addSubview(btn3)
        
        btn1.setTitle("click1", forState: UIControlState.Normal)
        btn2.setTitle("click2", forState: UIControlState.Normal)
        btn3.setTitle("click3", forState: UIControlState.Normal)
        
        
        btn1.addTarget(progresss, action:Selector("backClick"), forControlEvents:UIControlEvents.TouchUpInside)
        btn2.addTarget(self, action: Selector("onClick"), forControlEvents: UIControlEvents.TouchUpInside)
        btn3.addTarget(self, action: "secClick", forControlEvents: UIControlEvents.TouchUpInside)
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    func onClick(){
    
        print("toutoutouch")
        
        progresss.showAView(self.view, style: 0, isBackGround: true)
        
    }
    
    func secClick(){
    
        progresss.showALabel(self.view, titleText: "江南皮革厂", font: 13)
    }
    
    
    func backClick(){
    
        self.view.backgroundColor=UIColor.whiteColor()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

