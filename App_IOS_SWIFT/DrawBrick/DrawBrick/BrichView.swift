//
//  BrichView.swift
//  DrawBrick
//
//  Created by Tuấn Anh on 07/09/2022.
//

import UIKit

class BrichView: UIView {
    
    var radius: CGFloat = 0.0
    var fillColor: UIColor!
    
    var shapeLayer: CAShapeLayer!
    convenience init(startPoin: CGPoint, radius: CGFloat , fillColor: UIColor) {
        self.init(frame: CGRect(x: startPoin.x, y: startPoin.y, width: radius*2, height: radius*2))
        
        self.radius = radius
        self.fillColor = UIColor.yellow
    }
    override func draw(_ rect: CGRect) {
      
        if (shapeLayer == nil) {
            shapeLayer = CAShapeLayer()
            shapeLayer.path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: self.frame.size.width,
                                                               height: self.frame.size.height),
                                           cornerRadius: 0).cgPath
            shapeLayer.fillColor = fillColor.cgColor
            self.layer.addSublayer(shapeLayer)
            // Kích thuóc viên gạch brickView
            let L = self.frame.size.width
            let height = L / 7 // x = L/10 là đoạn kich thuóc chiều cao của viên gạch đó
            
            //draw top Layer
            let topLayer = CAShapeLayer()
            let pathTop = UIBezierPath()
            pathTop.move(to: CGPoint(x: 0, y: 0))
            pathTop.addLine(to: CGPoint(x: L, y: 0))
            pathTop.addLine(to: CGPoint(x: L - height, y: height))
            pathTop.addLine(to: CGPoint(x: height, y: height))
            
            topLayer.path = pathTop.cgPath
            topLayer.fillColor = UIColor.blue.cgColor
            topLayer.opacity = 0.3
            shapeLayer.insertSublayer(topLayer, at: 0)
            
            //draw bot Layer
               let botLayer = CAShapeLayer()
               let pathbot = UIBezierPath()
               pathbot.move(to: CGPoint(x: L, y: L))
               pathbot.addLine(to: CGPoint(x: 0, y: L))
               pathbot.addLine(to: CGPoint(x: height, y: L-height))
               pathbot.addLine(to: CGPoint(x: L-height, y: L-height))
               
               botLayer.path = pathbot.cgPath
            botLayer.fillColor = UIColor.orange.cgColor
               botLayer.opacity = 0.5
               shapeLayer.insertSublayer(botLayer, at: 0)
               
            
            //draw right Layer
            let rightLayer = CAShapeLayer()
            let pathright = UIBezierPath()
            pathright.move(to: CGPoint(x: L, y: 0))
            pathright.addLine(to: CGPoint(x: L, y: L))
            pathright.addLine(to: CGPoint(x: L - height, y: L - height))
            pathright.addLine(to: CGPoint(x: L - height, y: height))
            
            rightLayer.path = pathright.cgPath
            rightLayer.fillColor = UIColor.green.cgColor
            rightLayer.opacity = 0.5
            shapeLayer.insertSublayer(rightLayer, at: 0)
            
         
            // draw left Layer
            let leftLayer = CAShapeLayer()
            let pathLeft = UIBezierPath()
            pathLeft.move(to: CGPoint(x: 0, y: 0))
            pathLeft.addLine(to: CGPoint(x: 0, y: L))
            pathLeft.addLine(to: CGPoint(x: height, y:  L-height))
            pathLeft.addLine(to: CGPoint(x:  height, y: height))

            leftLayer.path = pathLeft.cgPath
            leftLayer.fillColor = UIColor.red.cgColor
            leftLayer.opacity = 0.5
            shapeLayer.insertSublayer(leftLayer, at: 0)
            
            
        }
    }
    
    
}
