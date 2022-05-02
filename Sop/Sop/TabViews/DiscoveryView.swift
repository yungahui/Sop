//
//  DiscoveryView.swift
//  Sop
//
//  Created by 윤가희 on 2022/05/01.
//

import SwiftUI

struct DiscoveryView: View {
    @State private var isDetailView = false
    @State private var showModal = false
    
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView(){
            VStack{
                HStack{
                    Text("Gallery")
                        .font(.custom("BrandonGrotesque-BoldItalic", size: 36))
                        .foregroundColor(Color("TextColor"))
                        .multilineTextAlignment(.leading)
                    Spacer()
                } //App logo
                .padding(.top, 16.0)
                .padding(.leading, 16.0)
                .padding(.bottom, 4.0)
                .ignoresSafeArea()
                
                HStack{
                    Spacer()
                    Button(action: {
                        self.showModal = true
                    }){
                        Image(systemName: "sparkles")//바꿔야댐
                            .font(Font.system(size: 28))
                            .foregroundColor(.black)
                    }.sheet(isPresented: self.$showModal){
                        FilterModal()
                    }
                }
                .padding(.horizontal, 16.0)
                .padding(.bottom, 4.0)
                
                ScrollView{
                    let pictureNames = Album1.map{ key, value in
                        return key
                    }
                    LazyVGrid(columns: columns){
                        ForEach(pictureNames, id: \.self){ pictureName in
                            Image(pictureName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 176, height: 176, alignment: .center)
                                .clipped()

                        }
                    }
                    .padding(.horizontal, 16.0)
                }
                
                /*
                HStack(spacing: 0){
                    Button(action: {
                        isDetailView.toggle()
                    }){
                        Image("IMG_3684")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 176, height: 176, alignment: .center)
                            .clipped()
                            .fullScreenCover(isPresented: $isDetailView){
                            PhotoDetail(SopPhoto: "IMG_3684", Album: Album1)
                        }
                    }
                    .padding(.trailing, 6.0)
                    
                    Image("IMG_3684")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 176, height: 176, alignment: .center)
                        .clipped()
                }
                */

            }
        }
    }
}

struct DiscoveryView_Previews: PreviewProvider {
    static var previews: some View {
        DiscoveryView()
    }
}
