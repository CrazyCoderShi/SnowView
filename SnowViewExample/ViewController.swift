//
//  ViewController.swift
//  SnowViewExample
//
//  Created by 石少庸 on 2016/11/4.
//  Copyright © 2016年 ssy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  var snow: SnowView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    snow = SnowView(frame: CGRect(x: -150, y: -100, width: 300, height: 50))
    let snowClipView = UIView(frame: view.frame.offsetBy(dx: 0, dy: 0))
    snowClipView.clipsToBounds = true
    snowClipView.addSubview(snow)
    view.addSubview(snowClipView)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

