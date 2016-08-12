//
//  SRProgressView.swift
//  SRProgress
//
//  Created by Mac on 16/8/11.
//  Copyright © 2016年 Weapon. All rights reserved.
//

import UIKit
let color=UIColor.blackColor()
let SCREEN=UIScreen.mainScreen().bounds.size
var backGroudView:UIView=UIView.init()
var progress:UIActivityIndicatorView=UIActivityIndicatorView.init()

class SRProgressView:UIView {
    
    func showAView(superView:UIView,style:Int,isBackGround:Bool){
        backGroudView=UIView.init(frame: CGRectMake(0, 0, SCREEN.width, SCREEN.height))
        backGroudView.backgroundColor=UIColor.blackColor()
        backGroudView.alpha=0.3
        progress=UIActivityIndicatorView.init(frame: CGRectMake((SCREEN.width-60)/2, (SCREEN.height-60)/2, 60, 60))

        switch style{
        case 0:
            progress.activityIndicatorViewStyle=UIActivityIndicatorViewStyle.WhiteLarge
            break
        case 1:
            progress.activityIndicatorViewStyle=UIActivityIndicatorViewStyle.White
            break
        case 2:
            progress.activityIndicatorViewStyle=UIActivityIndicatorViewStyle.Gray
            break
        default:
            break
        }
        if isBackGround{
            backGroudView.addSubview(progress)
            superView.addSubview(backGroudView)
        }else{
            superView .addSubview(progress)
        }
        progress.startAnimating()
        
        dispatch_async(dispatch_get_main_queue()) { () -> Void in
            
        }
        
    }
    
    
    func removeAView(){
        backGroudView.removeFromSuperview()
        progress.stopAnimating()
        progress.removeFromSuperview()
    }
    
    
    func showALabel(targetView:UIView,titleText:String,font:CGFloat){
        let tipsLabel=UILabel.init(frame: CGRectMake((SCREEN.width-200)/2, (SCREEN.height-40)/2, 200, 40))
        tipsLabel.text=titleText
        tipsLabel.font=UIFont.systemFontOfSize(font)
        tipsLabel.backgroundColor=UIColor.blackColor()
        tipsLabel.textColor=UIColor.whiteColor()
        tipsLabel.layer.cornerRadius=12
        tipsLabel.clipsToBounds=true
        tipsLabel.alpha=1
        tipsLabel.textAlignment=NSTextAlignment.Center
        targetView.addSubview(tipsLabel)
        UIView.animateWithDuration(1.5, animations: { () -> Void in
            tipsLabel.alpha=0
            
            }) { (finish:Bool) -> Void in
                tipsLabel.removeFromSuperview()
        }
        
        
        
    }
    
    func onClick(){
        print("clicliclciclcicliclick")
        
    }
    
    
    func backClick(){
        print("bbbb")
        
    }
    
}




