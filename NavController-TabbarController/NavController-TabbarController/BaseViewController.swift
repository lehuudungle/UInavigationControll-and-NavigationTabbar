//
//  BaseViewController.swift
//  NavController-TabbarController
//
//  Created by Vinh The on 7/16/16.
//  Copyright © 2016 Vinh The. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    // MARK: Update Contraints
    
    var tranparent : Bool?{
        didSet{
            if tranparent == true{
                setTranparentForNavigationBar()
            }
        }
        
    }
    var setTitleForBackButton: String?{
        didSet{
            guard let title  = setTitleForBackButton else{return}  // tuc la kiểm tra xem setTitleForBackButton có bằng nil hay ko
            
            setTitleForBackButton(title)
            print("goi bien nay")
        }
    }
    func setTranparentForNavigationBar() {
        navigationController?.navigationBar.setBackgroundImage(UIImage(), forBarMetrics:.Default)
        navigationController?.navigationBar.shadowImage = UIImage()
    }
    func setTitleForBackButton(title: String) {
        print("goi phuong thuc")
        let backButton = UIBarButtonItem()
        backButton.title = title
        navigationItem.backBarButtonItem = backButton

    }
    
    func updateContraint(contraint : NSLayoutConstraint!){
        print(contraint.constant)
        
        let scale = UIScreen.mainScreen().bounds.size.height / 667
        
        contraint.constant = contraint.constant * scale
        
        print(contraint.constant)
    }
    
}
