//
//  ViewController.swift
//  cameraPractice
//
//  Created by Ilana Rubin on 5/31/20.
//  Copyright © 2020 Ilana Rubin. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
var imagePicker = UIImagePickerController()
    
    
    @IBOutlet weak var newImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
    }

    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        // update our photo with the selected photo
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImage.image = selectedImage
        }
        // go back to our ViewController so the user can see the update
        imagePicker.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func takeASelfie(_ sender: UIButton) {
        
        imagePicker.sourceType = .camera
        
        present(imagePicker, animated : true, completion: nil)
    }
    
    
    @IBAction func chooseFromLibrary(_ sender: UIButton) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
        
    }
    

    
}

