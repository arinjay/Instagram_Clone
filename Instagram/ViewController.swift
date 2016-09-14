//
//  ViewController.swift
//  Instagram
//
//  Created by Arinjay on 14/09/16.
//  Copyright © 2016 Arinjay. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate ,UINavigationControllerDelegate{
    
    var picker: UIImagePickerController!
    

    @IBAction func chooseButton(sender: AnyObject) {
        presentViewController(self.picker, animated: true, completion: nil)
        
    }
    
    @IBOutlet var imageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //Ostetso.showGallery()
        picker = UIImagePickerController()
        picker.delegate = self   // self refer to current instance of class
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage{
            
            imageView.image = pickedImage
            
            
        }
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

