//
//  XibViewController.swift
//  ViewKit
//
//  Created by Janio Cassio on 10/20/16.
//  Copyright © 2016 Jan Cassio. All rights reserved.
//

import Foundation

public final class XibViewController: UIViewController {
    
    public static func create () -> XibViewController? {
        print("bunble type id: \(Bundle.main.bundleIdentifier))")
        let nib = UINib(nibName: "XibView", bundle: Bundle(identifier: "com.jancassio.iosmodule.ViewKit"))
        return nib.instantiate(withOwner: nil, options: nil).first as? XibViewController
    }
    
    @IBOutlet weak var label: UILabel!
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        label.textColor = .gray
        label.text = "Text Updated @ XibViewController view did load"
    }
}
