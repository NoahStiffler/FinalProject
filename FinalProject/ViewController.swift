//
//  ViewController.swift
//  FinalProject
//
//  Created by Noah Stiffler on 5/3/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imageViewer: UIImageView!
    var arrayPosition = 1
    @IBOutlet weak var counterDisplay: UILabel!
    var current = 0
    var dislikedImages: [Int] = []
    var likedImages: [Int] = []
    
    override func motionBegan(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        NextImage(Any.self)
            }
    
    
    @IBAction func NextImage(_ sender: Any) {
        
        imageViewer.image = (parent as! TabBarVC).images[arrayPosition]
        arrayPosition+=1
        counterDisplay.text = String(arrayPosition)
        current+=1
    }
    
   
    @IBAction func likeImage(_ sender: Any) {
        likeImage()
    }
    func likeImage(){
        likedImages.append(current)
        NextImage(self)
        print("Position of liked images in array: ", likedImages)
        (parent as! TabBarVC).likedImages = likedImages
    }
    
 
    @IBAction func dislikeImage(_ sender: Any) {
    dislikeImage()
}
        
    func dislikeImage(){
        dislikedImages.append(current)
        NextImage(self)
        print("Position of disliked images in array: ", dislikedImages)
        (parent as! TabBarVC).dislikedImages = dislikedImages
    }
    
    

    
    @IBAction func swipeGesture(_ sender: UISwipeGestureRecognizer) {
        switch sender.direction {
        case .right:
            likeImage()
        case .left:
            dislikeImage()
        default:
            break
            
        }
    }
    
    
    override func viewDidLoad() {
        
        imageViewer.image = ((parent as! TabBarVC).images[0])
        counterDisplay.text = String(arrayPosition)
        super.viewDidLoad()
        
        
        
        
      
    }


}

