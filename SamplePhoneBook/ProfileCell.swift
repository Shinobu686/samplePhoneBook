//
//  ProfileCell.swift
//  SamplePhoneBook
//
//  Created by 久富稜也 on 2020/10/15.
//

import SwiftUI

struct ProfileCell: View {
    var body: some View {
        
        
        HStack(alignment: .bottom) {
            HStack {
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 80, height: 100)
                
                Text("愛知 太郎")
                    .font(.title)
                    .fontWeight(.heavy)
                    .baselineOffset(40)
            }
            
            Button(action: {}) {
                Text("編集")
                    .frame(width: 50, height: 60)
            }
            Button(action: {}) {
                Text("削除")
                    .foregroundColor(Color.red)
                    .frame(width: 50, height: 60)
            }
            
            
        }
        
        
    }
    
    
}

struct ProfileCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCell()
            .previewLayout(.fixed(width: 400, height: 100))
    }
}
