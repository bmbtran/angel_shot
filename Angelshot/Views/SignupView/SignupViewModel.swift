import Foundation
import SwiftUI

class SignupViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var frameText: String = ""
    @Published var isValidFrameText: Bool = true
    @Published var frameoneText: String = ""
    @Published var isValidFrameoneText: Bool = true
}
