//
//  ContentView.swift
//  StayRequest
//
//  Created by Thongchai Subsaidee on 12/7/2564 BE.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var requestVM = RequestViewModel()
    
    var body: some View {
        NavigationView {
            
            PimaryView()
                .navigationBarTitle("Primary View")
                .environmentObject(requestVM)
                
            
            SecondView()
        }
//        .phoneOnlyStackNavigationView()
    }
}

extension View {
    func phoneOnlyStackNavigationView() -> some View {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return AnyView(self.navigationViewStyle(StackNavigationViewStyle()))
        }else {
            return AnyView(self)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


