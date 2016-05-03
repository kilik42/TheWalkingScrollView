//
//  ViewController.swift
//  TheWalkingScrollView
//
//  Created by marvin evins on 4/26/16.
//  Copyright © 2016 marvin evins. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!

    let WIDTH: CGFloat = 240
    let HEIGHT: CGFloat = 361
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        for var x = 1; x <= 5; x++ {
            
            let img = UIImage(named: "\(x)")
            
            let imgView = UIImageView(image: img)
            
            scrollView.addSubview(imgView)
            imgView.frame = CGRectMake(-WIDTH + (WIDTH * CGFloat(x)), 270, WIDTH, HEIGHT)
        }
        
        scrollView.contentSize = CGSizeMake(WIDTH * 5, scrollView.frame.size.height)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

