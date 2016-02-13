//
//  LineView.swift
//  Line View
//
//  Created by Hamish Knight on 13/02/2016.
//  Copyright © 2016 Redonkulous Apps. All rights reserved.
//

import Foundation
import UIKit

class LineView : UIView {
    
    /// An array of optional UIColors (clearColor is used when nil is provided) defining the color of each segment.
    var colors : [UIColor?] = [UIColor?]() {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    /// An array of CGFloat values to define how much of the view each segment occupies. Should add up to 1.0.
    var values : [CGFloat] = [CGFloat]() {
        didSet {
            self.setNeedsDisplay()
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = UIColor.clearColor()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    
    override func drawRect(rect: CGRect) {
        
        let r = self.bounds // the view's bounds
        let numberOfSegments = values.count // number of segments to render
        
        let ctx = UIGraphicsGetCurrentContext() // get the current context
        
        var cumulativeValue:CGFloat = 0 // store a cumulative value in order to start each line after the last one
        for i in 0..<numberOfSegments {
            
            CGContextSetFillColorWithColor(ctx, colors[i]?.CGColor ?? UIColor.clearColor().CGColor) // set fill color to the given color if it's provided, else use clearColor
            CGContextFillRect(ctx, CGRectMake(0, cumulativeValue*r.size.height, r.size.width, values[i]*r.size.height)) // fill that given segment
            
            cumulativeValue += values[i] // increment cumulative value
        }
        
    }
}