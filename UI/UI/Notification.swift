//
//  Notification.swift
//  UI
//
//  Created by Aditya kumar on 07/04/21.
//

import SwiftUI

struct Notification: View {
    var body: some View {
        ZStack {
            lighGreayColor.edgesIgnoringSafeArea(.all)
            VStack{
                Image("notificationImage")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 250.0, height: 250.0, alignment: .center)
                    .clipShape(Circle())
                noti()
                NavigationLink(
                    destination: Home(),
                    label: {
                        Text("Allow")
                            .bold()
                            .frame(width: 200, height: 70, alignment: .center)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(15)
                            .padding(.bottom, 20)
                    })
                Text("SKIP")
                    .foregroundColor(.gray)
            }
            .padding()
        }
    }
}

struct Notification_Previews: PreviewProvider {
    static var previews: some View {
        Notification()
    }
}

struct noti: View {
    var body: some View {
        Text("Notifications")
            .navigationBarTitle("", displayMode: .inline)
            .font(.system(size: 40))
            .padding()
        Text("Stay notified about new course")
            .font(.title3)
            .padding(.bottom, 1)
        Text("updates, Scoreboard stats and")
            .font(.title3)
            .padding(.bottom, 1)
        Text("new friends follows")
            .font(.title3)
            .padding(1)
            .padding(.bottom, 50)
    }
}
