//
//  ViewController.swift
//  LandmarkBook
//
//  Created by Baris Ozdemirci on 23.07.2020.
//  Copyright © 2020 Barış ÖZDEMİRCİ. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    var landmarkNames = [String]();
    var landmarkImages = [UIImage]()
    var chosenLandmarkName  = "";
    var chosenLandmarkImage = UIImage();
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableView.delegate   = self;
        tableView.dataSource = self;
        
        
        landmarkNames.append("a");
        landmarkNames.append("b");
        landmarkNames.append("c");
        landmarkNames.append("d");
        landmarkNames.append("e");
        
        landmarkImages.append(UIImage(named: "google")!)
        landmarkImages.append(UIImage(named: "idea")!)
        landmarkImages.append(UIImage(named: "lock-2")!)
        landmarkImages.append(UIImage(named: "logo-1")!)
        landmarkImages.append(UIImage(named: "microphone")!)
    }

    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            landmarkNames.remove(at: indexPath.row)
            landmarkImages.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell();
        cell.textLabel?.text = landmarkNames[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return landmarkNames.count;
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        chosenLandmarkName  = landmarkNames[indexPath.row];
        chosenLandmarkImage = landmarkImages[indexPath.row]
        performSegue(withIdentifier: "toImageViewController", sender: nil)
   }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toImageViewController" {
            let desticationVC = segue.destination as! imageViewController
            desticationVC.chosenLandmarkImage = chosenLandmarkImage;
            desticationVC.chosenLandmarkName  = chosenLandmarkName;
        }
    }
}

