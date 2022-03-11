//
//  PlayerViewController.swift
//  JWPageControllerDemo
//
//  Created by Amitai Blickstein on 3/10/22.
//

import UIKit
import JWPlayerKit
import Reusable

class PlayerViewController: JWPlayerViewController, StoryboardBased {
    weak var indexTrackingDelegate: IndexTrackingDelegate?
    private(set) var index: Int!
    
    func configure(with mediaPlaylist: [String], index: Int, indexDelegate: IndexTrackingDelegate) {
        guard let mediaUrl = URL(string: mediaPlaylist[index]),
              let adUrl    = URL(string: Playlist.HardCoded.imdb_adUrlString)
        else { return }

        self.index = index
        self.indexTrackingDelegate = indexDelegate
        
        setupPlayer(mediaURL: mediaUrl, adURL: adUrl)
    }
    
    func setupPlayer(mediaURL: URL, adURL: URL) {
        do {
            let item = try JWPlayerItemBuilder()
                .file(mediaURL)
                .build()
            
            let ads = try JWAdsAdvertisingConfigBuilder()
                .tag(adURL)
                .build()
            
            let config = try JWPlayerConfigurationBuilder()
                .playlist([item])
                .advertising(ads)
                .autostart(true)
                .build()
            
            player.configurePlayer(with: config)
            
        } catch {
            print(error.localizedDescription)
        }
    }
        
    override func jwplayer(_ player: JWPlayer, isVisible: Bool) {
        super.jwplayer(player, isVisible: isVisible)
        // Index Tracking
        indexTrackingDelegate?.update(currentIndex: index)
        
        isVisible ? player.play() : player.pause()
    }
    
}
