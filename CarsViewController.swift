//
//  ViewController.swift
//  Automobili2
//
//  Created by Pejo on 7/8/19.
//  Copyright © 2019 pejo015. All rights reserved.
//

import UIKit

class CarsViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource, UICollectionViewDelegate{

    let cellld = "cellld"
    
    var collectionView: UICollectionView!
    
    let cars = [Car(name: "Ferrari T8", price: 20.30, age: 1999, model:"Alpina", imageName: "Ferrari T8"),
                Car(name: "Aston Martin DB11", price: 20.30, age: 1999, model:"Alpina", imageName: "Aston Martin DB11"),
                Car(name: "Cadillac Fleetwood", price: 20.30, age: 1999, model:"Alpina", imageName: "Cadillac Fleetwood"),
                Car(name: "Bentley", price: 20.30, age: 1999, model:"Alpina", imageName: "Bentley"),
                Car(name: "BMW Alpina B10", price: 20.30, age: 1999, model:"Alpina", imageName: "BMW Alpina B10."),
                Car(name: "Alfa Romeo", price: 20.30, age: 1999, model:"Alpina", imageName: "Alfa Romeo"),
                Car(name: "Audi", price: 20.30, age: 1999, model:"Alpina", imageName: "Audi"),
                
                Car(name: "Chrysler Fifth Avenue", price: 20.30, age: 1999, model:"Alpina", imageName: "Chrysler Fifth Avenue"),
                
                Car(name: "Jaguar", price: 20.30, age: 1999, model:"Alpina", imageName: "Jaguar"),
                
                Car(name: "Jeep.", price: 20.30, age: 1999, model:"Alpina", imageName: "Jeep."),
                
                Car(name: "Lamborghini", price: 20.30, age: 1999, model:"Alpina", imageName: "Lamborghini"),
                
                Car(name: "Land Rover", price: 20.30, age: 1999, model:"Alpina", imageName: "Land Rover"),
                
                Car(name: "Lexus", price: 20.30, age: 1999, model:"Alpina", imageName: "Lexus"),
                
                Car(name: "Maserati", price: 20.30, age: 1999, model:"Alpina", imageName: "Maserati"),
                
                Car(name: "Mercedes-Benz W124 E60 AMG", price: 20.30, age: 1999, model:"Alpina", imageName: "Mercedes-Benz W124 E60 AMG"),
                
                Car(name: "Porsche", price: 20.30, age: 1999, model:"Alpina", imageName: "Porsche"),
                
                Car(name: "Rolls Royce", price: 20.30, age: 1999, model:"Alpina", imageName: "Rolls Royce"),
                
                Car(name: "Volkswagen Golf", price: 20.30, age: 1999, model:"Alpina", imageName: "Volkswagen Golf")
    ]
    
    
    func layoutCollectionView() {
        
        view.addSubview(collectionView)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        
        let trailing = collectionView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0)
        
        let leading = collectionView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0)
        
        let top = collectionView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0)
        
        let bottom = collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0)
        NSLayoutConstraint.activate([trailing,leading,top,bottom])
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let flowelayout = UICollectionViewFlowLayout()
        collectionView = UICollectionView(frame: self.view.bounds, collectionViewLayout: flowelayout)
        
       layoutCollectionView()

        
        collectionView.delegate = self
        collectionView.dataSource = self 
        
        
        collectionView.backgroundColor = UIColor.customLightBlueColor
        
        navigationItem.title = "Car"
        navigationController?.navigationBar.barTintColor = UIColor.customRedColor
        
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white,
                                                                   NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20)]
        
        collectionView.register(CarCollectionViewCell.self, forCellWithReuseIdentifier: cellld)
    }
    
    func collectionView(_ _collectionView:UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cars.count
    }
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellld, for: indexPath) as! CarCollectionViewCell
        cell.car = cars[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView:UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt
        indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width / 2) - 16, height: 100)
    }
    func collectionView(_ collectionView: UICollectionView,layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt
        section: Int) -> UIEdgeInsets {
        return  UIEdgeInsets(top: 8, left: 8, bottom: 8, right: 8)
    }
}

