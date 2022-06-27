//
//  ChooseMbtiView.swift
//  Moob
//
//  Created by 노연주 on 2022/04/25.
//

import SwiftUI

struct ChooseMbtiView: View {
    var body: some View {
        NavigationView{
            VStack(alignment:.leading){
                HStack(alignment:.top){
                    Spacer()
                    NavigationLink(destination: MainView().navigationBarHidden(true)){
                        Image("Moob_Home")
                            .resizable()
                            .frame(width: 25, height: 25, alignment: .topTrailing)
                            .offset(x: -20)
                    }
                }
                TopView(descriptionText: "Choose your MBTI.")
            }
        }
    }
}

struct ChooseMbtiView_Previews: PreviewProvider {
    static var previews: some View {
        ChooseMbtiView()
    }
}
