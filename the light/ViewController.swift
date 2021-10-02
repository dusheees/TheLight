//
//  ViewController.swift
//  the light
//
//  Created by Андрей on 29.09.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var isLightOn: Bool = true
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

//    MARK: -Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateUI()
    }


    fileprivate func updateUI() {
        //        print(#line, #function, isLigttOn)
//        if isLightOn{
//            view.backgroundColor = .white
//        }else{
//            view.backgroundColor = .black
//        }
        
        view.backgroundColor = isLightOn ? .white : .black
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        isLightOn.toggle()
        updateUI()
    }
    
}

