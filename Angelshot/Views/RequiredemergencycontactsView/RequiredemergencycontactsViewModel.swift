import Foundation
import SwiftUI

class RequiredemergencycontactsViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isAlertShow = false
    @Published var alertTitle = ""
    @Published var alertDescription = ""
    @Published var frameText: String = ""
    @Published var isValidFrameText: Bool = true
    @Published var frameoneText: String = ""
    @Published var isValidFrameoneText: Bool = true
    @Published var frametwoText: String = ""
    @Published var isValidFrametwoText: Bool = true
    @Published var framethreeText: String = ""
    @Published var isValidFramethreeText: Bool = true
    @Published var framefourText: String = ""
    @Published var isValidFramefourText: Bool = true
    @Published var languageText: String = ""
    @Published var isValidLanguageText: Bool = true
    @Published var isActionSheetShow: Bool = false
    @Published var isImagePickerShow: Bool = false
    @Published var selectedImage: UIImage = .init()
    @Published var imagePickerSource = UIImagePickerController.SourceType.photoLibrary

    func showAlert(_ title: String, _ message: String) {
        self.isAlertShow = true
        self.alertTitle = title
        self.alertDescription = message
    }
}
