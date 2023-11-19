//
//  ViewController.swift
//  ejercicio_touch
//
//  Created by Dianelys Saldaña on 11/19/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var tocaImagen = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            print("Touches began")
            let loc = touch.location(in: self.view)
            if self.imageView.frame.contains(loc) {
                print("Detectado toque sobre la imagen")
                self.tocaImagen = true
            }
        }
        super.touchesBegan(touches, with: event)
    }

    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first {
            print("Touches moved")
            let loc = touch.location(in: self.view)
            if self.tocaImagen == true {
                self.imageView.center = loc
            }
        }
        super.touchesMoved(touches, with: event)
    }

    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
            print("Touches ended")
            self.tocaImagen = false
            super.touchesEnded(touches, with: event)
    }

    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
            print("Touches cancelled")
            self.tocaImagen = false
            super.touchesCancelled(touches, with: event)
    }

}

