//
//  Level1ViewController.swift
//  ArabicHackathon
//
//  Created by Sara Alamri on 28/05/2022.
//  Copyright © 2022 Martin Mitrevski. All rights reserved.
//

import UIKit
import AVFoundation

class Level1ViewController: UIViewController {
    var audioPlayer = AVAudioPlayer()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sound = Bundle.main.path(forResource: "لنبدأ-الرحلة", ofType: "wav")
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
            
        }catch
        {
            print("error")
        }
        if self.isViewLoaded
        {
            audioPlayer.play()
        }
        
        // Do any additional setup after loading the view.
    }
    
@IBAction func didTapButoon ()
    {
        if #available(iOS 15.0, *) {
            let vs = ViewController()
            present(vs,animated: true )
        } else {
            // Fallback on earlier versions
        }
        
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
