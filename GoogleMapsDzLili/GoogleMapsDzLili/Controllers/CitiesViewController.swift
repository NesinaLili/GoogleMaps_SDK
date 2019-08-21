//
//  CitiesViewController.swift
//  GoogleMapsDzLili
//
//  Created by Лилия on 6/14/19.
//  Copyright © 2019 ITEA. All rights reserved.
//

import UIKit

class CitiesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var citiesArray = CityManager().cities
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {

        if(velocity.y>0) {
            UIView.animate(withDuration: 2.5, delay: 0, options: UIView.AnimationOptions(), animations: {
                self.navigationController?.setNavigationBarHidden(true, animated: true)
            }, completion: nil)

        } else {
            UIView.animate(withDuration: 2.5, delay: 0, options: UIView.AnimationOptions(), animations: {
                self.navigationController?.setNavigationBarHidden(false, animated: true)
            }, completion: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return citiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CitiesTableViewCell
        cell.update(city: citiesArray[indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let vc = storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController

        vc.city = citiesArray[indexPath.row]
        vc.latitude = citiesArray[indexPath.row].location.latitude
        vc.longitude = citiesArray[indexPath.row].location.longitude
        vc.museumArray = citiesArray[indexPath.row].location.museum

        navigationController?.pushViewController(vc, animated: true)
    }
    
}
