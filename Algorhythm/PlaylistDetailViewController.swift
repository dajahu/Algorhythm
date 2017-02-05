//
//  PlaylistDetailViewController.swift
//  Algorhythm
//
//  Created by David Jansson Hultgren on 2015-05-19.
//  Copyright (c) 2015 davloop. All rights reserved.
//

import UIKit

class PlaylistDetailViewController: UIViewController {

    
    
    var playlist: Playlist?
    
    // fixa
    
    
    @IBOutlet weak var playListCoverImage: UIImageView!
    @IBOutlet weak var playListTitle: UILabel!
    @IBOutlet weak var playListDescription: UILabel!
    @IBOutlet weak var playlistArtist0: UILabel!
    @IBOutlet weak var playlistArtist1: UILabel!
    @IBOutlet weak var playlistArtist2: UILabel!
   
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        if playlist != nil {

        playListCoverImage.image = playlist!.icon
            playListCoverImage.backgroundColor = playlist!.backgroundColor
            playListTitle.text = playlist!.title
            playListDescription.text = playlist!.description
        
        
            playlistArtist0.text = playlist!.artists[0]
            playlistArtist1.text = playlist!.artists[1]
            playlistArtist2.text = playlist!.artists[2]
            
            
            
        
        
        }
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
   
   

}
