//
//  GitCell.swift
//  GithubDemo
//
//  Created by Luis Liz on 2/5/16.
//  Copyright © 2016 codepath. All rights reserved.
//

import UIKit

class GitCell: UITableViewCell {

    @IBOutlet weak var repoNameLabel: UILabel!
    @IBOutlet weak var forkLabel: UILabel!
    @IBOutlet weak var forkImageView: UIImageView!
    @IBOutlet weak var favLabel: UILabel!
    @IBOutlet weak var favImageView: UIImageView!
    
    var repo: GithubRepo! {
        didSet {
            repoNameLabel.text = repo.name
            forkLabel.text = "\(repo.forks)"
            favLabel.text = "\(repo.stars)"
            
            
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
