import Foundation
import SwiftUI

class HelpnearbyViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var isHelpnearbyreceivedViewShow: Bool = false
}