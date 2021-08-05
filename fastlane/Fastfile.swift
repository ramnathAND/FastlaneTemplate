// This file contains the fastlane.tools configuration
// You can find the documentation at https://docs.fastlane.tools
//
// For a list of all available actions, check out
//
//     https://docs.fastlane.tools/actions
//

import Foundation

class Fastfile: LaneFile {
	func betaLane() {
	desc("Push a new beta build to TestFlight")
		//buildApp(scheme: "FastlaneTemplate")
		//uploadToTestflight(username: "codeexceptional@gmail.com")
    let eOptions: [String: Any]? = ["uk.co.codeexceptional.FastlaneTemplate": "FastlaneTemplateAdHoc"]
    buildApp(scheme: "FastlaneTemplate", exportMethod: "ad-hoc")
    firebaseAppDistribution(app: "1:73732707249:ios:917442185bc3e7d1c32390", testers: "ramnath.suthakar@googlemail.com", releaseNotes: "Lots of amazing new features to test out!")
	}
}
