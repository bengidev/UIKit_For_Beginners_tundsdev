//
//  ChantViewController.swift
//  Football Chants
//
//  Created by Bambang Tri Rahmat Doni on 15/11/23.
//

import UIKit

class ChantViewController: UIViewController {
    
    // MARK: UI
    private lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .clear
        tv.rowHeight = UITableView.automaticDimension
        tv.estimatedRowHeight = 44
        tv.separatorStyle = .none
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "Cell")
        
        return tv
    }()
    
    // MARK: Lifecycle
    override func loadView() {
        super.loadView()
        
        setupTableView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
    }
    
}

private extension ChantViewController {
    func setupTableView() -> Void {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 5),
            tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -5),
            tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 5),
            tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -5),
        ])
    }
}

// MARK: UITableViewDelegate
extension ChantViewController: UITableViewDelegate {
    
}

// MARK: UITableViewDataSource
extension ChantViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.frame = cell.frame.inset(by: UIEdgeInsets(top: .zero, left: 5.0, bottom: 5.0, right: .zero))
        cell.layer.cornerRadius = 10
        
        switch indexPath.row {
        case 0:
            cell.backgroundColor = .systemRed
        case 1:
            cell.backgroundColor = .systemGreen
        case 2:
            cell.backgroundColor = .systemBlue
        default:
            cell.backgroundColor = .black
        }
        
        return cell
    }
    
}
