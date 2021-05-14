//
//  PhoneNo.swift
//  UI
//
//  Created by Aditya kumar on 07/04/21.
//

import SwiftUI

struct PhoneNo: View {
    @State var phoneNo: String = ""
    var body: some View {
        ZStack {
            lighGreayColor.edgesIgnoringSafeArea(.all)
            VStack{
                phone()
//                registerId(emailId: $email).padding(.bottom, 30)
                ZStack{
                phoneNumber(phoneNo: $phoneNo).padding(.bottom, 30).frame(width: 350, height: 50.0, alignment: .center)
                    Image("k")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .clipShape(Circle())
                        .frame(width: 40.0, height: 40.0, alignment: .center)
                        .offset(x:-145, y: -15)
                    Text("+91") .offset(x:-95, y: -15)
                    Text("|") .offset(x:-69, y: -15).foregroundColor(.gray)
                    Text("Mobile Number") .offset(x:10, y: -15).foregroundColor(.gray)

                }
                
                NavigationLink(
                    destination: Verification(),
                    label: {
                        Text("CONTINUE")
                            .bold()
                            .frame(width: 280, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(15)
                    })
            }
            .padding()
        }
    .accentColor(Color(.label))
    }
}

struct PhoneNo_Previews: PreviewProvider {
    static var previews: some View {
        PhoneNo()
    }
}

struct phone: View {
    var body: some View {
        Text("Let's Get Started")
            .navigationBarTitle("", displayMode: .inline)
            .font(.title3)
            .foregroundColor(.black)
        Text("Enter your moblie number to")
            .font(.title2)
            .foregroundColor(.gray)
        Text("enable 2-step Verification")
            .font(.title2)
            .foregroundColor(.gray)
            .padding(.bottom, 90)
    }
}

struct phoneNumber: View {
    @Binding var phoneNo: String
    var body: some View {
        TextField("", text: $phoneNo)
            .padding()
            .background(Color.white)
            .cornerRadius(10.0)
    }
}
