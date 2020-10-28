//
//  ProfileCell.swift
//  SamplePhoneBook
//
//  Created by 久富稜也 on 2020/10/15.
//

import SwiftUI
struct ProfileCell: View {
    var body: some View {
        
        HStack {
            Image(systemName: "person.crop.circle")
                .resizable()
                .frame(width: 80, height: 80)
                .padding()
            
            VStack(alignment: .leading) {
                Text("愛知太郎")
                    .font(.title)
                    .fontWeight(.heavy)
                    .baselineOffset(40)
                
                HStack {
                    Button(action: {}) {
                        Text("編集")
                            .frame(width: 50, height: 60)
                    }
                    
                    Button(action: {}) {
                        Text("削除")
                            .foregroundColor(.red)
                            .frame(width: 50, height: 60)
                    }
                }
            }
        }
        .padding()
        .frame(width: 300, height: 150)
        .border(Color.black, width: 2)
        .cornerRadius(5.0)
    }
}

struct ProfileCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCell()
    }
}

