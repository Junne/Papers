//
//  GradientView.swift
//  Papers
//
//  Created by Junne on 1/16/16.
//  Copyright © 2016 Junne. All rights reserved.
//

import UIKit

class GradientView: UIView {

    lazy private var gradientLayer: CAGradientLayer = {
        let layer = CAGradientLayer()
        layer.colors = [UIColor.clearColor().CGColor, UIColor(white: 0.0, alpha: 0.75).CGColor]
        layer.locations = [NSNumber(float: 0.0), NSNumber(float: 1.0)]
        return layer
    } ()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor.clearColor()
        layer.addSublayer(gradientLayer)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.frame = bounds
    }
}
