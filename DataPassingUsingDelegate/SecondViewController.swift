//
//  SecondViewController.swift
//  DataPassingUsingDelegate
//
//  Created by User on 16/09/24.
//

import UIKit

protocol EmpDataDelegate: AnyObject {
    func sendEmpData(_ Emp : Emp )
}
class SecondViewController: UIViewController {

    
    @IBOutlet weak var empIdTextfield: UITextField!
    
    @IBOutlet weak var empNameTextField: UITextField!
    
    @IBOutlet weak var empSallary: UITextField!
    
    
    weak var delegate : EmpDataDelegate?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func didTappedSubmitData(_ sender: UIButton) {
        
        delegate?.sendEmpData(Emp(empName: empNameTextField.text!, empId: empIdTextfield.text!, empSallary: empSallary.text!))
        self.navigationController?.popViewController(animated: true)
         
    }
    
    

   

}
