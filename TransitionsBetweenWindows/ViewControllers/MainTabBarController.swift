//
//  MainTabBarController.swift
//  TransitionsBetweenWindows
//
//  Created by Mikhail on 01.03.2022.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabBarController()
    }
    
    
    
    func setupTabBarController() {
        let scheduleViewController = createNavigationController(
            viewController: ScheduleViewController(),
            itemName: "calendar.badge.clock",
            itemImage: "person"
        )
        
        let tasksViewController = createNavigationController(
            viewController: TasksViewController(),
            itemName: "Tasks",
            itemImage: "text.badge.checkmark"
        )
        
        let contactsViewController = createNavigationController(
            viewController: ContactsViewController(),
            itemName: "Contacts",
            itemImage: "rectangle.stack.person.crop"
        )

        viewControllers = [scheduleViewController, tasksViewController, contactsViewController]
        
    }
    
    func createNavigationController(viewController: UIViewController,
                                    itemName: String,
                                    itemImage: String) -> UINavigationController
    {
        let item = UITabBarItem(title: itemName, image: UIImage(systemName: itemImage), tag: 0)
        
        let navigationController = UINavigationController(rootViewController: viewController)
        navigationController.tabBarItem = item
        return navigationController
    }

}
