//
//  ItemDetail.swift
//  iDine
//
//  Created by Narayanaswamy, Subhashini (623) on 01/04/20.
//  Copyright © 2020 Narayanaswamy, Subhashini (623). All rights reserved.
//

import SwiftUI

struct ItemDetail: View {
    @EnvironmentObject var order: Order
    var item: MenuItem
    
    var body: some View {
        VStack{
            ZStack(alignment: .bottomTrailing) {
                Image(item.mainImage)
                Text("PC: \(item.photoCredit)")
                .padding(4)
                .background(Color.black)
                .font(.caption)
                .foregroundColor(.white)
                .offset(x: -5, y: -5)
            }
            Text(item.description)
                .padding()
            Button("Order This") {
                self.order.add(item: self.item)
            }.font(.headline)
            Spacer()
        }
        .navigationBarTitle(Text(item.name), displayMode: .inline)
    }
}

struct ItemDetail_Previews: PreviewProvider {
    
    static let order = Order()

    //this is built only in debug mode. It doesn't get built when build for AppStore is done
    static var previews: some View {
        ItemDetail(item: MenuItem.example).environmentObject(order)
    }
}
