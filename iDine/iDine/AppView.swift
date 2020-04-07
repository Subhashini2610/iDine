//
//  AppView.swift
//  iDine
//
//  Created by Narayanaswamy, Subhashini (623) on 07/04/20.
//  Copyright © 2020 Narayanaswamy, Subhashini (623). All rights reserved.
//

import SwiftUI

struct AppView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "list.dash")
                    Text("Menu")
                }

            OrderView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("Order")
                }
        }
    }
}

struct AppView_Previews: PreviewProvider {
    
    static let order = Order()
    
    static var previews: some View {
        AppView().environmentObject(order)
    }
}
