//
//  ViewController.swift
//  MyStory
//
//  Created by mohammed amroush.
//

import UIKit

class ViewController: UIViewController {

    //models
    let origin = InfoPage(image: UIImage(named: "leto-image")!, info: "n Greek mythology, Kratos, also known as Cratus or Cratos, is the divine personification of strength. He is the son of Pallas and Styx")
    
    let abilities = InfoPage(image: UIImage(named: "artemis and stag")!, info: "Kratos' strength is apparently unmatched and nearly unlimited, stronger than Zeus and Hercules. This ability allows one to lift massive weights, crack or shatter stone with a single punch, break chains barehanded, and overpower mortals and beasts.")
    
    let responsibilites = InfoPage(image: UIImage(named: "Artemis hunt")!, info: "Throughout the Greek era of the series, Kratos is portrayed as a Spartan warrior, who becomes known as the "Ghost of Sparta" after accidentally killing his family due to the trickery of his former mentor Ares, the God of War. He later avenges the deaths of his family and becomes the new "God of War" after killing Ares.")
    
    var infos: [InfoPage] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        infos = [origin, abilities, responsibilites]
    }
    
    var buttonPressed = 0;

    
    @IBAction func originPressed(_ sender: UIButton) {
        buttonPressed = 1
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    @IBAction func abilitiesPressed(_ sender: UIButton) {
        buttonPressed = 2
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    @IBAction func responsibilitiesPressed(_ sender: UIButton) {
        buttonPressed = 3
        performSegue(withIdentifier: "detailSegue", sender: sender)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "detailSegue",
            let detailViewController = segue.destination as? DetailViewController {
            if buttonPressed == 1 {
                detailViewController.info = infos[0]
            } else if buttonPressed == 2 {
                detailViewController.info = infos[1]
            } else if buttonPressed == 3 {
                detailViewController.info = infos[2]
            } else {
                print("Check your selection")
            }
        }
    }
    
}

