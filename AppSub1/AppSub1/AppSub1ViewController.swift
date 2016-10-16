//
//  AppSub1ViewController.swift
//  AppSub1
//
//  Created by Jan Cássio on 15/10/16.
//  Copyright © 2016 Jan Cassio. All rights reserved.
//

import UIKit
import ViewKit
import ExtensionsKit

final class AppSub1ViewController: UIViewController {
    
    var ball: AppView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var frame = view.frame
        frame.origin = frame.center(in: view.frame)
        frame.size = frame.size.half()
        
        ball = AppView(frame: frame, color: .red)
        ball?.center = view.center
        ball?.transform = CGAffineTransform(scaleX: 0.00001, y: 0.00001)
        ball?.alpha = 0
        
        view.addSubview(ball!)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animate(
            withDuration: 2.1,
            delay: 0.1,
            usingSpringWithDamping: 0.5,
            initialSpringVelocity: 0.1,
            options: .curveEaseOut,
            animations: {
                self.ball?.transform = CGAffineTransform.identity
                self.ball?.alpha = 1.0
            },
            completion: { done in }
        )
    }
}

