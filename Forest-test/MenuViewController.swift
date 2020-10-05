//
//  MenuViewController.swift
//  Forest-test
//
//  Created by Зоригто Бадмаин on 02.10.2020.
//

import UIKit

class MenuViewController: UIViewController {
    
    @IBOutlet weak var menuTableView: UITableView!
    @IBOutlet weak var groupCollectionView: UICollectionView!
    
    var groups = Group()
    var bludas = TableMenu()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.groupCollectionView.dataSource = self
        self.groupCollectionView.delegate = self
        self.groupCollectionView.register(UINib(nibName: "GroupCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GroupCollectionViewCell")
        
        self.menuTableView.dataSource = self
        self.menuTableView.delegate = self
        self.menuTableView.register(UINib(nibName: "BludaTableViewCell", bundle: nil), forCellReuseIdentifier: "BludaTableViewCell")
    }
}

extension MenuViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return groups.groups.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "GroupCollectionViewCell", for: indexPath) as! GroupCollectionViewCell
        let grup = groups.groups[indexPath.item]
        cell.setupCell(groups: grup)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.groupCollectionView.scrollToItem(at: IndexPath(item: 0, section: 0), at: .centeredHorizontally, animated: false)
        self.menuTableView.reloadData()
    }
    
}

extension MenuViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 5, bottom: 0, right: 5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: UIScreen.main.bounds.width / 3, height: UIScreen.main.bounds.height)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
}

extension MenuViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bludas.bluds.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "BludaTableViewCell", for: indexPath) as! BludaTableViewCell
        
        let blud = bludas.bluds[indexPath.row]
        cell.setupCell(blud: blud)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let vc = storyboard?.instantiateViewController(identifier: "SecondViewController") as? SecondViewController {
            let blud = bludas.bluds[indexPath.row]
            vc.selectLabel = blud.name
            vc.selectImage = blud.image
            
            present(vc, animated: true, completion: nil)
        }
    }
    
}


