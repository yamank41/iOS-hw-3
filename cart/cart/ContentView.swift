//
//  ContentView.swift
//  cart
//
//  Created by Yaman Koujan on 22/03/2022.
//

import SwiftUI

struct ContentView: View {
    var ExpensesArray = [Expenses( store: "المحل: zara",  paid: 21.350,  profileImage: "z",  purchases: "المصروفات:", l: "قميص أبيض"),
                         Expenses( store: "المحل: adidas",  paid: 30.000 ,  profileImage: "a",  purchases: "المصروفات:", l: "حذاء أبيض-"),
                         Expenses( store: "المحل: gait",  paid: 570.950,  profileImage: "g",  purchases: "المصروفات:", l:  "apple macbook pro"),
                         Expenses( store: "المحل: saray",  paid: 43.000,  profileImage: "s",  purchases: "المصروفات:", l: "عطر")]
    @State var my = 0.5
    var body: some View {
        
        
        ZStack{
            Color.yellow.opacity(my)
                .ignoresSafeArea(.all)
        VStack{
            Text("المصروفات")
                .font(.system(size: 50))
            List{
                ForEach(ExpensesArray, id: \.id) {oneExp in
                    HStack{
                        Image("\(oneExp.profileImage)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100, alignment: .leading)
                        Spacer()
                        VStack{
                            Text("\(oneExp.store)")
                            Text("السعر: \(oneExp.paid)")
                            Text("\(oneExp.purchases)")
                            Text("\(oneExp.l)")
                        }
                    }
                }
            }.listStyle(.plain)
            Slider(value: $my, in: 0...1)
        }
        }.accentColor(Color.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
