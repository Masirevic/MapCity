//
//  PopVC.swift
//  MapCity
//
//  Created by Ljubomir on 1/15/18.
//  Copyright © 2018 Ljubomir. All rights reserved.
//

import UIKit

class PopVC: UIViewController, UIGestureRecognizerDelegate {
    
    
    @IBOutlet weak var popImageView: UIImageView!
    
    var passedImage: UIImage!
    
    func initData (forImage image: UIImage) {
        self.passedImage = image
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        popImageView.image = passedImage
        addDoubleTap()
       
    }

    func addDoubleTap () {
        let doubleTap = UITapGestureRecognizer(target: self, action: #selector(sreenWasDoubleTapped))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delegate = self
        view.addGestureRecognizer(doubleTap)
        
    }

    @objc func sreenWasDoubleTapped () {
        dismiss(animated: true, completion: nil)
    }
    
}
