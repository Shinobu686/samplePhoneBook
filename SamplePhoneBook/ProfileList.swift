//
//  ProfileList.swift
//  SamplePhoneBook
//
//  Created by 久富稜也 on 2020/10/22.
//

import SwiftUI

struct ProfileList: View {
    
    //ナビゲーションバーの色設定
    //ナビゲーションバーのタイトル色設定
    init() {
        UINavigationBar.appearance().tintColor = .systemGray6
        UINavigationBar.appearance().barTintColor = .systemTeal
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack{
                    ForEach(0...4, id: \.self){ _ in
                        NavigationLink(destination: ProfileRegistration()) {
                            ProfileCell()
                        }.navigationBarTitle("プロフィール一覧", displayMode: .inline)
                    }
                }
            }
        }
    }
}

struct ProfileList_Previews: PreviewProvider {
    static var previews: some View {
        ProfileList()
    }
}

