//
//  ViewController.swift
//  FruitTableView
//
//  Created by Yun Xu on 9/20/21.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
   
    let arr = ["dragon fruit","durian","lychee","mangosteen","passsion fruit"]
    
  
    
    @IBOutlet weak var fruitTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fruitTableView.delegate=self
        fruitTableView.dataSource=self
        // Do any additional setup after loading the view.
    }
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 240
//    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.fruitImg.image = UIImage(named: "fruit\(indexPath.row+1)")
        cell.fruitName.text = arr[indexPath.row]
        return cell
    }
}

