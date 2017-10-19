//
//  RoudedView.swift
//  Mobilization2017Demo
//
//  Created by Jakub Mazur on 19/10/2017.
//  Copyright © 2017 Jakub Mazur. All rights reserved.
//

#if os(macOS)
    import AppKit
    public typealias View = NSView
    public typealias Color = NSColor
#elseif os(iOS)
    import UIKit
    public typealias View = UIView
    public typealias Color = UIColor
#endif

public class RoudedView: View {
    
    public override func awakeFromNib() {
        super.awakeFromNib()
        drawBorder(layer: layer)
    }
    
    func drawBorder(layer: CALayer?) {
        guard let myLayer = layer else { return }
        myLayer.borderColor = Color.red.cgColor
        myLayer.borderWidth = 10
        myLayer.add(viewAnimation(), forKey: "backgroundColor")
    }
    
    func viewAnimation() -> CABasicAnimation {
        let animation = CABasicAnimation()
        animation.keyPath = "backgroundColor"
        animation.fromValue = Color.red.cgColor
        animation.toValue = Color.blue.cgColor
        animation.duration = 5
        animation.repeatCount = .infinity
        return animation
    }
}
