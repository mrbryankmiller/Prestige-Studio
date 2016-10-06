//
//  SendMoneyViewController.swift
//  Prestige Studio
//
//  Created by Bryan  Miller on 10/5/16.
//  Copyright © 2016 swift 3. All rights reserved.
//

import UIKit

class SendMoneyViewController: UIViewController {

    @IBOutlet weak var firstSectionView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//Background Color
        self.view.backgroundColor = UIColor.yellow
 // Alter the UIView
   
        firstSectionView.layer.cornerRadius = 10;
        firstSectionView.layer.masksToBounds = true;
        
        firstSectionView.layer.borderWidth = 0.5;
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
