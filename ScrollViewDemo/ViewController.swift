//
//  ViewController.swift
//  ScrollViewDemo
//
//  Created by weng Higgins on 2019-10-09.
//  Copyright © 2019 weng Higgins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ScrollView: UIScrollView!
    let imagesArray = ["image1", "image2", "image3"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for i in 0..<imagesArray.count{
            let imageView = UIImageView()
            imageView.contentMode = .scaleToFill
            imageView.image = UIImage(named: imagesArray[i])
            let xPos = CGFloat(i)*self.view.bounds.size.width
            imageView.frame = CGRect(x: xPos, y: 0, width: view.frame.size.width, height: ScrollView.frame.size.height)
            ScrollView.contentSize.width = view.frame.size.width*CGFloat(i+1)
            ScrollView.addSubview(imageView)
        }
    }

}

