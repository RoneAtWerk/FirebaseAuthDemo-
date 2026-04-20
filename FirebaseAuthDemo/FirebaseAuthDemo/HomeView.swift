import SwiftUI
import FirebaseAuth


struct HomeView: View {
    @EnvironmentObject var authViewModel: AuthViewModel

    var body: some View {
        VStack(spacing: 20) {
            Text("Home Screen")
                .font(.largeTitle)
                .bold()

            if let email = authViewModel.user?.email {
                Text("Logged in as:")
                Text(email)
                    .foregroundColor(.gray)
            }

            Button("Log Out") {
                authViewModel.signOut()
            }
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color.red)
            .foregroundColor(.white)
            .cornerRadius(10)

            Spacer()
        }
        .padding()
    }
}
