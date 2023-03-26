import Foundation
import SwiftUI

class ReportmodeOneViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var frameText: String = ""
    @Published var isValidFrameText: Bool = true
}
