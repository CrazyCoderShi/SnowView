//
//  SnowView.swift
//  SnowViewExample
//
//  Created by 石少庸 on 2016/11/4.
//  Copyright © 2016年 ssy. All rights reserved.
//

import UIKit
import QuartzCore

// 实现一个粒子效果,模拟下雪场景

class SnowView: UIView, Snowly {
  
  override init(frame: CGRect) {
    super.init(frame: frame)
    
    createSnow()
  }
  
  required init?(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
  
  // 这个方法一定要重写
  override class var layerClass: AnyClass {
    return CAEmitterLayer.self
  }
}
