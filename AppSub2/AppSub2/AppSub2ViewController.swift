//
//  AppSub2ViewController.swift
//  AppSub2
//
//  Created by Jan Cássio on 15/10/16.
//  Copyright © 2016 Jan Cassio. All rights reserved.
//

import UIKit
import ViewKit
import ExtensionsKit
import RxSwift

class AppSub2ViewController: UIViewController {

    var ball: AppView?
    var ball2: AppView?
    var disposeBag = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let a = Bundle.allBundles
        print(a)
        
        var frame = view.frame
        frame.origin = frame.center(in: view.frame)
        frame.size = frame.size.half()
        frame.size.rx_something().subscribe(
            onNext: { success in print("Success \(success)") }
            ).addDisposableTo(disposeBag)
        
        ball = AppView(frame: frame, color: .red)
        ball?.center = view.center
        ball?.transform = CGAffineTransform(scaleX: 0.00001, y: 0.00001)
        ball?.alpha = 0
        
        frame = CGRect(x: 0, y: 0, width: 250.0, height: 250.0)
        ball2 = AppView(frame: frame, color: .green)
        ball2?.center = view.center
        ball2?.transform = CGAffineTransform(scaleX: 0.00001, y: 0.00001)
        ball2?.alpha = 0
        
        view.addSubview(ball!)
        view.addSubview(ball2!)
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
            completion: { done in
                UIView.animate(
                    withDuration: 2.1,
                    delay: 0.1,
                    usingSpringWithDamping: 0.5,
                    initialSpringVelocity: 0.1,
                    options: .curveEaseOut,
                    animations: {
                        self.ball2?.transform = CGAffineTransform.identity
                        self.ball2?.alpha = 1.0
                    },
                    completion: { done in
                        if let controller = XibViewController.create() {
                            self.present(controller, animated: true, completion: nil)
                        }
                    }
                )
            }
        )
    }
}

