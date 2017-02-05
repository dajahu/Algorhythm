//
//  ViewController.swift
//  Algorhythm
//
//  Created by David Jansson Hultgren on 2015-05-19.
//  Copyright (c) 2015 davloop. All rights reserved.
//

import UIKit

class PlaylistMasterViewController: UIViewController {

    
    var playlistsArray: [UIImageView] = []
   
    
    
    @IBOutlet weak var playListImageView0: UIImageView!
    
    @IBOutlet weak var playListImageView1: UIImageView!
    
    @IBOutlet weak var playListImageView2: UIImageView!
    
    @IBOutlet weak var playListImageView3: UIImageView!
    
    @IBOutlet weak var playListImageView4: UIImageView!
    
    @IBOutlet weak var playListImageView5: UIImageView!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        playlistsArray += [playListImageView0, playListImageView1, playListImageView2, playListImageView3, playListImageView4, playListImageView5]
        
        for index in 0..<playlistsArray.count {
            let playlist = Playlist(index: index)
            let playlistImageView = playlistsArray[index]
            
            playlistImageView.image = playlist.icon
            playlistImageView.backgroundColor = playlist.backgroundColor
            
        }
        
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
   
       
        
        
       
        
    
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showPlaylistDetailSegue" {
            
            
            let playlistImageView = sender!.view as! UIImageView
            if let index = playlistsArray.indexOf(playlistImageView) {
                
                
                
                let playlistDetailController = segue.destinationViewController as! PlaylistDetailViewController
                playlistDetailController.playlist = Playlist(index: index)
                
            }
            
            
            
        }
    }
  
    @IBAction func showPlaylistDetail(sender: AnyObject) {
        
        performSegueWithIdentifier("showPlaylistDetailSegue", sender: sender)
    }
    
    

}

