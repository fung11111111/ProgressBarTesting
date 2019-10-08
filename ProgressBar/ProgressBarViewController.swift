//
//  ProgressBarViewController.swift
//  ProgressBar
//
//  Created by LAM Fung on 28/9/2019.
//  Copyright © 2019 LAM Fung. All rights reserved.
//

import UIKit

 let shapeLayer = CAShapeLayer()

class ProgressBarViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

      
        let trackLayer = CAShapeLayer()
        let center = view.center
        let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi / 2, endAngle: 2 * CGFloat.pi, clockwise: true)
        trackLayer.path = circularPath.cgPath
        trackLayer.fillColor = UIColor.clear.cgColor
        trackLayer.lineCap = CAShapeLayerLineCap.round
       
        trackLayer.strokeColor = UIColor.darkGray.cgColor
        trackLayer.lineWidth = 10
        
        view.layer.addSublayer(trackLayer)
        
        
        
    //    let circularPath = UIBezierPath(arcCenter: center, radius: 100, startAngle: -CGFloat.pi / 2, //endAngle: 2 * CGFloat.pi, clockwise: true)
        shapeLayer.path = circularPath.cgPath
        shapeLayer.fillColor = UIColor.clear.cgColor
        shapeLayer.lineCap = CAShapeLayerLineCap.round
        shapeLayer.strokeEnd = 0
        shapeLayer.strokeColor = UIColor.cyan.cgColor
        shapeLayer.lineWidth = 10
        
        
        
        view.layer.addSublayer(shapeLayer)
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleTap)))
    }
    
    @objc private func handleTap(){
        print("is a tap")
        let basicAnimation = CABasicAnimation(keyPath: "strokeEnd")
        
        basicAnimation.toValue = 1
        basicAnimation.duration = 2
        
        basicAnimation.fillMode = CAMediaTimingFillMode.forwards
        basicAnimation.isRemovedOnCompletion = false
        
        shapeLayer.add(basicAnimation, forKey: "urBasicAnimation")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
