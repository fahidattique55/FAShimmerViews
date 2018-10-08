//
//  Sample1VC.swift
//  FAShimmerViews
//
//  Created by Fahad Attique on 30/09/2018.
//  Copyright © 2018 Fahid Attique. All rights reserved.
//

import UIKit

class Sample1VC: UIViewController {

    
    // MARK: - IBOutlets

    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Class Properties
    
    fileprivate let identifier = "shimmerCell"

    // MARK: - Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewConfigurations()
    }
    

    // MARK: - Functions
    
    func viewConfigurations() {
        tableView.register(UINib(nibName: "SampleShimmerTableViewCell", bundle: nil), forCellReuseIdentifier: identifier)
        tableView.rowHeight = UITableView.automaticDimension
        tableView.estimatedRowHeight = 60
    }
}

extension Sample1VC: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! SampleShimmerTableViewCell
        return cell
    }
}
