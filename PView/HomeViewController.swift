//
//  ViewController.swift
//  PView
//
//  Created by Tahmid Zaman on 8/21/21.
//

import UIKit

class HomeViewController: UIViewController {
   
    

    var tableView = UITableView(frame: CGRect(x:0, y:0, width: 200, height: 200))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .blue
        setUpLayouts()
    }


}

extension HomeViewController { // this extension will allow you to call functions anywhere and from any file
    func setUpTableView(){
        view.addSubview(tableView) // we added the tableview to the view
        tableView.delegate = self
        tableView.dataSource = self
        tableView.translatesAutoresizingMaskIntoConstraints = false // telling Xcode not to use the constraints that come with this view use the one that we give
        
        // CREATE ARRAY OF CELLS AND ACTIVATE
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 10),
            tableView.leadingAnchor.constraint(equalTo: self.view.leadingAnchor, constant: 10),
            tableView.trailingAnchor.constraint(equalTo: self.view.trailingAnchor, constant: -10),
            tableView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor, constant: -10)
        ])
        // register our cell programaticlly instead of connecting main.storyboard
        tableView.register(HomeCell.self, forCellReuseIdentifier: "HomeCell") // we are connecting cell and tableview with each other 
        
    }
    func setUpLayouts(){
        setUpTableView()
        
    }
    
    }

    extension HomeViewController: UITableViewDelegate, UITableViewDataSource {
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 30 // creates number of rows
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeCell") as! HomeCell
            //cell.textLabel?.text = "Here"
            return cell // creates cells
    }
}

