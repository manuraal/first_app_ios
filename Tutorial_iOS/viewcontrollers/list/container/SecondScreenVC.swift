//
//  SecondScreenVC.swift
//  Pods
//
//  Created by Manuel on 18/02/2021.
//

import UIKit

class SecondScreenVC: UIViewController, LZViewPagerDataSource, LZViewPagerDelegate {
    
    enum SecondScreenPage {
        case LIST;
        case MAP;
    }

    @IBOutlet weak var viewPager: LZViewPager!
    
    private var subControllers:[UIViewController] = []
    
    var selectedTab = SecondScreenPage.LIST
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewPager.dataSource = self
        viewPager.delegate = self
        viewPager.hostController = self
        
        let vc1 = ListVC()
        vc1.title = "Lugares"
        
        let vc2 = MapVC()
        vc2.title = "Mapa"
        
        subControllers = [vc1, vc2]
        viewPager.reload()
        
        var index = 0
        switch selectedTab {
        case .MAP:
            index = 1
            break;
        default:
            index = 0
        }
        viewPager.select(index: index)
    }


    func numberOfItems() -> Int {
        subControllers.count
    }
    
    func controller(at index: Int) -> UIViewController {
        subControllers[index]
    }
    
    func button(at index: Int) -> UIButton {
        let button = UIButton()
        button.setTitleColor(UIColor.black, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 12)
        
        return button
    }

}
