//
//  customTVC.swift
//  netflixCollectionView
//
//  Created by Mihir Solanki on 08/07/21.
//

import UIKit
struct MoviesPoster {
    var movie: UIImage
}

class customTVC: UITableViewCell, UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    var array2 = [MoviesPoster(movie: #imageLiteral(resourceName: "sacred")),MoviesPoster(movie: #imageLiteral(resourceName: "family")),MoviesPoster(movie: #imageLiteral(resourceName: "toofan")),MoviesPoster(movie: #imageLiteral(resourceName: "kabir")),MoviesPoster(movie: #imageLiteral(resourceName: "padmavat")),MoviesPoster(movie: #imageLiteral(resourceName: "scam")),MoviesPoster(movie: #imageLiteral(resourceName: "half")),MoviesPoster(movie: #imageLiteral(resourceName: "Haseena-Dillruba")),MoviesPoster(movie: #imageLiteral(resourceName: "family"))]
    
    var array3 = [MoviesPoster(movie: #imageLiteral(resourceName: "half")),MoviesPoster(movie: #imageLiteral(resourceName: "sacred")),MoviesPoster(movie: #imageLiteral(resourceName: "mirza")),MoviesPoster(movie: #imageLiteral(resourceName: "scam")),MoviesPoster(movie: #imageLiteral(resourceName: "family")),MoviesPoster(movie: #imageLiteral(resourceName: "scam")),MoviesPoster(movie: #imageLiteral(resourceName: "half")),MoviesPoster(movie: #imageLiteral(resourceName: "Haseena-Dillruba")),MoviesPoster(movie: #imageLiteral(resourceName: "family"))]
    
    var array4 = [MoviesPoster(movie: #imageLiteral(resourceName: "padmavat")),MoviesPoster(movie: #imageLiteral(resourceName: "bajrangi")),MoviesPoster(movie: #imageLiteral(resourceName: "bajirao")),MoviesPoster(movie: #imageLiteral(resourceName: "kabir")),MoviesPoster(movie: #imageLiteral(resourceName: "family")),MoviesPoster(movie: #imageLiteral(resourceName: "scam")),MoviesPoster(movie: #imageLiteral(resourceName: "half")),MoviesPoster(movie: #imageLiteral(resourceName: "Haseena-Dillruba")),MoviesPoster(movie: #imageLiteral(resourceName: "family"))]
    
    var array5 = [MoviesPoster(movie: #imageLiteral(resourceName: "scam")),MoviesPoster(movie: #imageLiteral(resourceName: "kabir")),MoviesPoster(movie: #imageLiteral(resourceName: "bajirao")),MoviesPoster(movie: #imageLiteral(resourceName: "padmavat")),MoviesPoster(movie: #imageLiteral(resourceName: "Haseena-Dillruba")),MoviesPoster(movie: #imageLiteral(resourceName: "scam")),MoviesPoster(movie: #imageLiteral(resourceName: "half")),MoviesPoster(movie: #imageLiteral(resourceName: "Haseena-Dillruba")),MoviesPoster(movie: #imageLiteral(resourceName: "family"))]
    
   
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var collectionView: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cv", for: indexPath) as! cv
        if collectionView.tag == 0{
        cell.netflixPoster.image = array2[indexPath.row].movie
        }else if collectionView.tag == 1{
        cell.netflixPoster.image = array3[indexPath.row].movie
        }
        else if collectionView.tag == 2{
        cell.netflixPoster.image = array4[indexPath.row].movie
        }
        else{
        cell.netflixPoster.image = array5[indexPath.row].movie
        }
        return cell
            
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView.tag == 0{
        return array2.count
        }
        else if collectionView.tag == 1{
            return array3.count
        }
        else if collectionView.tag == 2{
            return array4.count
        }
        else  {
            return array5.count
        }
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let width =  Int(((frame.width - (1*10) ) / 2 ) )
        return CGSize(width: width, height: width)
    }

}


