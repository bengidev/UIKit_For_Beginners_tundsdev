//
//  TeamTableViewCell.swift
//  Football Chants
//
//  Created by Bambang Tri Rahmat Doni on 15/11/23.
//

import UIKit

final class TeamTableViewCell: UITableViewCell {
    static let cellId = "TeamTableViewCell"
    
    // MARK: UI
    private lazy var containerView: UIView = {
        let vw = UIView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        
        return vw
    }()

    private lazy var contentStackView: UIStackView = {
        let vw = UIStackView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.spacing = 5
        vw.axis = .vertical
        
        return vw
    }()

    private lazy var badgeImageView: UIImageView = {
        let vw = UIImageView()
        vw.translatesAutoresizingMaskIntoConstraints = false
        vw.contentMode = .scaleAspectFit
        
        return vw
    }()

    private lazy var playButton: UIButton = {
        let btn = UIButton()
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.setImage(UIImage(systemName: "play.circle.fill",
                             withConfiguration: UIImage.SymbolConfiguration(pointSize: 32)),
                     for: .normal)
        btn.tintColor = .white
        
        return btn
    }()

    
    private lazy var nameLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 0
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 18, weight: .bold)
        lb.textColor = .white
        
        return lb
    }()

    private lazy var foundedLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 0
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 12, weight: .light)
        lb.textColor = .white
        
        return lb
    }()
    
    private lazy var jobLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 0
        lb.textAlignment = .left
        lb.font = .italicSystemFont(ofSize: 12)
        lb.textColor = .white
        
        return lb
    }()

    private lazy var infoLabel: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.numberOfLines = 0
        lb.textAlignment = .left
        lb.font = .systemFont(ofSize: 12, weight: .medium)
        lb.textColor = .white
        
        return lb
    }()
    
    // MARK: Lifecycle
    override func layoutSubviews() {
        super.layoutSubviews()
        
        self.containerView.layer.cornerRadius = 10
        self.containerView.layer.shadowRadius = 3
        self.containerView.layer.shadowOpacity = 0.5
    }
    
    func configure() -> Void {
        self.badgeImageView.image = TeamType.manchesterUnited.badge
        self.nameLabel.text = "Manchester United"
        self.foundedLabel.text = "1878"
        self.jobLabel.text = "Current Manager: Erik ten Hag"
        self.infoLabel.text = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        
        self.contentView.addSubview(self.containerView)
        
        self.containerView.backgroundColor = TeamType.arsenal.background
        self.containerView.addSubview(self.contentStackView)
        self.containerView.addSubview(self.badgeImageView)
        self.containerView.addSubview(self.playButton)
        
        self.contentStackView.addArrangedSubview(nameLabel)
        self.contentStackView.addArrangedSubview(foundedLabel)
        self.contentStackView.addArrangedSubview(jobLabel)
        self.contentStackView.addArrangedSubview(infoLabel)
        
        NSLayoutConstraint.activate([
            self.containerView.topAnchor.constraint(equalTo: self.contentView.topAnchor, constant: 7),
            self.containerView.bottomAnchor.constraint(equalTo: self.contentView.bottomAnchor, constant: -7),
            self.containerView.leadingAnchor.constraint(equalTo: self.contentView.leadingAnchor, constant: 7),
            self.containerView.trailingAnchor.constraint(equalTo: self.contentView.trailingAnchor, constant: -7),
            
            self.badgeImageView.widthAnchor.constraint(equalToConstant: 50),
            self.badgeImageView.heightAnchor.constraint(equalToConstant: 50),
            self.badgeImageView.topAnchor.constraint(equalTo: self.contentStackView.topAnchor),
            self.badgeImageView.leadingAnchor.constraint(equalTo: self.containerView.leadingAnchor, constant: 10),
            
            self.contentStackView.topAnchor.constraint(equalTo: self.containerView.topAnchor, constant: 10),
            self.contentStackView.bottomAnchor.constraint(equalTo: self.containerView.bottomAnchor, constant: -15),
            self.contentStackView.leadingAnchor.constraint(equalTo: self.badgeImageView.trailingAnchor, constant: 10),
            self.contentStackView.trailingAnchor.constraint(equalTo: self.playButton.leadingAnchor, constant: -5),
            
            self.playButton.widthAnchor.constraint(equalToConstant: 44),
            self.playButton.heightAnchor.constraint(equalToConstant: 44),
            self.playButton.trailingAnchor.constraint(equalTo: self.containerView.trailingAnchor, constant: -10),
            self.playButton.centerYAnchor.constraint(equalTo: self.containerView.centerYAnchor),
        ])
    }
}
