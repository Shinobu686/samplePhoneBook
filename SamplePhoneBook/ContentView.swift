//
//  ContentView.swift
//  SamplePhoneBook
//
//  Created by 久富稜也 on 2020/10/12.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        
        TabView {
            ProfileList()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("プロフィール一覧")
                }
            
            ProfileRegistration()
                .tabItem {
                    Image(systemName: "person.crop.circle")
                    Text("プロフィール登録")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
