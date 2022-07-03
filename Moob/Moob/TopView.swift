//
//  TopView.swift
//  Moob
//
//  Created by 노연주 on 2022/04/25.
//

import SwiftUI

struct TopView: View {
    var descriptionText = ""
    
    var body: some View {
        VStack(){
            HStack{
                Image("Moob_Logo")
                Spacer()
            }.padding(20)
            HStack{
                Text(descriptionText).font(.custom("AppleSDGothicNeo-Thin", size: 20)).foregroundColor(Color(red: 125/255, green: 125/255, blue: 125/255))
                Spacer()
            }.padding(20).offset(x: 0, y: -40)
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
