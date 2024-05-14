//
//  ImageCircleView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/13/24.
//

import SwiftUI

struct ImageCircleView: View {
    @Binding var selectedImage: Image?
    @Binding var isShowingImagePicker: Bool
    
    var body: some View {
        VStack {
            if let image = selectedImage {
                image
                    .resizable()
                    .scaledToFill()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .onTapGesture {
                        self.isShowingImagePicker.toggle()
                    }
            } else {
                Image(systemName: "person.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                    .shadow(radius: 10)
                    .onTapGesture {
                        self.isShowingImagePicker.toggle()
                    }
            }
        }
    }
}
