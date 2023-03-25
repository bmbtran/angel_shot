import Foundation
import SwiftUI

class OptionalemergencycontactViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
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
    @Published var framefiveText: String = ""
    @Published var isValidFramefiveText: Bool = true
}
