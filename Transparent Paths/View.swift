//
//  View.swift
//  Transparent Paths
//
//  Created by Hamish Knight on 01/03/2016.
//  Copyright © 2016 Redonkulous Apps. All rights reserved.
//

import UIKit

class CustomView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        opaque = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override func drawRect(rect: CGRect) {
        
        let clippingPath = UIBezierPath()
        
        let context = UIGraphicsGetCurrentContext() // get your current context
        
        // draw your background color
        UIColor.greenColor().set();
        CGContextFillRect(context, bounds)
        
        CGContextSaveGState(context) // save the current state
        
        CGContextSetBlendMode(context, .DestinationOut) // change blend mode to DestinationOut (R = D * (1-Sa))
        
        // do 'transparent' drawing
        
        UIColor.whiteColor().set();
        clippingPath.moveToPoint(CGPoint(x: 10, y: CGRectGetHeight(self.bounds) / 2))
        clippingPath.addLineToPoint(CGPoint(x: CGRectGetWidth(self.bounds) - 10, y: CGRectGetHeight(self.bounds) / 2))
        clippingPath.lineWidth = 6
        clippingPath.lineCapStyle = .Round
        clippingPath.stroke()
        
        CGContextRestoreGState(context) // restore state of context
        
        // do further drawing if needed
    }
}
