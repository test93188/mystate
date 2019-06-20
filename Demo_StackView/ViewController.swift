//
//  ViewController.swift
//  Demo_StackView
//
//  Created by Mac Mini 101 on 10/04/19.
//  Copyright © 2019 KBS. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    
    @IBOutlet var view1: UIView!
    @IBOutlet var view2: UIView!
    @IBOutlet var view3: UIView!
    @IBOutlet var view4: UIView!
    @IBOutlet var view5: UIView!
    
    
    @IBOutlet var view1_vertical: UIView!
    @IBOutlet var view2_vertical: UIView!
    @IBOutlet var view3_vertical: UIView!
    @IBOutlet var view4_vertical: UIView!
    @IBOutlet var view5_vertical: UIView!
    
    var sView = UIView()
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


    @IBAction func hitme1(_ sender: Any)
    {
       self.hideView(givemeView: self.view1)
    }
    @IBAction func hitme2(_ sender: Any)
    {
       self.hideView(givemeView: self.view2)
    }
    @IBAction func hitme3(_ sender: Any)
    {
        self.hideView(givemeView: self.view3)
    }
    @IBAction func hitme4(_ sender: Any)
    {
        self.hideView(givemeView: self.view4)
    }
    @IBAction func hitme5(_ sender: Any)
    {
       self.hideView(givemeView: self.view5)
    }
    
    @IBAction func undoAction(_ sender: Any)
    {
       self.undoView()
    }
    
    
    
    @IBAction func hitme1_vertical(_ sender: Any)
    {
        self.hideView(givemeView: self.view1_vertical)
    }
    @IBAction func hitme2_vertical(_ sender: Any)
    {
        self.hideView(givemeView: self.view2_vertical)
    }
    @IBAction func hitme3_vertical(_ sender: Any)
    {
        self.hideView(givemeView: self.view3_vertical)
    }
    @IBAction func hitme4_vertical(_ sender: Any)
    {
        self.hideView(givemeView: self.view4_vertical)
    }
    @IBAction func hitme5_vertical(_ sender: Any)
    {
        self.hideView(givemeView: self.view5_vertical)
    }
    
    
    
    func hideView(givemeView:UIView)
    {
        UIView.animate(withDuration: 0.4, animations: {
            givemeView.isHidden = true
            self.sView = givemeView
            self.view.layoutIfNeeded()
        })
    }
    
    func undoView()
    {
        UIView.animate(withDuration: 0.4, animations: {
            self.sView.isHidden = false
            self.view.layoutIfNeeded()
        })
    }
}

