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
        ZStack{
            VStack(alignment: .leading){
                HStack{
                    Button(action: {print("Prev")}){
                        Image("Moob_Prev").padding().hidden()
                    }
                    Spacer()
                    Button(action: {print("Home")}){
                        Image("Moob_Home").padding().hidden()
                    }
                }
                VStack(alignment: .leading){
                    Image("Moob_Logo")
                    Text(descriptionText).font(.system(size: 20, weight: .thin, design: .default)).foregroundColor(Color(red: 125/255, green: 125/255, blue: 125/255))
                }.padding().offset(x: 20, y: -110)
                Spacer()
            }
        }
    }
}

struct TopView_Previews: PreviewProvider {
    static var previews: some View {
        TopView()
    }
}
