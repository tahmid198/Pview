//
//  HomeCell.swift
//  PView
//
//  Created by Tahmid Zaman on 8/22/21.
//

import Foundation

import UIKit
class HomeCell : UITableViewCell {
    
    var homeName = UILabel(frame: CGRect(x: 0, y : 0, width: 20, height: 10))
    
    // similar to viewDidLoad, but for cells
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated) // parameted sould be same as func paramters
                                                        // when you are initialzing classes swift will want to inialize all classes, thats why we use super
        self.backgroundColor = .gray
        setUpView()
    }
}
extension HomeCell{
    func setUpView(){
        self.addSubview(homeName) // we add subview
        homeName.backgroundColor = .orange
        homeName.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            homeName.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            homeName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            homeName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant:  -5),
            homeName.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5)
        ])
        homeName.text = "I Am Here!"
        
    }
}
