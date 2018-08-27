//
//  AutoScrollViewController.swift
//  YZAutoLayout
//
//  Created by 未魔 on 2018/8/24.
//  Copyright © 2018年 未魔. All rights reserved.
//

import UIKit

class AutoScrollViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet weak var autoScrollView: UIScrollView!
    
    @IBOutlet weak var autoPageControl: UIPageControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let width = UIScreen.main.bounds.width
        let height = width / 16 * 9
        
        for i in 0...4 {
            let imageView = UIImageView(frame: CGRect(x: width * CGFloat(i), y: 0, width: width, height: height))
            
            var imageName = "scenery_"
            switch i {
            case 0:
                imageName += "3"
            case 4:
                imageName += "1"
            default:
                imageName += i.description
            }
            
            imageView.image = UIImage(named: imageName)
            
            imageView.contentMode = .scaleAspectFill
            imageView.clipsToBounds = true
            imageView.isUserInteractionEnabled = true
            autoScrollView.addSubview(imageView)
        }
        
        autoScrollView.contentSize = CGSize(width: width * 5, height: height)
        self.autoScrollView.contentOffset = CGPoint(x: width, y: 0)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == self.autoScrollView {
            
            let width = UIScreen.main.bounds.width
            let offsetX = scrollView.contentOffset.x
            
            if offsetX == 0 {
                scrollView.contentOffset = CGPoint(x: width * CGFloat(3), y: 0)
            }
            if offsetX == width * CGFloat(3 + 1) {
                scrollView.contentOffset = CGPoint(x: width, y: 0)
            }
            
            let currentPage = scrollView.contentOffset.x / width - 0.5
            print("currentPage is \(Int(currentPage))")
            self.autoPageControl.currentPage = Int(currentPage)
        }
    }

}
