//
//  HomeView.swift
//  dFresh-23
//
//  Created by J C’kang on 24/04/2024.
//

import SwiftUI
import UIKit

struct HomeView: View {
    let col = Array(repeating: GridItem(.flexible(minimum: 75)), count: 2)
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: col, pinnedViews: .sectionHeaders) {
                
                Section{
                    
                    ForEach(MyData.colors, id: \.self) { color in
                        
                        Button(action: {
                            // Define action to be performed when the grid item is tapped
                            print("Grid item tapped: \(color)")
                        }) {
                            
                            RoundedRectangle(cornerRadius: 10)
                                .fill(LinearGradient(gradient: Gradient(colors: [color, .white]), startPoint: .topLeading, endPoint: .bottomTrailing))
                                .frame(height: 150)
                        }
                        
                    }
                    
                } header: {
                    
                    Text("For You")
                        .font(.largeTitle.bold())
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                    
                }
            }
            .padding()
        }
    }
}

class HomeViewController: UIHostingController<HomeView> {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder, rootView: HomeView())
    }
}

