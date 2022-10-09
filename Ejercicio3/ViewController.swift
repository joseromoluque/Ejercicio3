//
//  ViewController.swift
//  Ejercicio3
//
//  Created by José Santiago  Romo Luque on 7/10/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource  {
    
    @IBOutlet weak var tvOutlet: UITableView?
    
    let collection = [
            Album(name: "CR7", artist: "Cristiano ronaldou", imageURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cristiano-ronaldo-of-portugal-looks-dejected-following-news-photo-1624346993.jpg?crop=1.00xw:1.00xh;0,0&resize=640:*"),
            Album(name: "MESSI", artist: "Lionel Messi", imageURL: "https://fcb-abj-pre.s3.amazonaws.com/img/jugadors/MESSI.jpg"),
            Album(name: "CR7", artist: "Cristiano ronaldou", imageURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cristiano-ronaldo-of-portugal-looks-dejected-following-news-photo-1624346993.jpg?crop=1.00xw:1.00xh;0,0&resize=640:*"),
            Album(name: "MESSI", artist: "Lionel Messi", imageURL: "https://fcb-abj-pre.s3.amazonaws.com/img/jugadors/MESSI.jpg"),
            Album(name: "CR7", artist: "Cristiano ronaldou", imageURL: "https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/cristiano-ronaldo-of-portugal-looks-dejected-following-news-photo-1624346993.jpg?crop=1.00xw:1.00xh;0,0&resize=640:*"),
            Album(name: "MESSI", artist: "Lionel Messi", imageURL: "https://fcb-abj-pre.s3.amazonaws.com/img/jugadors/MESSI.jpg")]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collection.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Set album name
        let cell: MusicCell = tableView.dequeueReusableCell(withIdentifier: "musicCell", for: indexPath) as! MusicCell
        let albumName = collection[indexPath.row].getTitle()
        cell.titleOutlet.text = albumName
        //Set album image
        let url = URL(string: collection[indexPath.row].getImg())
        let data = try? Data(contentsOf: url!)
        let loadedImage: UIImage = UIImage(data: data!)!
        cell.imageOutlet.image = loadedImage
        //Set album author
        let author = collection[indexPath.row].getArtist()
        cell.artistOutlet.text = author
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tvOutlet?.dataSource = self
        tvOutlet?.delegate = self
    }
 


}


