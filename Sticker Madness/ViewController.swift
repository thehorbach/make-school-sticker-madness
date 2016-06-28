//
//  ViewController.swift
//  Sticker Madness
//
//  Created by Jeremy Lin on 6/28/16.
//  Copyright © 2016 Jeremy Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
}

