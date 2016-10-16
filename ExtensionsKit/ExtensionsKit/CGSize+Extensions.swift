//
//  CGSize+Extensions.swift
//  ExtensionsKit
//
//  Created by Jan Cássio on 16/10/16.
//  Copyright © 2016 Jan Cassio. All rights reserved.
//

import CoreGraphics

public extension CGSize {
    
    public func half () -> CGSize {
        return CGSize(width: width * 0.5, height: height * 0.5)
    }
    
}
