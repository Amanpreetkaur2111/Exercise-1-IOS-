//
//  ViewController.swift
//  Exercise 1
//
//  Created by MacStudent on 2020-01-09.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let heightofBox = UIScreen.main.bounds.size.height
    let widthofBox = UIScreen.main.bounds.size.width
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        imageView.frame.origin.x = 0
        imageView.frame.origin.y = 0
        
     let time = heightofBox / 150
        //let Sheight = UIScreen.main.bounds.size.height
        
        UIView.animate(withDuration: TimeInterval(time)){
            self.imageView.frame.origin.y = self.heightofBox - self.imageView.frame.height
            
            
let swipeRight = UISwipeGestureRecognizer(target: self, action: #selector (self.swiped))
    swipeRight.direction = UISwipeGestureRecognizer.Direction.right
            self.view.addGestureRecognizer(swipeRight)
            
            
    let swipeLeft = UISwipeGestureRecognizer(target: self, action: #selector(self.SSwipedd))
            swipeLeft.direction = UISwipeGestureRecognizer.Direction.left
            self.view.addGestureRecognizer(swipeLeft)
            
        }
}
    @objc func swiped(gesture: UISwipeGestureRecognizer){
    let swipeGesture = gesture as UISwipeGestureRecognizer
       // UIView.animate(withDuration: 2,animations: {
            
          //  self.imageView.frame.origin.x = self.widthofBox - self.imageView.frame.width
      //  }){
        
        UIView.animate(withDuration: 2, animations:{
            self.imageView.frame.origin.x = self.widthofBox - self.imageView.frame.width}){
            (aman) in
            UIView.animate(withDuration: 2,animations: {
                self.imageView.frame.origin.y = 0
            }){  (aman) in
                
                UIView.animate(withDuration: 2, animations: {
                    self.imageView.frame.origin.x = 0
                }){ (true) in
                    UIView.animate(withDuration: 2){
                        
                        self.imageView.frame.origin.y = self.heightofBox - self.imageView.frame.height
                    }
                }
                }
        }
        
        
       }

    @objc func SSwipedd (gesture: UISwipeGestureRecognizer){
        
        let swipeGesture1 = gesture as UISwipeGestureRecognizer
        
        UIView.animate(withDuration: 2, animations: {
            self.imageView.frame.origin.y = self.heightofBox - self.imageView.frame.height }) {
                (aman) in
                
                UIView.animate(withDuration: 2, animations: {
                    self.imageView.frame.origin.x = 0
                }) {
                    (aman) in
                    UIView.animate(withDuration: 2, animations: {
                        self.imageView.frame.origin.y = 0
                    }) {(true) in
                        UIView.animate(withDuration: 2){
                            
                            self.imageView.frame.origin.x = self.widthofBox - self.imageView.frame.width
                        }
                    }
                }
        }
        
        
        
    }
    
}

