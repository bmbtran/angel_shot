import Foundation
import SwiftUI

class LoginViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var frameText1: String = ""
    @Published var isValidFrameText1: Bool = true
    @Published var frameoneText1: String = ""
    @Published var isValidFrameoneText1: Bool = true
}
