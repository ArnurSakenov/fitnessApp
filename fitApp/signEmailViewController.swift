//
//  signEmailViewController.swift
//  fitApp
//
//  Created by Artyom Prima on 29.12.2022.
//

import UIKit

class signEmailViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.06831727177, green: 0.09892369062, blue: 0.1742413342, alpha: 1)
    //снизу код добавил чтобы отличать экраны от друг друга , этот код добавляет сверху название экрана
        self.title = "Sign In"
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.titleTextAttributes = [ NSAttributedString.Key.foregroundColor : UIColor.white ]
    // можно потом удалить его , тебе он вроде не нужен 
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
