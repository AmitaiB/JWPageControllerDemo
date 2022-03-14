//
//  PageViewController.swift
//  JWPageControllerDemo
//
//  Created by Amitai Blickstein on 3/10/22.
//

import UIKit

protocol IndexTrackingDelegate: AnyObject {
    func update(currentIndex: Int)
}

class PageViewController: UIPageViewController {
    var mediaPlaylist = Playlist.HardCoded.imdb_videos_14March2022
    var currentPageIndex = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        dataSource = self
        
        let initialVC = PlayerViewController.instantiate()
        initialVC.configure(with: mediaPlaylist,
                            index: 0,
                            indexDelegate: self)
        
        setViewControllers([initialVC], direction: .forward, animated: true, completion: nil)

    }
}

extension PageViewController: IndexTrackingDelegate {
    // gets called in jwplayerIsVisible
    func update(currentIndex: Int) {
        currentPageIndex = currentIndex
    }
}

extension PageViewController: UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        let pageIndexBefore = currentPageIndex - 1
        
        guard mediaPlaylist.indices.contains(pageIndexBefore)
        else { return nil }
        
        let beforeVC = PlayerViewController.instantiate()
        beforeVC.configure(with: mediaPlaylist,
                           index: pageIndexBefore,
                           indexDelegate: self)
        return beforeVC
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        let pageIndexAfter = currentPageIndex + 1
        
        guard mediaPlaylist.indices.contains(pageIndexAfter)
        else { return nil }
        
        let afterVC = PlayerViewController.instantiate()
        afterVC.configure(with: mediaPlaylist,
                          index: pageIndexAfter,
                          indexDelegate: self)
        return afterVC
    }
}
