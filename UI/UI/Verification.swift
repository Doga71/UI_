//
//  Verification.swift
//  UI
//
//  Created by Aditya kumar on 07/04/21.
//

import SwiftUI

struct Verification: View {
    var body: some View {
        ZStack{
            lighGreayColor.edgesIgnoringSafeArea(.all)
            VStack{
                veri()
                HStack(spacing: 25){
                    TextField("", text:
                                .constant(""))
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                        .padding(.leading)
                        .frame(width: 40, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 12)
                        .padding(.leading)
                        //.background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1)
                        )
                    TextField("", text:
                                .constant(""))
                        .offset(x: 12)
                        .frame(width: 40, height: 75)
                        .padding(.leading)
                        //.background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1)
                        )
                    TextField("", text:
                                .constant(""))
                        .frame(width: 40, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 12)
                        .padding(.leading)
                        //.background(lighGreyColor)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1)
                        )
                    TextField("", text:
                                .constant(""))
                        .frame(width: 40, height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .offset(x: 12)
                        .padding(.leading)
                        //.background(Color.grey)
                        .overlay(
                            RoundedRectangle(cornerRadius: 5).stroke(lineWidth: 1)
                        )
            
                }
                Text("I did not recieve a code")
                    .padding(.top, 10)

                Text("RESEND")
                    .padding(.top, 5)
                    .padding(.bottom, 10)
                    .foregroundColor(.blue)
                
                NavigationLink(
                    destination: Notification(),
                    label: {
                        Text("CONTINUE")
                            .bold()
                            .frame(width: 280, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(15)
                    })
            }
        }
        
    }
}

struct Verification_Previews: PreviewProvider {
    static var previews: some View {
        Verification()
    }
}

struct veri: View {
    var body: some View {
        Text("Verification")
            .navigationBarTitle("Register", displayMode: .inline)
            .font(.title3)
            .foregroundColor(.black)
        Text("We texted you a code to verify")
            .font(.title)
            .foregroundColor(.gray)
        Text("your phone number")
            .font(.title)
            .foregroundColor(.gray)
            .padding(.bottom, 80)
    }
}
