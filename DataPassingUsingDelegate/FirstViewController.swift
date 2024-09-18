//
//  ViewController.swift
//  DataPassingUsingDelegate
//
//  Created by User on 16/09/24.
//

import UIKit

struct Emp {
    
    var empName:String?
    var empId:String?
    var empSallary:String?
    
}

class FirstViewController: UIViewController, EmpDataDelegate {
    func sendEmpData(_ Emp: Emp) {
        
        arr.append(Emp)
        
        tblView.reloadData()
    }
    

    
    @IBOutlet weak var tblView: UITableView!
    
    var arr:[Emp] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpTableView( tblView)
    }

    func setUpTableView(_ tableView: UITableView) {
        
        tableView.delegate = self
        tableView.dataSource = self
        tblView.reloadData()
    }
    
    
    @IBAction func didTappedAddEmployeeDataButton(_ sender: UIButton) {
        
        if let vc = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController {
            
            vc.delegate = self
            self.navigationController?.pushViewController(vc, animated: true)
            
        }
    }
    

}

extension FirstViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tblView.dequeueReusableCell(withIdentifier: "CustomTableViewCell", for: indexPath) as! CustomTableViewCell
        var arr = arr[indexPath.item]
        
        // assign the data into outlets.
        cell.empName.text = arr.empName
        cell.empid.text = arr.empId
        cell.empSallary.text = arr.empSallary
        
        return cell
    }
    
    
}

