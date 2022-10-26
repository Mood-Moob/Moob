//
//  MainView.swift
//  Moob
//
//  Created by 노연주 on 2022/04/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        NavigationView{
            VStack{
                TopView(descriptionText: "Choose one and try it.").padding(40).offset(x: 0, y: 0)
                Spacer()
                VStack{
                    NavigationLink(destination: ChooseMbtiView().navigationBarHidden(true)){
                        MenuView(descriptionText: "I know my MBTI", image: "Moob_KnowMyMBTI")
                            .cornerRadius(15)
                            .shadow(color: Color.black.opacity(0.25), radius: 4, x: 2, y: 2).padding(25)
                    }
                    
                    NavigationLink(destination: WebView(urlToLoad: "https://www.16personalities.com/ko")){
                                                MenuView(descriptionText: "Test my MBTI", image: "Moob_TestMBTI")
                                                    .cornerRadius(15)
                                                    .shadow(color: Color.black.opacity(0.25), radius: 4, x: 2, y: 2).padding(25)
                                        }
                }.offset(y: -150)
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
