//
//  HomePageTableViewController.swift
//  Lado-E-A
//
//  Created by Eyal Perets on 20/04/2020.
//  Copyright © 2020 myapps. All rights reserved.
//

import UIKit

class HomePageTableViewController: UITableViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    @IBOutlet var mapBarButton: UIBarButtonItem!
    @IBOutlet var searchBarButton : UIBarButtonItem!
    @IBOutlet var collectionView: UICollectionView!

    
    private var businesses = [Business(businessName: "Excellent Training", businessAddress: "Park Raanana", featuredImage: UIImage(named: "excellentTraining"), businessReviews: 2000, businessStars: 4.5),
Business(businessName: "Pilates", businessAddress: "Asher 12 Raanana", featuredImage: UIImage(named: "Yoga"), businessReviews: 2000, businessStars: 4.2),
Business(businessName: "Dor Gym", businessAddress: "Rishon Leziyon", featuredImage: UIImage(named: "Gym"), businessReviews: 2000, businessStars: 3.5),
Business(businessName: "Pilates", businessAddress: "Australia", featuredImage: UIImage(named: "Pilates"), businessReviews: 2000, businessStars: 2.7),
Business(businessName: "Santorini", businessAddress: "greece", featuredImage: UIImage(named: "santorini"), businessReviews: 2000,businessStars: 1.2),
Business(businessName: "New York", businessAddress: "United States", featuredImage: UIImage(named: "newyork"), businessReviews: 2000,businessStars:  3),
Business(businessName: "Rome", businessAddress: "Italy", featuredImage: UIImage(named: "rome"), businessReviews: 2000, businessStars: 5),
Business(businessName: "Kyoto", businessAddress: "Japan", featuredImage: UIImage(named: "kyoto"), businessReviews: 2000, businessStars: 3),    //   @IBOutlet var headerView: UIView!
    ]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
        
        mapBarButton.image = UIImage(named: "mapButton")?.withRenderingMode(.alwaysOriginal)
        searchBarButton.image = UIImage(named: "searchButton")?.withRenderingMode(.alwaysOriginal)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        
    }

    //MARK: Status Bar Configuration
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    override func viewDidAppear(_ animated: Bool) {
            navigationController?.navigationBar.barStyle = .black

    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return businesses.count
    }
    

   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
    let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! PopularCollectionViewCell
    
    cell.nameLabel.text = businesses[indexPath.row].businessName
    cell.lengthLabel.text = businesses[indexPath.row].businessAddress
    cell.reviewsLabel.text = String(businesses[indexPath.row].businessReviews)
    cell.imageView.image = businesses[indexPath.row].featuredImage
    cell.imageView.layer.cornerRadius = 5.0
    cell.starView?.rating = businesses[indexPath.row].businessStars
    return cell
    }
 
    

}
