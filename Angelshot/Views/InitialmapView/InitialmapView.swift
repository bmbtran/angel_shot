import SwiftUI

struct InitialmapView: View {
    @StateObject var initialmapViewModel = InitialmapViewModel()
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    var body: some View {
        NavigationView {
            VStack {
                ZStack(alignment: .bottomLeading) {
                    GoogleMapView(zoomEnable: .constant(true), defaultZoomLevel: .constant(5.0),
                                  locationEnable: .constant(true))
                        .frame(width: UIScreen.main.bounds.width,
                               height: UIScreen.main.bounds.height,
                               alignment: .topLeading)
                    Text("tabbar")
                        .minimumScaleFactor(0.5)
                        .multilineTextAlignment(.leading)
                        .frame(width: UIScreen.main.bounds.width - 20,
                               height: getRelativeHeight(86.0),
                               alignment: .bottomLeading)
                        .background(ColorConstants.Bluegray50)
                        .padding(.top, getRelativeHeight(758.0))
                }
                .hideNavigationBar()
                .frame(width: UIScreen.main.bounds.width, alignment: .topLeading)
                .background(ColorConstants.WhiteA700)
                .padding(.top, getRelativeHeight(30.0))
                .padding(.bottom, getRelativeHeight(10.0))
                Group {
                    NavigationLink(destination: ProfileView(),
                                   tag: "ProfileView",
                                   selection: $initialmapViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                    NavigationLink(destination: HomeView(),
                                   tag: "HomeView",
                                   selection: $initialmapViewModel.nextScreen,
                                   label: {
                                       EmptyView()
                                   })
                }
            }
            .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height)
            .background(ColorConstants.WhiteA700)
            .ignoresSafeArea()
            .actionSheet(isPresented: $initialmapViewModel.isActionSheetShow, content: {
                ActionSheet(title: Text("Choose"), buttons: [
                    .default(Text("Camera"), action: {
                        if UIImagePickerController.isSourceTypeAvailable(.camera) {
                            initialmapViewModel.imagePickerSource = .camera
                            initialmapViewModel.isImagePickerShow = true
                        } else {
                            initialmapViewModel.showAlert("Error", "Camera is not available!")
                        }
                    }),
                    .default(Text("Photo Library"), action: {
                        initialmapViewModel.imagePickerSource = .photoLibrary
                        initialmapViewModel.isImagePickerShow = true
                    }),
                    .destructive(Text("Cancel"))
                ])
            })
            .sheet(isPresented: $initialmapViewModel.isImagePickerShow, content: {
                MediaPicker(sourceType: initialmapViewModel.imagePickerSource,
                            mediaTypes: ["public.image"]) { image, url in
                    if let image = image {
                        initialmapViewModel.selectedImage = image
                    }
                }
            })
            .hideNavigationBar()
        }
        .hideNavigationBar()
    }
}

struct InitialmapView_Previews: PreviewProvider {
    static var previews: some View {
        InitialmapView()
    }
}
