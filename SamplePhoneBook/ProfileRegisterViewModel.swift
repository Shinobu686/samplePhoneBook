//
//  ProfileRegisterViewModel.swift
//  SamplePhoneBook
//
//  Created by 久富稜也 on 2020/11/06.
//

import Foundation
import SwiftUI

class ProfileRegisterViewModel: ObservableObject {
    
    @Published var address = AddressResponse(results: [])
    
    
    func get(param: String){
        let url = URL(string: "https://zipcloud.ibsnet.co.jp/api/search?zipcode=\(param)")!
        let request = URLRequest(url: url)
        let task = URLSession.shared.dataTask(with: request) {(data,response,error) in
            guard let data = data else {return}
            do {
                self.address = try
                    JSONDecoder().decode(AddressResponse.self, from: data)
                print(self.address)
            } catch let error {
                print(error)
            }
        }
        task.resume()
    }
}
