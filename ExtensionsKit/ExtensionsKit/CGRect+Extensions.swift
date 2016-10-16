//
//  CGRect+Extensions.swift
//  ExtensionsKit
//
//  Created by Jan Cássio on 16/10/16.
//  Copyright © 2016 Jan Cassio. All rights reserved.
//

import CoreGraphics



/// Options to create squared frames.
///
/// - None:     Just keep the size as the same.
/// - Width:    Uses width value to compose frame's size.
/// - Height:   Uses height value to compose frame's size.
/// - MinValue: Uses lowermost size value to compose frame's size.
/// - MaxValue: Uses higher size value to compose frame's size.
public enum CGRectSquareByOptions {
    case None
    case Width
    case Height
    case MinValue
    case MaxValue
}


// MARK: - Extension for CGRect
public extension CGRect {
    
    
    /// Gets the center point of rect relative by other one.
    ///
    /// - parameter rect: A rect to calculate relative center
    ///
    /// - returns: A point in center of relative rect based on actual rect.
    public func center (in rect: CGRect) -> CGPoint {
        let x = (rect.width - width) * 0.5
        let y = (rect.height - height) * 0.5
        
        return CGPoint(x: x, y: y)
    }
    
    
    
    /// Creates a squared size frame by actual size and selected square's size
    /// option.
    ///
    /// - parameter sizeBy: An option to resize the frame's size by.
    ///
    /// - returns: A squared frame.
    public func square (by sizeBy: CGRectSquareByOptions) -> CGRect {
        let size: CGSize
        
        switch sizeBy {
        case .Width:
            size = CGSize(width: width, height: width)
            break
            
        case .Height:
            size = CGSize(width: height, height: height)
            break
            
        case .MinValue:
            let value = min(width, height)
            size = CGSize(width: value, height: value)
            break
            
        case .MaxValue:
            let value = max(width, height)
            size = CGSize(width: value, height: value)
            break
            
        default:
            size = self.size
        }
        
        return CGRect(origin: origin, size: size)
    }
    
}
