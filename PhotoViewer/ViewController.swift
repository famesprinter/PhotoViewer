//
//  ViewController.swift
//  PhotoViewer
//
//  Created by Kittitat Rodphotong on 5/2/2560 BE.
//  Copyright © 2560 Kittitat Rodphotong. All rights reserved.
//

import UIKit
import SKPhotoBrowser

class ViewController: UIViewController {
    // MARK: IBOutlet
    @IBOutlet weak var img: UIImageView!

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: IBAction
    @IBAction func tapImage() {
        var images = [SKPhoto]()
        let photo = SKPhoto.photoWithImage(img.image!)
        images.append(photo)
        
        let browser = SKPhotoBrowser(photos: images)
        browser.initializePageIndex(0)
        present(browser, animated: true, completion: {})
    }
}

