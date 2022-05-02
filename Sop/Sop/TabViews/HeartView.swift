//
//  HeartView.swift
//  Sop
//
//  Created by 윤가희 on 2022/05/01.
//

import SwiftUI

struct HeartView: View {
    var body: some View {
        ScrollView(){
            VStack{
                HStack{
                    Text("Love")
                        .font(.custom("BrandonGrotesque-BoldItalic", size: 36))
                        .foregroundColor(Color("TextColor"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                } //App logo
                .padding(.top, 16.0)
                .padding([.leading, .bottom], 16.0)
                .ignoresSafeArea()


            }
        }
    }
}

struct HeartView_Previews: PreviewProvider {
    static var previews: some View {
        HeartView()
    }
}
