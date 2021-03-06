//
//  ViewController.swift
//  camera_app
//
//  Created by MacStudent on 2018-08-04.
//  Copyright © 2018 MacStudent. All rights reserved.
//

import UIKit
import AVKit
import AVFoundation
import MobileCoreServices

class ViewController: UIViewController,  UIImagePickerControllerDelegate,
UINavigationControllerDelegate  {
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var takePictureButton: UIButton!
    
    @IBOutlet weak var pickPictureButton: UIButton!
    
    @objc var avPlayerViewController: AVPlayerViewController!
    @objc var image: UIImage?
    @objc var movieURL: URL?
    @objc var lastChosenMediaType: String?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if !UIImagePickerController.isSourceTypeAvailable(
            UIImagePickerControllerSourceType.camera) {
            takePictureButton.isHidden = true
        }
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        updateDisplay()
    }
    @objc func updateDisplay() {
        if let mediaType = lastChosenMediaType {
            if mediaType == (kUTTypeImage as NSString) as String {
                imageView.image = image!
                imageView.isHidden = false
                if avPlayerViewController != nil {
                    avPlayerViewController!.view.isHidden = true
                }
            } else if mediaType == (kUTTypeMovie as NSString) as String {
                if avPlayerViewController == nil {
                    avPlayerViewController = AVPlayerViewController()
                    let avPlayerView = avPlayerViewController!.view
                    avPlayerView?.frame = imageView.frame
                    avPlayerView?.clipsToBounds = true
                    view.addSubview(avPlayerView!)
                    setAVPlayerViewLayoutConstraints()
                }
                if let url = movieURL {
                    imageView.isHidden = true
                    avPlayerViewController.player = AVPlayer(url: url)
                    avPlayerViewController!.view.isHidden = false
                    avPlayerViewController!.player!.play()
                }
            }
        }
    }

    @objc func setAVPlayerViewLayoutConstraints() {
        let avPlayerView = avPlayerViewController!.view
        avPlayerView?.translatesAutoresizingMaskIntoConstraints = false
        let views = ["avPlayerView": avPlayerView!,
                     "takePictureButton": takePictureButton!]
        view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "H:|[avPlayerView]|", options:
            .alignAllLeft,
            metrics:nil, views:views))
        view.addConstraints(NSLayoutConstraint.constraints(
            withVisualFormat: "V:|[avPlayerView]-0-[takePictureButton]",
            options: .alignAllLeft, metrics:nil, views:views))
    }
    
    @objc func pickMediaFromSource(_ sourceType:UIImagePickerControllerSourceType) {
        let mediaTypes =
            UIImagePickerController.availableMediaTypes(for: sourceType)!
        if UIImagePickerController.isSourceTypeAvailable(sourceType)
            && mediaTypes.count > 0 {
            let picker = UIImagePickerController()
            picker.mediaTypes = mediaTypes
            picker.delegate = self
            picker.allowsEditing = true
            picker.sourceType = sourceType
            present(picker, animated: true, completion: nil)
        } else {
            let alertController = UIAlertController(title:"Error accessing media",
                                                    message: "Unsupported media source.",
                                                    preferredStyle: UIAlertControllerStyle.alert)
            let okAction = UIAlertAction(title: "OK",
                                         style: UIAlertActionStyle.cancel, handler: nil)
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
   @objc func imagePickerController(_ picker: UIImagePickerController,
                               didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        lastChosenMediaType = info[UIImagePickerControllerMediaType] as? String
        if let mediaType = lastChosenMediaType {
            if mediaType == (kUTTypeImage as NSString) as String {
                image = info[UIImagePickerControllerEditedImage] as? UIImage
            } else if mediaType == (kUTTypeMovie as NSString) as String {
                movieURL = info[UIImagePickerControllerMediaURL] as? URL
            }
        }
        picker.dismiss(animated: true, completion: nil)
    }
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion:nil)
    }
            
    @IBAction func shootPictureOrVideo(sender: UIButton) {
        pickMediaFromSource(UIImagePickerControllerSourceType.camera)
    }
    @IBAction func selectExistingPictureOrVideo(sender: UIButton) {
        pickMediaFromSource(UIImagePickerControllerSourceType.photoLibrary)
    }

}

