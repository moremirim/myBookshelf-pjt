//
//  searchViewController.swift
//  MyBookshelf
//
//  Created by 박미림 on 5/9/24.
//
import SnapKit
import UIKit

class searchViewController: UIViewController {
    
    private let searchBar = {
        let searchBar = UISearchBar()
        searchBar.backgroundColor = .lightGray
        
        return searchBar
    }()
    
    private lazy var collectionView = UICollectionView(frame: .zero, collectionViewLayout: self.setLayout())

    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.addSubview(searchBar)
        self.view.addSubview(collectionView)
        
        self.view.backgroundColor = .white
        
        searchBar.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            searchBar.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor),
            searchBar.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            searchBar.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor)
        ])
        
        collectionView.snp.makeConstraints {
            $0.top.equalTo(searchBar.snp.bottom).offset(16)
            //$0.leading.trailing.equalTo(self.view.safeAreaLayoutGuide)
            $0.horizontalEdges.bottom.equalTo(self.view.safeAreaLayoutGuide)
    
        }
    }
    

    func setLayout() -> UICollectionViewLayout {
        
        let config = UICollectionLayoutListConfiguration(appearance: .plain)
        return UICollectionViewCompositionalLayout.list(using: config)
    }

}
