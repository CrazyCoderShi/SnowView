//
//  Snowly.swift
//  SnowViewExample
//
//  Created by 石少庸 on 2016/11/4.
//  Copyright © 2016年 ssy. All rights reserved.
//

import Foundation
import UIKit
import QuartzCore

protocol Snowly {
  
}

extension Snowly where Self: UIView {
  
  func createSnow() {
    let emitter = self.layer as! CAEmitterLayer
    emitter.emitterPosition = CGPoint(x: bounds.size.width/2, y: 0) // 发射粒子的位置
    emitter.emitterSize = bounds.size // 范围
    emitter.emitterShape = kCAEmitterLayerRectangle // 粒子形状
    
    let emitterCell = CAEmitterCell() // 创建粒子
    emitterCell.contents = UIImage(named: "flake")!.cgImage // 载入粒子图片
    emitterCell.birthRate = 400 // 每秒释放多少个粒子
    emitterCell.lifetime = 3.5 // 每个粒子的生命周期
    emitterCell.color = UIColor.white.cgColor // 粒子的颜色
    emitterCell.redRange = 0.0 // RGBA设置
    emitterCell.blueRange = 0.1
    emitterCell.greenRange = 0.0
    emitterCell.alphaRange = 0.5
    emitterCell.velocity = 9.8 // 重力加速度也就是物理里面G
    emitterCell.velocityRange = 550 // 加速范围
    emitterCell.emissionRange = CGFloat(M_PI_2) // 下落是旋转的角度
    emitterCell.emissionLongitude = CGFloat(-M_PI) //
    emitterCell.yAcceleration = 70
    emitterCell.xAcceleration = 0
    emitterCell.scale = 0.33 // 发射比例
    emitterCell.scaleRange = 1.25
    emitterCell.scaleSpeed = -0.25
    emitterCell.alphaRange = 0.5 // 透明度调整
    emitterCell.alphaSpeed = -0.15
    
    emitter.emitterCells = [emitterCell] // 载入
  }
}
