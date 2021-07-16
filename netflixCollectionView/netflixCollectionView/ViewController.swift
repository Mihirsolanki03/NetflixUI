//
//  ViewController.swift
//  netflixCollectionView
//
//  Created by Mihir Solanki on 06/07/21.
//

import UIKit
struct Movies {
    var name: String
}

class ViewController: UIViewController , UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
  
    
   var array = [Movies(name: "Netflix Orignals"),Movies(name: "Trending Now"),Movies(name: "Popular On Netflix"),Movies(name: "Indian"),Movies(name: "Hollywood")]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
       
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        array.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customTVC") as! customTVC
        cell.label.text = array[indexPath.row].name
        cell.collectionView.tag = indexPath.row
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 180
    }
    func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String? {
        return ""
    }
    

}
