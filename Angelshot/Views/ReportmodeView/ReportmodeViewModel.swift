import Foundation
import SwiftUI

class ReportmodeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var frameText: String = ""
    @Published var isValidFrameText: Bool = true
    @Published var languageText: String = ""
    @Published var isValidLanguageText: Bool = true
    @Published var frameoneText: String = ""
    @Published var isValidFrameoneText: Bool = true
    @Published var labelfourText: String = ""
}
