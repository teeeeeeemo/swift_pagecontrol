//
//  ViewController.swift
//  PageControl
//
//  Created by Lucia on 2017. 2. 22..
//  Copyright © 2017년 Lucia. All rights reserved.
//

import UIKit

var images = [ "까보.jpg", "콜로세움.jpg", "거짓말.jpg", "바티칸.jpg", "알이탈리아.jpg", "스페인계단.jpg" ]

class ViewController: UIViewController {

    @IBOutlet weak var imgView: UIImageView!
  
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        pageControl.numberOfPages = images.count
        pageControl.currentPage = 0
        pageControl.pageIndicatorTintColor = UIColor.green
        pageControl.currentPageIndicatorTintColor = UIColor.red
        imgView.image = UIImage(named: images[0])
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func pageChanged(_ sender: UIPageControl) {
        imgView.image = UIImage(named: images[pageControl.currentPage])
    }
   
}

