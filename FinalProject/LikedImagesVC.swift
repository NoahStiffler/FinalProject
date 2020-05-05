//
//  LikedImagesVC.swift
//  FinalProject
//
//  Created by Noah Stiffler on 5/3/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit

class LikedImagesVC: UIViewController {

    var imageViews:UIImageView!
    
    var localLiked: [UIImage] = []

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidAppear(_ animated: Bool) {
      
      // sets size parameters for images
      let imageWidth:CGFloat = 414
      let imageHeight:CGFloat = 414
      var yPosition:CGFloat = 0
      var scrollViewContentSize:CGFloat = 0;
      
      
      // For every disliked image, create a new UIImageView and add it to the UIScrollView
      
      for i in 0 ..< ((parent as! TabBarVC).likedImages).count {
          localLiked.append((parent as! TabBarVC).images[((parent as! TabBarVC).likedImages[i])])
          
          let myImage:UIImage = ((parent as! TabBarVC).images[((parent as! TabBarVC).likedImages[i])])
          let myImageView:UIImageView = UIImageView()
          myImageView.image = myImage
          
          myImageView.frame.size.width = imageWidth
          myImageView.frame.size.height = imageHeight
          myImageView.frame.origin.x = 0
          myImageView.frame.origin.y = yPosition
          
          scrollView.addSubview(myImageView)
          
          let spacer:CGFloat = 10
          
          yPosition+=imageHeight
          scrollViewContentSize+=imageHeight + spacer
          
          scrollView.contentSize = CGSize(width: imageWidth, height: scrollViewContentSize)
          
          
      }
      print("local liked: ", localLiked)
      
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
