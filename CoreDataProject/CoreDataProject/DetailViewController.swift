//
//  DetailViewController.swift
//  CoreDataProject
//
//  Created by Okan Serdaroğlu on 17.04.2020.
//  Copyright © 2020 Okan Serdaroğlu. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {

    @IBOutlet weak var imageViewCaptured: UIImageView!
    
    @IBOutlet weak var textFieldName: UITextField!
    
    @IBOutlet weak var textFieldArtist: UITextField!
    
    @IBOutlet weak var textFieldYear: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeybord))
        view.addGestureRecognizer(gestureRecognizer)
        
        imageViewCaptured.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imageViewCaptured.addGestureRecognizer(imageTapRecognizer)
        
    }
    
    @objc func hideKeybord(){
        view.endEditing(true)
    }

    @IBAction func buttonSaveClicked(_ sender: Any) {
        
    }
    
    @objc func selectImage (){
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        imageViewCaptured.image = info [.originalImage] as? UIImage
        self.dismiss(animated: true, completion: nil)
    }
    

}
