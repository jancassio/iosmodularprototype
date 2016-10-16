//
//  AppView.swift
//  ViewKit
//
//  Created by Jan Cássio on 16/10/16.
//  Copyright © 2016 Jan Cassio. All rights reserved.
//

import Foundation
import UIKit
import ExtensionsKit

public final class AppView: UIView {
    
    private var shape: CAShapeLayer?
    private var fillColor: UIColor
    
    public init(frame: CGRect, color: UIColor) {
        fillColor = color
        super.init(frame: frame.square(by: .MinValue))
    }
    
    public required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        
        if shape == nil {
            let ball = UIBezierPath(ovalIn: bounds)
            shape = CAShapeLayer()
            shape?.path = ball.cgPath
            shape?.fillColor = fillColor.cgColor
            
            layer.addSublayer(shape!)
        }
    }
}
