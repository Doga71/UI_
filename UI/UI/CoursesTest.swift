//
//  CoursesTest.swift
//  UI
//
//  Created by Aditya kumar on 08/04/21.
//

import SwiftUI

struct CoursesTest: View {private func getScale(proxy: GeometryProxy) -> CGFloat {
    var scale: CGFloat = 1
    
    let x = proxy.frame(in: .global).minX
    
    let diff = abs(x - 32)
    if diff < 100 {
        scale = 1 + (100 - diff) / 500
    }
    
    return scale
}

var body: some View {

ZStack{
    lighGreyColor.edgesIgnoringSafeArea(.all)
VStack{
    
    HStack {
        Button(action: {}) {
            Text("ALL")
        }
        .frame(width: 75, height: 30)
        .background(Color.white)
        .onTapGesture {
            print("ALL")
    }.cornerRadius(15)
        Button("STUDYING", action: {
                        
                    })
        .frame(width: 95, height: 30)
        .background(Color.white)
        .onTapGesture {
            print("STUDYING")
    }.cornerRadius(15)
        Button(action: {}) {
            Text("SAVED")
        }
        .frame(width: 75, height: 30)
        .background(Color.white)
        .onTapGesture {
            print("SAVED")
    }.cornerRadius(15)
    }.padding(.top,140)    
    ZStack{
    ScrollView(.horizontal) {
        HStack(spacing: 50) {
            ForEach(0..<3) { num in
                GeometryReader { proxy in

                            VStack {
                                let scale = getScale(proxy: proxy)
                                
                                Image("a")
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 200, height: 200)
                                    .overlay(
                                        RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5)
                                    )
                                    .clipped()
                                    .cornerRadius(5)
                                    .shadow(radius: 5)
                                    .scaleEffect(CGSize(width: scale, height: scale))
                                    .animation(.easeOut(duration: 0.5))
                                    
                                Text("")
                                    .padding(.top)
                                    .multilineTextAlignment(.center)
                                    .foregroundColor(Color(.label))
                            }.padding()
        
                }
                .frame(width: 200, height: 200)
            }
        }.frame(width: 200, height: 200)
    }
    }.padding()
    

        ZStack{
        ScrollView(.vertical) {
            VStack(spacing: 50) {
                ForEach(0..<3) { num in
                    GeometryReader { proxy in

                        VStack (alignment: .leading){
                                    let scale = getScale(proxy: proxy)
                                    
                                    Image("a")
                                        .resizable()
                                        .scaledToFill()
                                       
                                        .frame(width: 300, height: 350)
                                        .cornerRadius(15)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 0.5)
                                        )
                                        .clipped()
                                        .cornerRadius(25)
                                        .shadow(radius: 5)
                                        .scaleEffect(CGSize(width: scale, height: scale))
                                        .animation(.easeOut(duration: 0.5))
                                        .padding(.bottom, 20)
                                    
                                    Text("abc")
                                        .padding(.bottom)
                                        .multilineTextAlignment(.center)
                                        .foregroundColor(Color(.label))

                                }.padding(.leading, 25)
                    }
                   
                }.frame(width: 350, height: 400)
            }
        }
        }.frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 400)
        .padding(.bottom, 120)
        
    }
        }
}

}
//}

struct CoursesTest_Previews: PreviewProvider {
    static var previews: some View {
        CoursesTest()
    }
}
