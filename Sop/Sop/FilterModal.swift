//
//  FilterModal.swift
//  Sop
//
//  Created by 윤가희 on 2022/05/01.
//

import SwiftUI

struct FilterModal: View {
    @Environment(\.presentationMode) var presentationMode
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }){
                    Image(systemName: "xmark")
                        .font(Font.system(size: 18, weight: .semibold))
                        .foregroundColor(Color("TextColor"))
                }
                Spacer()
            }//close button
            .padding([.leading,.top], 24.0)
            .padding(.bottom, 40.0)
            HStack(spacing: 0){
                Text("Camera")
                    .font(.custom("BrandonGrotesque-BoldItalic", size: 26))
                    .foregroundColor(Color("TextColor"))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.horizontal, 24.0)
            .padding(.bottom, 14.0)
            
            FilterList(subTitle: "Nikon", elements: ["Nikon FM1", "Nikon FM2"])
            FilterList(subTitle: "Canon", elements: ["Canon A-1"])
            FilterList(subTitle: "Single Use", elements: ["Kodak Funsaver", "Harman XP2"])
            
            HStack(spacing: 0){
                Text("Filter")
                    .font(.custom("BrandonGrotesque-BoldItalic", size: 26))
                    .foregroundColor(Color("TextColor"))
                    .multilineTextAlignment(.leading)
                Spacer()
            }
            .padding(.top, 24.0)
            .padding(.horizontal, 24.0)
            .padding(.bottom, 14.0)
            
            FilterList(subTitle: "Fuji", elements: ["FujiColor C200"])
            FilterList(subTitle: "Kodak", elements: ["Kodak ColorPlus", "Kodak Gold"])
            Spacer()
            HStack(spacing: 0){
                Button(action:{
                    
                }){
                    Text("Reset")
                        .font(Font.system(size: 20))
                        .foregroundColor(Color("TextColor"))
                        .frame(width: 130, height: 70)
                        .background(Color("ResetButton"))
                }
                Button(action:{
                    
                }){
                    Text("Apply")
                        .font(Font.system(size: 20, weight: .bold))
                        .foregroundColor(.white)
                        .frame(width: 260, height: 70)
                        .background(Color("TextColor"))
                }
            }
        }
        .ignoresSafeArea()
    }
}

struct FilterList: View{
    
    var subTitle : String
    var elements : [String] = []
    
    var body: some View {
        VStack(spacing: 0){
            HStack{
                Text(subTitle)
                    .font(Font.system(size: 16, weight: .bold))
                    .foregroundColor(Color("TextColor"))
                Spacer()
            }
            .padding(.horizontal, 24.0)
            HStack(spacing: 8){
                ForEach(elements, id: \.self){ name in
                    Button(action:{}){
                        Text(name)
                    }.buttonStyle(TagInactive())
                }
                Spacer()
            }
            .padding(.horizontal, 24.0)
            .padding(.top, 8.0)
        }
        .padding(.bottom, 16)
    }
    
}

struct FilterModal_Previews: PreviewProvider {
    static var previews: some View {
        FilterModal()
    }
}
