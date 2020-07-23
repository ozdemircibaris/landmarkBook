//
//  imageViewController.swift
//  LandmarkBook
//
//  Created by Baris Ozdemirci on 23.07.2020.
//  Copyright © 2020 Barış ÖZDEMİRCİ. All rights reserved.
//

import UIKit

class imageViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var landmarkLabel: UILabel!
    
    var chosenLandmarkName  = "";
    var chosenLandmarkImage = UIImage();

    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = chosenLandmarkImage;
        landmarkLabel.text = chosenLandmarkName;
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
