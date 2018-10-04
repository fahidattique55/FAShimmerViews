//
//  FAShimmerView.swift
//  FAShimmerViews
//
//  Created by Fahad Attique on 01/10/2018.
//  Copyright © 2018 Fahid Attique. All rights reserved.
//

import UIKit

class FAShimmerView: UIView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureAndStartShimmering()
    }
}






class FAShimmerImageView: UIImageView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureAndStartShimmering()
    }
}





class FAShimmerButtonView: UIButton {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureAndStartShimmering()
    }
}





class FAShimmerLabelView: UILabel {
    
    override func awakeFromNib() {
        super.awakeFromNib()
        configureAndStartShimmering()
    }
}









extension UIView {
    
    fileprivate func configureAndStartShimmering() {
        
        backgroundColor = UIColor(red: 170/255, green: 170/255, blue: 170/255, alpha: 0.18)
        startShimmering()
    }
}
















extension UIView {
    
    
    func startShimmering() {
        
        let light = UIColor(white: 0, alpha: 0.1).cgColor
        let dark = UIColor.black.cgColor
        
        let gradient: CAGradientLayer = CAGradientLayer()
        gradient.colors = [dark, light, dark]
        gradient.frame = CGRect(x: -bounds.size.width, y: 0, width: 3 * bounds.size.width, height: bounds.size.height)
        
        gradient.startPoint = CGPoint(x: 0.0, y: 0.5)
        gradient.endPoint   = CGPoint(x: 1.0, y: 0.525)
        gradient.locations  = [0.4, 0.5, 0.6]
        
        layer.mask = gradient
        
        let animation: CABasicAnimation = CABasicAnimation.init(keyPath: "locations")
        animation.fromValue = [0.0, 0.1, 0.2]
        animation.toValue   = [0.8, 0.9, 1.0]
        
        animation.duration = 1.5
        animation.repeatCount = Float.greatestFiniteMagnitude
        animation.isRemovedOnCompletion = false
        
        gradient.add(animation, forKey: "shimmer")
    }

    
    
    func stopShimmering() {
        
        layer.mask = nil
    }
}
