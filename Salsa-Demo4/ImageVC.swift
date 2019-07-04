//
//  ImageVC.swift
//  Salsa-Demo4
//
//  Created by Emil Safier on 7/3/19.
//  Copyright © 2019 Emil Safier. All rights reserved.
//

import UIKit

class ImageVC: UIViewController, UIScrollViewDelegate {

    //  MARK: - Outlets
    @IBOutlet weak var scrollView: UIScrollView!    {
        didSet {
            scrollView.delegate = self
            scrollView.minimumZoomScale = 1.0
            scrollView.maximumZoomScale = 5.0
        }
    }
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var largeImageView: UIImageView!
    @IBOutlet weak var filterMenuConstraint: NSLayoutConstraint!
    @IBOutlet weak var filterBarButton: UIBarButtonItem!
    
    //  MARK: - Properities
    var photo = UIImage(named: "")
    var titleImage = "Select image"
    var selectedImage = 0
    private let sectionInsets = UIEdgeInsets(top: 2.0,left: 4.0,bottom: 2.0,right: 4.0)
    private let itemsPerRow: CGFloat = 6
    var artifactsFiltered = [Artifact]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = titleImage
        largeImageView.image = photo
        collectionView.delegate = self
        collectionView.dataSource = self
        artifactsFiltered = artifacts
        
    }
    
    //  MARK: - Scroll View functions
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return contentView
    }
    
    //  MARK: - Action - Filter Menu
    @IBAction func displayMenu(_ sender: UIBarButtonItem) {
        toggleFilterMenu()
    }
    
    func toggleFilterMenu() -> Void {
        let newShift:CGFloat!
        if self.filterMenuConstraint.constant == CGFloat(20.0) {
            filterBarButton.tintColor = UIColor.green
            filterBarButton.image = UIImage(named: "filter")
            newShift = CGFloat(-400.0)
            largeImageView.alpha = 1
        } else {
            filterBarButton.image = UIImage(named: "cancel")
            filterBarButton.tintColor = UIColor.red
            largeImageView.alpha = 0.8
            newShift = CGFloat(20.0)
        }
        UIView.animate (withDuration: 0.3,
                        delay: 0,
                        options: .transitionCrossDissolve, //.curveEaseIn ,
            animations: { () -> Void in
                self.filterMenuConstraint.constant = newShift
                self.view.layoutIfNeeded()
        },
            completion: nil )
    }
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}


extension ImageVC:  UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    //  number of sections
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    //  number of items per section
    func collectionView(_ collectionView: UICollectionView,numberOfItemsInSection section: Int) -> Int {
        return self.artifactsFiltered.count
    }
    //  cell content
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell  {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ArtifactCell", for: indexPath) as! ArtifactCollectionViewCell
        cell.backgroundColor = .black
        let photoName = artifactsFiltered[indexPath.row].imageName
        let photo = UIImage(named: photoName)
        cell.imageView.image = photo
        return cell
    }
    
    //  MARK: - Flow Layout
    //  return cell size
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        let paddingSpace = sectionInsets.left * (itemsPerRow + 1)
        let availableWidth = view.frame.width - paddingSpace
        let widthPerItem = availableWidth / itemsPerRow
        print("widthPerItem: \(widthPerItem)")
        return CGSize(width: widthPerItem, height: widthPerItem)
    }
    //  spacing between cells
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return sectionInsets
    }
    // spacing setting
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return sectionInsets.left
    }
    //  selected image in collection view cell copied to largeImage view;  title
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        selectedImage = indexPath.row
        updateDisplay(selected: selectedImage)
        //        photo  =  UIImage(named: artifactsFiltered[selectedImage].imageName)
        //        largeImageView.image  = photo
        //
        //        titleImage =  artifactsFiltered[selectedImage].imageTitle
        //        navigationItem.title = titleImage
    }
    
    func updateDisplay(selected: Int){
        photo  =  UIImage(named: artifactsFiltered[selected].imageName)
        largeImageView.image  = photo
        titleImage =  artifactsFiltered[selected].imageTitle
        navigationItem.title = titleImage
    }
}
