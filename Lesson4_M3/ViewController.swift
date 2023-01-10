//
//  ViewController.swift
//  Lesson4_M3
//
//  Created by mac on 4/1/23.
//

import UIKit

class ViewController: UIViewController {
    
    var movies: [Movie] = [Movie(image: "1", title: "Новые смарт часы за 100 сом", icon: "6", viewsAmounr: 1258743),
                           Movie(image: "2", title: "Популярная еда в США", icon: "5", viewsAmounr: 27439840),
                           Movie(image: "6", title: "Как накачаться за неделю", icon: "3", viewsAmounr: 736829),
                           Movie(image: "1", title: "Новые смарт часы за 100 сом", icon: "6", viewsAmounr: 1258743),
                           Movie(image: "2", title: "Популярная еда в США", icon: "5", viewsAmounr: 27439840),
                           Movie(image: "6", title: "Как накачаться за неделю", icon: "3", viewsAmounr: 736829),
                           Movie(image: "1", title: "Новые смарт часы за 100 сом", icon: "6", viewsAmounr: 1258743),
                           Movie(image: "2", title: "Популярная еда в США", icon: "5", viewsAmounr: 27439840),
                           Movie(image: "6", title: "Как накачаться за неделю", icon: "3", viewsAmounr: 736829)]
    var shorts: [Shorts] = [Shorts(image: "1_shorts", title: "My daily skincare", viewsAmount:                                1238239),
                            Shorts(image: "2_shorts", title: "5 упражнений для красивой осанки", viewsAmount: 163828),
                            Shorts(image: "3_shorts", title: "Правильное питание - это не вкусно?", viewsAmount: 1238239),
                            Shorts(image: "4_shorts", title: "Как я избавилась от акне?", viewsAmount: 634279),
                            Shorts(image: "5_shorts", title: "Капсула образов на весну", viewsAmount: 972561),
                            Shorts(image: "6_shorts", title: "Как снимался самый популярный танец", viewsAmount: 46217),
                            Shorts(image: "7_shorts", title: "Мой переезд в Италию", viewsAmount: 825678)]

    @IBOutlet weak var moviesTableView: UITableView!
    
    
    @IBOutlet weak var shortsCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let shortsLayout = UICollectionViewFlowLayout()
        shortsCollectionView.collectionViewLayout = shortsLayout
        shortsLayout.scrollDirection = .horizontal
        
        moviesTableView.showsVerticalScrollIndicator = false
        shortsCollectionView.showsHorizontalScrollIndicator = false
    }
    

}

extension ViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return shorts.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "shorts_cell", for: indexPath) as! ShortsCell
        
        cell.shortsImageView.image = UIImage(named: shorts[indexPath.row].image)
        cell.shortsTitleLabel.text = shorts[indexPath.row].title
        cell.shortsAmoutViewsLabel.text = "\(shorts[indexPath.row].viewsAmount) просмотров"
        return cell
    }
}

extension ViewController:UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 160, height: 260)
    }
}


extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movie_cell", for: indexPath) as! MovieCell
        
        cell.movieImageView.image = UIImage(named: movies[indexPath.row].image)
        cell.chanelIconImageView.image = UIImage(named: movies[indexPath.row].icon)
        cell.movieTitleLabel.text = movies[indexPath.row].title
        cell.movieViewsAmoutLabel.text = "\(movies[indexPath.row].viewsAmounr) просмотров"
        
        return cell
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 400
    }
    
    //ОТОБРАЗИТЬ КАРТИНКУ
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movieVc = storyboard?.instantiateViewController(withIdentifier: "movie_vc") as! MovieViewController
        
        movieVc.img = movies[indexPath.row].image
        navigationController?.pushViewController(movieVc, animated: true)
    }
}
