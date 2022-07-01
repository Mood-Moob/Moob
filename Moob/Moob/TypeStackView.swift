//
//  TypeStackView.swift
//  Moob
//
//  Created by 노연주 on 2022/07/01.
//

import SwiftUI

struct TypeStackView: View {
    var typeImage1 = ""
    var typeImage2 = ""
    var typeImage3 = ""
    var typeImage4 = ""
    var typeName1 = ""
    var typeName2 = ""
    var typeName3 = ""
    var typeName4 = ""
    var typeDetination1 = ChooseMbtiView()
    var typeDetination2 = ChooseMbtiView()
    var typeDetination3 = ChooseMbtiView()
    var typeDetination4 = ChooseMbtiView()
    
    var body: some View {
        VStack{
            HStack{
                TypeView(typeImage: typeImage1, typeName: typeName1, typeDestination: typeDetination1)
                TypeView(typeImage: typeImage2, typeName: typeName2, typeDestination: typeDetination2)
            }
            HStack{
                TypeView(typeImage: typeImage3, typeName: typeName3, typeDestination: typeDetination3)
                TypeView(typeImage: typeImage4, typeName: typeName4, typeDestination: typeDetination4)
            }
        }
    }
}

struct TypeStackView_Previews: PreviewProvider {
    static var previews: some View {
        TypeStackView()
    }
}
