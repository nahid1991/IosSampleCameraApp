//
//  ViewController.swift
//  Image Fun
//
//  Created by Nahid on 18/6/19.
//  Copyright © 2019 Nahid. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        imagePicker.delegate = self
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // Display
        if let usersImage =
            info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = usersImage
        }
        
        picker.dismiss(animated: true, completion: nil)
    }

    @IBAction func takePhotoTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        present(imagePicker, animated: true, completion: nil)
    }
    
    @IBAction func chooseAnImage(_ sender: Any) {
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
}

