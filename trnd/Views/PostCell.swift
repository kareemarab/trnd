//
//  PostCell.swift
//  gift
//
//  Created by Kareem Arab on 2018-02-03.
//  Copyright © 2018 Kareem Arab. All rights reserved.
//

import UIKit
import Parse
import KILabel
import FLAnimatedImage
import AVFoundation
//import DOFavoriteButton

class PostCell: UITableViewCell {
    
    // MARK: - Properties
    var postUniqueID: String?
    var likeCounts: Int = 0
    var player: AVPlayer?
    var videoUrl: String?
    
    // MARK: - IBOutlets
    
    @IBOutlet weak var animatedImageView: FLAnimatedImageView!
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var usernameButton: UIButton!
    @IBOutlet weak var timeStamp: UILabel!
    //@IBOutlet weak var postImage: UIImageView!
    //@IBOutlet weak var animatedPostView: FLAnimatedImageView!
    
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var commentLabel: UILabel!
    @IBOutlet weak var moreLabel: UILabel!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var commentButton: UIButton!
    @IBOutlet weak var moreButton: UIButton!
    @IBOutlet weak var likeCountLabel: UILabel!
    @IBOutlet weak var postMessageLabel: KILabel!
    //@IBOutlet weak var postVideoView: VideoView!

    // MARK: - Methods
    
    func setupGestures() {
        let likeGR = UITapGestureRecognizer(target: self, action: #selector(PostCell.likeAction))
        likeLabel.isUserInteractionEnabled = true
        likeLabel.addGestureRecognizer(likeGR)
        
        //let commGR = UITapGestureRecognizer(target: self, action: #selector(FeedViewController.commentAction))
        let commGR = UITapGestureRecognizer(target: self, action:#selector(PostCell.commentAction))
        commentLabel.isUserInteractionEnabled = true
        commentLabel.addGestureRecognizer(commGR)
        
        let moreGR = UITapGestureRecognizer(target: self, action: #selector(PostCell.moreAction))
        moreLabel.isUserInteractionEnabled = true
        moreLabel.addGestureRecognizer(moreGR)
    }
    
    func setupButtons() {
        likeLabel.font = UIFont.icon(from: .fontAwesome, ofSize: 30)
        likeLabel.textColor = .white
        likeLabel.text = String.fontAwesomeIcon("heart")
        commentLabel.font = UIFont.icon(from: .fontAwesome, ofSize: 30)
        commentLabel.textColor = .white
        commentLabel.text = String.fontAwesomeIcon("comment")
        moreLabel.font = UIFont.icon(from: .fontAwesome, ofSize: 30)
        moreLabel.textColor = .white
        moreLabel.text = String.fontAwesomeIcon("ellipsish")
    }
    
    @objc func likeAction(sender:UITapGestureRecognizer) {
        
    }
    @objc func commentAction(sender:UITapGestureRecognizer) {

    }

    @objc func moreAction(sender:UITapGestureRecognizer) {

    }
    
    // MARK: - Configuration
    
    // Configures a post using a username, time, title, and the unique ID for the post
    func configurePost(_ username: String, date: Date, title: String, location: String, latitude: String, longitude: String, uniqueID: String, indexPath: IndexPath) {

        setupButtons()
        setupGestures()
        // username
        usernameButton.setTitle("\(username)", for: UIControl.State())
        
        let screenSize: CGRect = UIScreen.main.bounds
        let screenWidth = screenSize.width
        let screenHeight = screenSize.height
        
        // lat-lon
        var lat : Float = NSString(string: latitude).floatValue
        var lon : Float = NSString(string: latitude).floatValue
        
        // avatar
        self.avatarImage.layer.cornerRadius = 20
        self.avatarImage.clipsToBounds = true

    }

    @IBAction func likeAction(_ sender: Any) {
        if likeButton.currentImage == UIImage(named: "Unlike") {
            //likeButton.setImage(UIImage(named: "Like"), for: UIControlState.normal)
        } else {
            //likeButton.setImage(UIImage(named: "Unlike"), for: UIControlState.normal)
        }
    }
    func like() {

    }

}
    

