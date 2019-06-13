//
//  DetailViewController.swift
//  StoreSearch
//
//  Created by Felix Lin on 6/13/19.
//  Copyright © 2019 Felix Lin. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        modalPresentationStyle = .custom
        transitioningDelegate = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    // MARK: Actions
    @IBAction func close() {
        dismiss(animated: true, completion: nil)
    }
}

extension DetailViewController: UIViewControllerTransitioningDelegate {
    
    func presentationController(forPresented presented: UIViewController,
                                presenting: UIViewController?,
                                source: UIViewController) -> UIPresentationController? {
        return DimmingPresentationController(presentedViewController: presented, presenting: presenting)
    }
}
