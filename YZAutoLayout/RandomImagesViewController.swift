//
//  RandomImagesViewController.swift
//  YZAutoLayout
//
//  Created by 未魔 on 2018/8/20.
//  Copyright © 2018年 未魔. All rights reserved.
//

import UIKit

class RandomImagesViewController: UIViewController {

    @IBOutlet weak var firstImageView: UIImageView!
    
    @IBOutlet weak var secondImageView: UIImageView!
    
    @IBOutlet weak var thirdImageView: UIImageView!
    
    @IBOutlet weak var firstImageWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var secondImageWidthConstraint: NSLayoutConstraint!
    
    @IBOutlet weak var thirdImageWidthConstraint: NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
//        self.firstImageView.tintColorDidChange()
        self.firstImageView.image = UIImage.init(named: "number_1_white")
//        self.firstImageWidthConstraint.constant = 100
        self.thirdImageView.tintColorDidChange()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    @IBAction func firstSwitchValueChanged(_ sender: UISwitch) {
        print("\(self.firstImageView.tintColor)")

        if sender.isOn {
            firstImageWidthConstraint.constant = 100
        } else {
            firstImageWidthConstraint.constant = 0
        }
    }
    
    @IBAction func secondSwitchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            secondImageWidthConstraint.constant = 100
        } else {
            secondImageWidthConstraint.constant = 0
        }
    }
    
    @IBAction func thirdSwitchValueChanged(_ sender: UISwitch) {
        if sender.isOn {
            thirdImageWidthConstraint.constant = 100
        } else {
            thirdImageWidthConstraint.constant = 0
        }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    override func updateViewConstraints() {
        super.updateViewConstraints()
        print("\(self.firstImageView.tintColor.cgColor)")
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    
}
