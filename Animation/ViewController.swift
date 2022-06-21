//
//  ViewController.swift
//  Animation
//
//  Created by AmirDiafi on 6/20/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        btn1.alpha = 0
        btn2.alpha = 0
        btn3.alpha = 0
        btn4.alpha = 0
        btn1.layer.cornerRadius = 15
        btn2.layer.cornerRadius = 15
        btn3.layer.cornerRadius = 15
        btn4.layer.cornerRadius = 15
    }

    @IBAction func btnOneAction(_ sender: Any) {
        scaleButtons()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        animateViews()
    }
    
    func animateViews() {
        UIView.animate(withDuration: TimeInterval(1.5)) {
            self.btn1.alpha = 1
            self.btn2.alpha = 1
            self.btn3.alpha = 1
            self.btn4.alpha = 1
        }
        
        UIView.animate(withDuration: TimeInterval(1.5)) {
            self.btn1.center.y += 50
            self.btn2.center.y += 50
            self.btn3.center.y += 50
            self.btn4.center.y += 50
        }
        
        UIView.animate(withDuration: TimeInterval(0.5), delay: TimeInterval(1), options: [.repeat, .autoreverse], animations: {
                self.imageView.alpha = 0
                self.imageView.frame = CGRect(x: self.imageView.frame.minX - 25, y: self.imageView.frame.minY - 25, width: self.imageView.frame.width + 50, height: self.imageView.frame.height + 50)
        }, completion: nil)
    }
    
    func scaleButtons() {
        UIView.animate(withDuration: TimeInterval(0.5), animations: {
            self.btn1.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1)
        }) { (_) in
            UIView.animate(withDuration: TimeInterval(0.5), animations: {
                self.btn1.layer.transform = CATransform3DMakeScale(1, 1, 1)
            })
        }
        UIView.animate(withDuration: TimeInterval(0.4), animations: {
            self.btn2.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1)
        }) { (_) in
            UIView.animate(withDuration: TimeInterval(0.4), animations: {
                self.btn2.layer.transform = CATransform3DMakeScale(1, 1, 1)
            })
        }
        
        UIView.animate(withDuration: TimeInterval(0.3), animations: {
            self.btn3.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1)
        }) { (_) in
            UIView.animate(withDuration: TimeInterval(0.3), animations: {
                self.btn3.layer.transform = CATransform3DMakeScale(1, 1, 1)
            })
        }
        
        UIView.animate(withDuration: TimeInterval(0.2), animations: {
            self.btn4.layer.transform = CATransform3DMakeScale(1.2, 1.2, 1)
        }) { (_) in
            UIView.animate(withDuration: TimeInterval(0.2), animations: {
                self.btn4.layer.transform = CATransform3DMakeScale(1, 1, 1)
            })
        }
    }

}

