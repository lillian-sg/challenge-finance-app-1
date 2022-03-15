//
//  ActivityTableViewCell.swift
//  FinanceApp
//
//  Created by Lillian Peixoto on 15/03/22.
//

import Foundation
import UIKit

class ActivityTableViewCell: UITableViewCell {

    var image: UIImageView = {
        var image = UIImageView(frame: CGRect(x: 0, y: 0, width: 48, height: 48))
        return image //inicializando cada elemento
    }()
    
    var nameLabel: UILabel = {
            let nameLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 61, height: 20))
            return nameLabel
        }()
    
    var valueLabel: UILabel = {
        var valueLabel = UILabel(frame:  CGRect(x: 0, y: 0, width: 314, height: 18))
        return valueLabel
    }()
    
    var hourLabel: UILabel = {
        var hourLabel = UILabel(frame:  CGRect(x: 0, y: 0, width: 314, height: 30))
        return hourLabel
    }()
   

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        setUpCell()
        setupConstraints()
    }
    
    func configure(cellModel: ActivityCellModel) {
        image.image = UIImage(named: cellModel.imageName)
        nameLabel.text = cellModel.name
        valueLabel.text = cellModel.value
        hourLabel.text = cellModel.hour
    }
    func setUpCell() {
        self.addSubview(nameLabel)
        self.addSubview(image)
        self.addSubview(valueLabel)
        self.addSubview(hourLabel)
    }

    func setupConstraints() {
        
        nameLabel.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -253).isActive = true
        nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true

        image.widthAnchor.constraint(equalToConstant: 48).isActive = true
        image.heightAnchor.constraint(equalToConstant: 48).isActive = true
        image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        image.topAnchor.constraint(equalTo: self.topAnchor, constant: 0).isActive = true

        valueLabel.widthAnchor.constraint(equalToConstant: 314).isActive = true
        valueLabel.heightAnchor.constraint(equalToConstant: 18).isActive = true
        valueLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        valueLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
        
        hourLabel.widthAnchor.constraint(equalToConstant: 314).isActive = true
        hourLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        hourLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 0).isActive = true
        hourLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 20).isActive = true
    }

}
