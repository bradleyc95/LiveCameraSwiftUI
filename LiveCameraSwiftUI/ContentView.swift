//
//  ContentView.swift
//  LiveCameraSwiftUI
//
//  Created by Bradley Cox on 2/6/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var model = FrameHandler()
    let heightRatio: CGFloat = 0.5
    
    var body: some View {
        GeometryReader { geo in
            
            ZStack{
                Color.white
                VStack{
                    FrameView(image: model.frame)
                        .frame(width: geo.size.width, height: geo.size.height*heightRatio, alignment: .leading)
                       // .ignoresSafeArea()
                    Spacer()
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
