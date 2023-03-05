//
//  DetailViewController.swift
//  MyStory
//
//  Created by mohammed amroush.
//

import UIKit

class DetailViewController: UIViewController {
    
    var info: InfoPage?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        if let info = info {
            print(info.info)
        }
        
        if let info = info {
            pageImage.image = info.image
            pageInfo.text = info.info
        }
    }

    @IBOutlet weak var pageImage: UIImageView!
    
    @IBOutlet weak var pageInfo: UITextView!
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
