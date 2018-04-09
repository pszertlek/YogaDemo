//
//  ViewController.swift
//  YogaDemo
//
//  Created by apple on 2018/4/8.
//  Copyright © 2018年 Pszertlek. All rights reserved.
//

import UIKit
import YogaKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.yoga.isEnabled = true
        view.yoga.alignItems = .center
        view.yoga.justifyContent = .center
        
        let contentView = UIView(frame: CGRect(x: 0, y: 100, width: 300, height: 300))
        contentView.yoga.isEnabled = true
        contentView.yoga.alignItems = .stretch
        contentView.yoga.alignContent = .stretch
        contentView.yoga.flexDirection = .row
        contentView.yoga.justifyContent = .center
        contentView.yoga.marginTop = 10
        contentView.yoga.width = 200
        contentView.yoga.height = 50
        contentView.backgroundColor = UIColor.yellow
        
        
        let view1 = UILabel()
        view1.yoga.isEnabled = true
        view1.backgroundColor = UIColor.red
        view1.textAlignment = .center
        view1.text = "1"
        view1.yoga.flexGrow = 1
        let view2 = UILabel()
        view2.yoga.isEnabled = true
        view2.yoga.flexGrow = 1
        view2.backgroundColor = UIColor.blue
        view2.text = "2"
        view2.textAlignment = .center
//        let view3 = UIView()
//        let view4 = UIView()
        view.addSubview(contentView)
        contentView.addSubview(view1)
        contentView.addSubview(view2)
        
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        view.yoga.applyLayout()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

