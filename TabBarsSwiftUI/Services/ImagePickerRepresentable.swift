//
//  ImagePickerRepresentable.swift
//  TabBarsSwiftUI
//
//  Created by Alex Kogut on 5/13/24.
//

import SwiftUI
import UIKit

struct ImagePicker: View {
    @Binding var selectedImage: Image?
    @Binding var isShowingImagePicker: Bool
    
    var body: some View {
        ImagePickerRepresentable(selectedImage: $selectedImage, isShowingImagePicker: $isShowingImagePicker)
    }
}


struct ImagePickerRepresentable: UIViewControllerRepresentable {
    @Binding var selectedImage: Image?
    @Binding var isShowingImagePicker: Bool
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIViewController(context: Context) -> UIImagePickerController {
        let imagePicker = UIImagePickerController()
        imagePicker.delegate = context.coordinator
        imagePicker.sourceType = .photoLibrary
        return imagePicker
    }
    
    func updateUIViewController(_ uiViewController: UIImagePickerController, context: Context) {
        // No need to update the UIImagePickerController
    }
    
    class Coordinator: NSObject, UINavigationControllerDelegate, UIImagePickerControllerDelegate {
        let parent: ImagePickerRepresentable
        
        init(parent: ImagePickerRepresentable) {
            self.parent = parent
        }
        
        func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
            if let image = info[.originalImage] as? UIImage {
                parent.selectedImage = Image(uiImage: image)
            }
            parent.isShowingImagePicker = false
        }
        
        func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
            parent.isShowingImagePicker = false
        }
    }
}
