//
//  PopUpVC.swift
//  Pixel-City
//
//  Created by AhemadAbbas Vagh on 11/11/18.
//  Copyright © 2018 AhemadAbbas Vagh. All rights reserved.
//

import UIKit

class PopUpVC: UIViewController, UIGestureRecognizerDelegate{

    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData(forImage image: UIImage) {
        passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        popImageView.image = passedImage
        addDoubleTap()
    }
    
    func addDoubleTap() {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(screenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
    }
    
    @objc func screenWasDoubleTapped() {
        dismiss(animated: true, completion: nil)
    }
    
}
