//
//  PlayerViewController.swift
//  JWPageControllerDemo
//
//  Created by Amitai Blickstein on 3/10/22.
//

import UIKit
import JWPlayerKit


class PlayerViewController: JWPlayerViewController {
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
    
    override func jwplayer(_ player: JWPlayer, failedWithSetupError code: UInt, message: String) {
        super.jwplayer(player, failedWithSetupError: code, message: message)
        print(#function, "\n * code: \(code)\n * message: \(message)")
    }
    
    override func jwplayer(_ player: JWPlayer, failedWithError code: UInt, message: String) {
        super.jwplayer(player, failedWithError: code, message: message)
        print(#function, "\n * code: \(code)\n * message: \(message)")
    }
    
    override func jwplayer(_ player: JWPlayer, encounteredWarning code: UInt, message: String) {
        super.jwplayer(player, encounteredWarning: code, message: message)
        print(#function, "\n * code: \(code)\n * message: \(message)")
    }
    
    override func jwplayer(_ player: JWPlayer, encounteredAdError code: UInt, message: String) {
        super.jwplayer(player, encounteredAdError: code, message: message)
        print(#function, "\n * code: \(code)\n * message: \(message)")
    }
    
    override func jwplayer(_ player: JWPlayer, encounteredAdWarning code: UInt, message: String) {
        super.jwplayer(player, encounteredAdWarning: code, message: message)
        print(#function, "\n * code: \(code)\n * message: \(message)")
    }
}

extension PlayerViewController {
    /// Get the storyboard with the same name as the view controller...
    static var sceneStoryboard: UIStoryboard {
        return UIStoryboard(name: String(describing: self), bundle: Bundle(for: self))
    }
    
    /// Type-safe syntactic sugar for `UIStoryboard`'s method: `instantiateInitialViewController`
    /// — Instantiates this view controller in a type-safe way.
    /// - precondition: Have a storyboard named after this view controller, with it set as the `initialViewController`.
    static func instantiate() -> Self {
        let viewController = sceneStoryboard.instantiateInitialViewController()
        guard let typedViewController = viewController as? Self else {
            fatalError("The initialViewController of '\(sceneStoryboard)' is not of class '\(self)'")
        }
        return typedViewController
    }
}
