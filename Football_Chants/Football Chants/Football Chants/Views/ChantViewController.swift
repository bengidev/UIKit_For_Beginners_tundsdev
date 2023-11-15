//
//  ChantViewController.swift
//  Football Chants
//
//  Created by Bambang Tri Rahmat Doni on 15/11/23.
//

import UIKit

class ChantViewController: UIViewController {
    
    // MARK: ViewController
    private lazy var teamsViewModel = TeamsViewModel()
    
    // MARK: UI
    private lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.translatesAutoresizingMaskIntoConstraints = false
        tv.backgroundColor = .clear
        tv.rowHeight = UITableView.automaticDimension
        tv.estimatedRowHeight = 44
        tv.separatorStyle = .none
        tv.register(TeamTableViewCell.self, forCellReuseIdentifier: TeamTableViewCell.cellId)
        
        return tv
    }()
    
    // MARK: Lifecycle
    override func loadView() {
        super.loadView()
        
        setupNavigation()
        setupTableView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .systemBackground
    }
    
}

private extension ChantViewController {
    private func setupNavigation() -> Void {
        self.navigationController?.navigationBar.topItem?.title = "Football Chants"
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    private func setupTableView() -> Void {
        self.tableView.delegate = self
        self.tableView.dataSource = self
        
        self.view.addSubview(tableView)
        
        NSLayoutConstraint.activate([
            self.tableView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            self.tableView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            self.tableView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            self.tableView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor),
        ])
    }
}

// MARK: UITableViewDelegate
extension ChantViewController: UITableViewDelegate {
    
}

// MARK: UITableViewDataSource
extension ChantViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamsViewModel.teams.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: TeamTableViewCell.cellId,
                                                       for: indexPath) as? TeamTableViewCell else { return UITableViewCell() }
        
        let item = teamsViewModel.teams[indexPath.row]
        cell.configure(with: item, delegate: self)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

// MARK: TeamTableViewCellDelegate
extension ChantViewController: TeamTableViewCellDelegate {
    func didPlayPressed(for team: Team) {
        print("Selected Team: \(team.name)")
        
        self.teamsViewModel.togglePlay(for: team)
        self.tableView.reloadData()
    }
}
