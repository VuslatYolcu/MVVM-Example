//
//  HomeViewModel.swift
//  DesignPattern
//
//  Created by Vuslat Yolcu on 8.04.2023.
//

import Foundation

final class HomeViewModel {
    
    var welcomeMessage: ObservableObject<String?> = ObservableObject(nil)
   
    func getLoggedUser() {
        let userInfo = NetworkService.shared.getLoggedInUser()
        guard let name = userInfo?.firstName, let lastName = userInfo?.lastName else {
            return
        }
        welcomeMessage.value = "Hello \(name) \(lastName)"
    }
}
