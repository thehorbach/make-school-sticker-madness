//
//  Sticker.swift
//  Sticker Madness
//
//  Created by Vyacheslav Horbach on 29/06/16.
//  Copyright © 2016 Jeremy Lin. All rights reserved.
//

import UIKit

class Sticker: UIImageView, UIGestureRecognizerDelegate {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override init(image: UIImage?) {
        
        super.init(image: image)
        self.image = image
        self.userInteractionEnabled = true
        
        let pan = UIPanGestureRecognizer(target: self, action: #selector(self.handlePan(_:)))
        pan.delegate = self
        self.addGestureRecognizer(pan)
        
        let rotate = UIRotationGestureRecognizer(target: self, action: #selector(self.handleRotation(_:)))
        rotate.delegate = self
        self.addGestureRecognizer(rotate)
        
        let pinch = UIPinchGestureRecognizer(target: self, action: #selector(self.handlePinch(_:)))
        pinch.delegate = self
        self.addGestureRecognizer(pinch)
        
    }
    
    required init(coder aDecoder: NSCoder) {
        
        super.init(image: nil)
        
    }
    
    func handlePan(panGestureRecognizer: UIPanGestureRecognizer!) {
        if panGestureRecognizer.state == .Changed || panGestureRecognizer.state == .Began {
            let translation = panGestureRecognizer.translationInView(panGestureRecognizer.view) //get the spot it is now
            if let view = panGestureRecognizer.view {
                let affinerTransformTranslate = CGAffineTransformTranslate(view.transform, translation.x, translation.y)
                view.transform = affinerTransformTranslate
                panGestureRecognizer.setTranslation(CGPointZero, inView: view)
            } else {
                print("No view")
            }
        }
    }
    
    func handleRotation(rotationGestureRecognizer: UIRotationGestureRecognizer) {
        if let view = rotationGestureRecognizer.view {
            view.transform = CGAffineTransformRotate(view.transform, rotationGestureRecognizer.rotation)
            rotationGestureRecognizer.rotation = 0
        }
    }
    
    func handlePinch(pinchGestureRecognizer: UIPinchGestureRecognizer) {
        if let view = pinchGestureRecognizer.view {
            view.transform = CGAffineTransformScale(view.transform, pinchGestureRecognizer.scale, pinchGestureRecognizer.scale)
            pinchGestureRecognizer.scale = 1
        }
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer) -> Bool {
        return true
    }
}









