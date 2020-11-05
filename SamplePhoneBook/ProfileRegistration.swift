//
//  ProfileRegistration.swift
//  SamplePhoneBook
//
//  Created by 久富稜也 on 2020/10/22.
//

import SwiftUI

struct ProfileRegistration: View {
    
    init() {
        UINavigationBar.appearance().tintColor = .systemGray6
        UINavigationBar.appearance().barTintColor = .systemTeal
        UINavigationBar.appearance().titleTextAttributes = [.foregroundColor: UIColor.white]
    }
    
    @State var name = ""
    @State var phoneNum = ""
    @State var addressNum = ""
    @State var address = ""
    
    
    var body: some View {
        
        NavigationView {
            ZStack {
                Color(#colorLiteral(red: 0.7083092332, green: 0.8691392541, blue: 0.9798682332, alpha: 1))
                    .edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .center) {
                    Image(systemName: "person.crop.circle")
                        .resizable()
                        .frame(width: 200, height: 200)
                    
                    TextField("氏名を入力", text: $name)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 350,height: 50)
                    
                    TextField("電話番号を入力", text: $phoneNum)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 350, height: 50)
                    
                    HStack(spacing: 5) {
                        TextField("郵便番号を入力", text: $addressNum)
                            .textFieldStyle(RoundedBorderTextFieldStyle())
                            .frame(width: 285, height: 40)
                        
                        Button(action: {}) {
                            Text("検索")
                                .foregroundColor(Color.white)
                                .padding(10)
                                .background(Color(#colorLiteral(red: 0.1411764771, green: 0.3960784376, blue: 0.5647059083, alpha: 1)))
                                .cornerRadius(50)
                                .frame(width: 60, height: 30)
                        }
                    }
                    TextField("住所を入力", text: $address)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                        .frame(width: 350, height: 50)
                    
                    Button(action: {}) {
                        Text("登録する")
                            .frame(width: 350, height: 50)
                            .foregroundColor(name.isEmpty || phoneNum.isEmpty ? Color(#colorLiteral(red: 0, green: 0, blue: 0, alpha: 0.5)) : Color.black)
                            .background(name.isEmpty || phoneNum.isEmpty ?  Color(#colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)) : Color(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1)))
                    }.disabled(name.isEmpty || phoneNum.isEmpty)
                }.navigationBarTitle("プロフィール登録", displayMode: .inline)
            }
        }
    }
}
struct ProfileRegistration_Previews: PreviewProvider {
    static var previews: some View {
        ProfileRegistration()
    }
}
