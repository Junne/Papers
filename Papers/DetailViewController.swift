//
//  DetailViewController.swift
//  Papers
//
//  Created by Junne on 1/16/16.
//  Copyright © 2016 Junne. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet  weak var imageView: UIImageView!
    var paper: Paper?
    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        if let paper = paper {
            navigationItem.title = paper.caption
            imageView.image = UIImage(named: paper.imageName)
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
