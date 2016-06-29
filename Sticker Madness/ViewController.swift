//
//  ViewController.swift
//  Sticker Madness
//
//  Created by Jeremy Lin on 6/28/16.
//  Copyright © 2016 Jeremy Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var mustacheBtnActive = false
    var eyeBtnActive = false
    var hatBtnActive = false
    var bowtieBtnActive = false
    
    let mustache = Sticker(image: UIImage(named: "mustache2"))
    let eyeGlasses = Sticker(image: UIImage(named: "eyeglasses1"))
    let hat = Sticker(image: UIImage(named: "hat1"))
    let bowtie = Sticker(image: UIImage(named: "bowtie"))
    

    var photoTakingHelper: PhotoTakingHelper?
    
    @IBOutlet weak var homePhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }
    
    @IBAction func photoButtonPressed(sender: AnyObject) {
        photoTakingHelper = PhotoTakingHelper(viewController: self, callback: { (image) in
            self.homePhoto.image = image
        })
    }
    
    @IBAction func mustacheButtonClicked(sender: AnyObject) {
        self.mustache.frame = CGRect(x: self.view.frame.width / 2 - 100, y: self.view.frame.height / 2 - 50, width: 200, height: 100)
        
        if !mustacheBtnActive {
            self.view.addSubview(mustache)
            mustacheBtnActive = true
        } else {
            mustache.removeFromSuperview()
            mustacheBtnActive = false
        }
    }
    
    @IBAction func eyeButtonClicked(sender: AnyObject) {
        self.eyeGlasses.frame = CGRect(x: self.view.frame.width / 2 - 100 , y: self.view.frame.height / 2 - 125, width: 200, height: 100)
        
        if !eyeBtnActive {
            self.view.addSubview(eyeGlasses)
            eyeBtnActive = true
        } else {
            eyeGlasses.removeFromSuperview()
            eyeBtnActive = false
        }
    }
    
    @IBAction func hatButtonClicked(sender: AnyObject) {
        self.hat.frame = CGRect(x: self.view.frame.width / 2 - 100 , y: self.view.frame.height / 2 - 200, width: 200, height: 100)
        
        if !hatBtnActive {
            self.view.addSubview(hat)
            hatBtnActive = true
        } else {
            hat.removeFromSuperview()
            hatBtnActive = false
        }
    }
    
    @IBAction func bowTieButtonClicked(sender: AnyObject) {
        self.bowtie.frame = CGRect(x: self.view.frame.width / 2 - 100, y: self.view.frame.height / 2 , width: 200, height: 100)
        
        if !bowtieBtnActive {
            self.view.addSubview(bowtie)
            bowtieBtnActive = false
        } else {
            bowtie.removeFromSuperview()
            bowtieBtnActive = false
        }
    }
}















