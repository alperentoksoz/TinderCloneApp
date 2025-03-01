//
//  BottomControlsStackView.swift
//  TinderClone
//
//  Created by Alperen Toksöz on 1.04.2020.
//  Copyright © 2020 Alperen Toksöz. All rights reserved.
//

import UIKit

protocol BottomControlsStackViewDelegate: class {
    func handleLike()
    func handleDislike()
    func handleRefresh()
}

class BottomControlsStackView: UIStackView {
    
    // MARK: - Properties
    
    weak var delegate: BottomControlsStackViewDelegate?
    
    let refreshButton = UIButton(type: .system)
    let dislikeButton = UIButton(type: .system)
    let superlikeButton = UIButton(type: .system)
    let likeButton = UIButton(type: .system)
    let bootsButton = UIButton(type: .system)
    
    // MARK: - Lifecycle
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        heightAnchor.constraint(equalToConstant: 100).isActive = true
        distribution = .fillEqually
        
        refreshButton.setImage(#imageLiteral(resourceName: "refresh_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        dislikeButton.setImage(#imageLiteral(resourceName: "dismiss_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        superlikeButton.setImage(#imageLiteral(resourceName: "super_like_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        likeButton.setImage(#imageLiteral(resourceName: "like_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        bootsButton.setImage(#imageLiteral(resourceName: "boost_circle").withRenderingMode(.alwaysOriginal), for: .normal)
        
        refreshButton.addTarget(self, action: #selector(handleRefresh), for: .touchUpInside)
        
        likeButton.addTarget(self, action: #selector(handleLike), for: .touchUpInside)
        
        dislikeButton.addTarget(self, action: #selector(handleDislike), for: .touchUpInside)
        
        [refreshButton,dislikeButton,superlikeButton,likeButton,bootsButton].forEach { (view) in
            addArrangedSubview(view)
        }
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Selectors
    
    @objc func handleRefresh() {
        delegate?.handleRefresh()
    }
    
    @objc func handleLike() {
        delegate?.handleLike()
    }
    
    @objc func handleDislike() {
        delegate?.handleDislike()
    }
    
    
    // MARK: - Helpers
}
