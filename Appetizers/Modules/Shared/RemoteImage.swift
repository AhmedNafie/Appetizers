//
//  RemoteImage.swift
//  Appetizers
//
//  Created by Ahmed Nafie on 06/01/2025.
//

import SwiftUI

final class ImageLoader: ObservableObject {
    @Published var image: Image? = nil
    func load(UrlString:String) {
        NetworkManager.shared.downloadImage(fromURLString: UrlString) { uiImage in
            guard let uiImage else { return }
            DispatchQueue.main.async {
                self.image = Image(uiImage: uiImage)

            }
        }
    }
}

struct RemoteImage: View {
    var image: Image?
    var body: some View {
        image?.resizable() ?? Image("food-placeholder").resizable()
    }
}


struct AppetizerRemoteImage: View {
    @StateObject var imageLoader = ImageLoader()
    let urlString: String
    
    var body: some View {
        RemoteImage(image: imageLoader.image)
            .onAppear { imageLoader.load(UrlString: urlString) }
    }
}
