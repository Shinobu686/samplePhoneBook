//
//  ProfileRegisterViewModel.swift
//  SamplePhoneBook
//
//  Created by 久富稜也 on 2020/11/06.
//

import Foundation
import SwiftUI

class ProfileRegisterViewModel: ObservableObject {
    
    var address = AddressResponse(results: [])
    
    @Published var addressString = ""
    @Published var showAlert = false
    @Published var alertMessage = ""
    
    func get(param: String, updateUI: @escaping() -> Void){
        let url = URL(string: "https://zipcloud.ibsnet.co.jp/api/search?zipcode=\(param)")!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) {(data,response,error) in
            guard let data = data else {return}
            do {
                let object = try JSONDecoder().decode(AddressResponse.self, from: data)
                
                DispatchQueue.main.async {
                    if object.results == nil {
                        self.showAlert = true
                        self.alertMessage = "検索結果がありません。"
                    } else {
                        self.addressString = (object.results?[0].address1)! + (object.results?[0].address2)! + (object.results?[0].address3)!
                    }
                    updateUI()
                }
                print(self.address)
            } catch let error {
                print(error)
            }
        }
        task.resume()
    }
}
