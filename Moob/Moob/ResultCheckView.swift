//
//  ResultCheckView.swift
//  Moob
//
//  Created by 노연주 on 2022/07/03.
//

import SwiftUI

struct ResultCheckView: View {
    var body: some View {
        NavigationView{
            VStack{
                HStack{
                    NavigationLink(destination: ChooseMbtiView().navigationBarHidden(true)){
                        Image("Moob_Prev")
                            .resizable()
                            .frame(width: 12, height: 20, alignment: .topTrailing)
                    }.padding(30)
                    Spacer()
                    NavigationLink(destination: MainView().navigationBarHidden(true)){
                        Image("Moob_Home")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .topTrailing)
                    }.padding(30)
                }
            }
        }
    }
}

struct ResultCheckView_Previews: PreviewProvider {
    static var previews: some View {
        ResultCheckView()
    }
}
