//
//  ViewController.swift
//  LessonTwo
//
//  Created by 王成龙 on 2018/1/29.
//  Copyright © 2018年 com.charlieKingStudios. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //UIView 创建
        let rect1 = CGRect(x:30,y:60,width:200,height:200)
        let view1 = UIView(frame:rect1)
        view1.backgroundColor = UIColor.green
        self.view.addSubview(view1)
        //加上边框 效果
        view1.layer.borderWidth = 10
        view1.layer.borderColor = UIColor.orange.cgColor
        //圆角
        view1.layer.cornerRadius = 5
        
        //添加shadow
        view1.layer.shadowColor = UIColor.brown.cgColor
        //阴影的横向 和 纵向的偏移量
        view1.layer.shadowOffset = CGSize(width:10.0,height:10.0)
        //阴影透明度
        view1.layer.shadowOpacity = 0.45
        //设置视图的阴影半径大小
        view1.layer.shadowRadius = 5.0
        
        //创建button
        let btn = UIButton(frame:CGRect(x:20,y:320,width:80,height:80))
        btn.backgroundColor = UIColor.darkGray
        btn.setTitle("add", for: UIControlState())
        btn.addTarget(self, action: #selector(ViewController.addView(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn)
        
        let btn2 = UIButton(frame:CGRect(x:120,y:320,width:80,height:80))
        btn2.backgroundColor = UIColor.yellow
        btn2.setTitle("change", for: UIControlState())
        btn2.addTarget(self, action: #selector(ViewController.change(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn2)
        
        let btn3 = UIButton(frame:CGRect(x:220,y:320,width:80,height:80))
        btn3.backgroundColor = UIColor.red
        btn3.setTitle("change", for: UIControlState())
        btn3.addTarget(self, action: #selector(ViewController.remove(_:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(btn3)
        
        
        
        
//        渐变色
        let rect2 = CGRect(x:30,y:20,width:200,height:200)
        let view2 = UIView(frame:rect2)
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view2.frame
        
        let fromColor = UIColor.yellow.cgColor
        let minColor = UIColor.red.cgColor
        let maxColor = UIColor.purple.cgColor
        
        gradientLayer.colors = [fromColor,minColor,maxColor]
        view2.layer.addSublayer(gradientLayer)
        self.view.addSubview(view2)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    @objc func addView(_ sender:UIButton) {
        let rect = CGRect(x:60,y:80,width:200,height:200)
        let view = UIView(frame:rect)
        view.tag = 1
        view.backgroundColor = UIColor.orange
        self.view.addSubview(view)
    }
    @objc func change(_ sender:UIButton) {
        let view = self.view.viewWithTag(1)
        self.view.sendSubview(toBack: view!)
    }
    @objc func remove(_ sender:UIButton) {
        let view = self.view.viewWithTag(1)
        view?.removeFromSuperview()
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

