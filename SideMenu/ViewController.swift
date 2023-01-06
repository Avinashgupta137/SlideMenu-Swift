//
//  ViewController.swift
//  SideMenu
//
//  Created by avinash on 05/01/23.
//

import UIKit

class ViewController: UIViewController , UITableViewDelegate, UITableViewDataSource {
   

    
    var arrdata = ["name", "surname", "full name" , "last name"]
    var arrstring = ["person.circle.fill"]
    @IBOutlet var sideView:UIView!
    @IBOutlet var sideber: UITableView!
    
    var issideViewOpen : Bool = false
    override func viewDidLoad() {
        super.viewDidLoad()
        self.sideber.delegate = self
        self.sideber.dataSource = self
        sideber.isHidden = true
       // sideber.backgroundColor = UIColor.gray
        issideViewOpen = false
        
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrdata.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        
       // cell.img.image = arrstring[indexPath.row]
        cell.lbltitle.text = arrdata[indexPath.row]
        return cell
    }
    
    @IBAction func SwipAction(_ sender: Any) {
        UIView.animate(withDuration: 3.0) { [self] in
            sideber.isHidden = true
            print("right")

        }
        
    }
    
    
    @IBAction func btnMenu(_ sender: UIButton){
        sideber.isHidden = false
        sideView.isHidden = false
        
        self.view.bringSubviewToFront(sideView)
        
        if !issideViewOpen {
            issideViewOpen = true
            sideView.frame = CGRect(x: 0, y: 103, width: 0, height: 499)
            sideber.frame = CGRect(x: 0, y: 0, width: 0, height: 499)
            UIView.setAnimationDelegate(self)
            UIView.setAnimationDuration(0.3)
            UIView.beginAnimations("TableAnimation", context: nil)
           
            UIView.commitAnimations()
            UIView.animate(withDuration: 0.7) { [self] in
                sideView.frame = CGRect(x: 0, y: 103, width: 259, height: 499)
                sideber.frame = CGRect(x: 0, y: 0, width: 259, height: 499)
            }
        } else {
            sideber.isHidden = true
            sideView.isHidden = true
            issideViewOpen = false
            sideView.frame = CGRect(x: 0, y: 103, width: 0, height: 499)
            sideber.frame = CGRect(x: 0, y: 0, width: 0, height: 499)
            UIView.setAnimationDelegate(self)
            UIView.setAnimationDuration(0.3)
            UIView.beginAnimations("TableAnimation", context: nil)
            sideView.frame = CGRect(x: 0, y: 103, width: 259, height: 499)
            sideber.frame = CGRect(x: 0, y: 0, width: 259, height: 499)
            UIView.commitAnimations()
            
        }
    }

}

