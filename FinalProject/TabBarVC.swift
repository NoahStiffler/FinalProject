//
//  TabBarVC.swift
//  FinalProject
//
//  Created by Noah Stiffler on 5/3/20.
//  Copyright © 2020 Noah Stiffler. All rights reserved.
//

import UIKit

class TabBarVC: UITabBarController {

    var dislikedImages: [Int] = []
    var likedImages: [Int] = []
    
    let images: [UIImage] = [ UIImage(named: "001")!, UIImage(named: "002")!, UIImage(named: "003")!, UIImage(named: "004")!, UIImage(named: "005")!, UIImage(named: "006")!, UIImage(named: "007")!, UIImage(named: "008")!, UIImage(named: "009")!, UIImage(named: "010")!, UIImage(named: "011")!, UIImage(named: "012")!, UIImage(named: "013")!, UIImage(named: "014")!, UIImage(named: "015")!, UIImage(named: "016")!, UIImage(named: "017")!, UIImage(named: "018")!, UIImage(named: "019")!, UIImage(named: "020")!, UIImage(named: "021")!, UIImage(named: "022")!, UIImage(named: "023")!, UIImage(named: "024")!, UIImage(named: "025")!, UIImage(named: "026")!, UIImage(named: "027")!, UIImage(named: "028")!, UIImage(named: "029")!, UIImage(named: "030")!, UIImage(named: "031")!, UIImage(named: "032")!, UIImage(named: "033")!, UIImage(named: "034")!, UIImage(named: "035")!, UIImage(named: "036")!, UIImage(named: "037")!, UIImage(named: "038")!, UIImage(named: "039")!, UIImage(named: "040")!, UIImage(named: "041")!, UIImage(named: "042")!, UIImage(named: "043")!, UIImage(named: "044")!, UIImage(named: "045")!, UIImage(named: "046")!, UIImage(named: "047")!, UIImage(named: "048")!, UIImage(named: "049")!, UIImage(named: "050")!, UIImage(named: "051")!, UIImage(named: "052")!, UIImage(named: "053")!, UIImage(named: "054")!, UIImage(named: "055")!, UIImage(named: "056")!, UIImage(named: "057")!, UIImage(named: "058")!, UIImage(named: "059")!, UIImage(named: "060")!, UIImage(named: "061")!, UIImage(named: "062")!, UIImage(named: "063")!, UIImage(named: "064")!, UIImage(named: "065")!, UIImage(named: "066")!, UIImage(named: "067")!, UIImage(named: "068")!, UIImage(named: "069")!, UIImage(named: "070")!, UIImage(named: "071")!, UIImage(named: "072")!, UIImage(named: "073")!, UIImage(named: "074")!, UIImage(named: "075")!, UIImage(named: "076")!, UIImage(named: "077")!, UIImage(named: "078")!, UIImage(named: "079")!, UIImage(named: "080")!, UIImage(named: "081")!, UIImage(named: "082")!, UIImage(named: "083")!, UIImage(named: "084")!, UIImage(named: "085")!, UIImage(named: "086")!, UIImage(named: "087")!, UIImage(named: "088")!, UIImage(named: "089")!, UIImage(named: "090")!, UIImage(named: "091")!, UIImage(named: "092")!, UIImage(named: "093")!, UIImage(named: "094")!, UIImage(named: "095")!, UIImage(named: "096")!, UIImage(named: "097")!, UIImage(named: "098")!, UIImage(named: "099")!, UIImage(named: "100")!, UIImage(named: "101")!, UIImage(named: "102")!, UIImage(named: "103")!, UIImage(named: "104")!, UIImage(named: "105")!, UIImage(named: "106")!, UIImage(named: "107")!, UIImage(named: "108")!, UIImage(named: "109")!, UIImage(named: "110")!, UIImage(named: "111")!, UIImage(named: "112")!, UIImage(named: "113")!, UIImage(named: "114")!, UIImage(named: "115")!, UIImage(named: "116")!, UIImage(named: "117")!, UIImage(named: "118")!, UIImage(named: "119")!, UIImage(named: "120")!, UIImage(named: "121")!, UIImage(named: "122")!, UIImage(named: "123")!, UIImage(named: "124")!, UIImage(named: "125")!, UIImage(named: "126")!, UIImage(named: "127")!, UIImage(named: "128")!, UIImage(named: "129")!, UIImage(named: "130")!, UIImage(named: "131")!, UIImage(named: "132")!, UIImage(named: "133")!, UIImage(named: "134")!, UIImage(named: "135")!, UIImage(named: "136")!, UIImage(named: "137")!, UIImage(named: "138")!, UIImage(named: "139")!, UIImage(named: "140")!, UIImage(named: "141")!, UIImage(named: "142")!, UIImage(named: "143")!, UIImage(named: "144")!, UIImage(named: "145")!, UIImage(named: "146")!, UIImage(named: "147")!, UIImage(named: "148")!, UIImage(named: "149")!, UIImage(named: "150")!, UIImage(named: "151")!, UIImage(named: "152")!, UIImage(named: "153")!, UIImage(named: "154")!, UIImage(named: "155")!, UIImage(named: "156")!, UIImage(named: "157")!, UIImage(named: "158")!, UIImage(named: "159")!, UIImage(named: "160")!, UIImage(named: "161")!, UIImage(named: "162")!, UIImage(named: "163")!, UIImage(named: "164")!, UIImage(named: "165")!, UIImage(named: "166")!, UIImage(named: "167")!, UIImage(named: "168")!, UIImage(named: "169")!, UIImage(named: "170")!, UIImage(named: "171")!, UIImage(named: "172")!, UIImage(named: "173")!, UIImage(named: "174")!, UIImage(named: "175")!, UIImage(named: "176")!, UIImage(named: "177")!, UIImage(named: "178")!, UIImage(named: "179")!, UIImage(named: "180")!, UIImage(named: "181")!, UIImage(named: "182")!, UIImage(named: "183")!, UIImage(named: "184")!, UIImage(named: "185")!, UIImage(named: "186")!, UIImage(named: "187")!, UIImage(named: "188")!, UIImage(named: "189")!, UIImage(named: "190")!, UIImage(named: "191")!, UIImage(named: "192")!, UIImage(named: "193")!, UIImage(named: "194")!, UIImage(named: "195")!, UIImage(named: "196")!, UIImage(named: "197")!, UIImage(named: "198")!, UIImage(named: "199")!, UIImage(named: "200")!, UIImage(named: "201")!, UIImage(named: "202")!,].shuffled()
    
    
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
