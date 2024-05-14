//
//  ProfileView.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 4/30/24.
//

import SwiftUI

struct ProfileView: View {
    
    @State private var selectedImage: Image?
    @State private var isShowingImagePicker = false
    
    var body: some View {
        VStack {
            ImageCircleView(selectedImage: $selectedImage, isShowingImagePicker: $isShowingImagePicker)
                .padding()
            
            PrimarySecondaryTextView(primaryText: "Alex", secondaryText: "iOS Developer")
                .padding()
            
            Spacer()
            List {
                SocialView(type: .git)
                SocialView(type: .linked)
                SocialView(type: .web)
            }
        }
        .sheet(isPresented: $isShowingImagePicker) {
            ImagePicker(selectedImage: self.$selectedImage, isShowingImagePicker: self.$isShowingImagePicker)
        }
        .navigationTitle("Profile")
    }
}
