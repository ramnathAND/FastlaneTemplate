import Foundation
/**
 Release your beta builds with Firebase App Distribution

 - parameters:
   - ipaPath: Path to your IPA file. Optional if you use the _gym_ or _xcodebuild_ action
   - googleserviceInfoPlistPath: Path to your GoogleService-Info.plist file, relative to the archived product path
   - apkPath: Path to your APK file
   - androidArtifactPath: Path to your APK or AAB file
   - androidArtifactType: Android artifact type. Set to 'APK' or 'AAB'. Defaults to 'APK' if not set
   - app: Your app's Firebase App ID. You can find the App ID in the Firebase console, on the General Settings page
   - firebaseCliPath: **DEPRECATED!** This plugin no longer uses the Firebase CLI - The absolute path of the firebase cli command
   - groups: The groups used for distribution, separated by commas
   - groupsFile: The groups used for distribution, separated by commas
   - testers: Pass email addresses of testers, separated by commas
   - testersFile: Pass email addresses of testers, separated by commas
   - releaseNotes: Release notes for this build
   - releaseNotesFile: Release notes file for this build
   - firebaseCliToken: Auth token for firebase cli
   - debug: Print verbose debug output
   - serviceCredentialsFile: Path to Google service account json

 Release your beta builds with Firebase App Distribution
*/
public func firebaseAppDistribution(ipaPath: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    googleserviceInfoPlistPath: String = "GoogleService-Info.plist",
                                    apkPath: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    androidArtifactPath: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    androidArtifactType: String = "APK",
                                    app: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    firebaseCliPath: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    groups: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    groupsFile: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    testers: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    testersFile: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    releaseNotes: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    releaseNotesFile: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    firebaseCliToken: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                    debug: OptionalConfigValue<Bool> = .fastlaneDefault(false),
                                    serviceCredentialsFile: OptionalConfigValue<String?> = .fastlaneDefault(nil)) {
let ipaPathArg = ipaPath.asRubyArgument(name: "ipa_path", type: nil)
let googleserviceInfoPlistPathArg = RubyCommand.Argument(name: "googleservice_info_plist_path", value: googleserviceInfoPlistPath, type: nil)
let apkPathArg = apkPath.asRubyArgument(name: "apk_path", type: nil)
let androidArtifactPathArg = androidArtifactPath.asRubyArgument(name: "android_artifact_path", type: nil)
let androidArtifactTypeArg = RubyCommand.Argument(name: "android_artifact_type", value: androidArtifactType, type: nil)
let appArg = app.asRubyArgument(name: "app", type: nil)
let firebaseCliPathArg = firebaseCliPath.asRubyArgument(name: "firebase_cli_path", type: nil)
let groupsArg = groups.asRubyArgument(name: "groups", type: nil)
let groupsFileArg = groupsFile.asRubyArgument(name: "groups_file", type: nil)
let testersArg = testers.asRubyArgument(name: "testers", type: nil)
let testersFileArg = testersFile.asRubyArgument(name: "testers_file", type: nil)
let releaseNotesArg = releaseNotes.asRubyArgument(name: "release_notes", type: nil)
let releaseNotesFileArg = releaseNotesFile.asRubyArgument(name: "release_notes_file", type: nil)
let firebaseCliTokenArg = firebaseCliToken.asRubyArgument(name: "firebase_cli_token", type: nil)
let debugArg = debug.asRubyArgument(name: "debug", type: nil)
let serviceCredentialsFileArg = serviceCredentialsFile.asRubyArgument(name: "service_credentials_file", type: nil)
let array: [RubyCommand.Argument?] = [ipaPathArg,
googleserviceInfoPlistPathArg,
apkPathArg,
androidArtifactPathArg,
androidArtifactTypeArg,
appArg,
firebaseCliPathArg,
groupsArg,
groupsFileArg,
testersArg,
testersFileArg,
releaseNotesArg,
releaseNotesFileArg,
firebaseCliTokenArg,
debugArg,
serviceCredentialsFileArg]
let args: [RubyCommand.Argument] = array
.filter { $0?.value != nil }
.compactMap { $0 }
let command = RubyCommand(commandID: "", methodName: "firebase_app_distribution", className: nil, args: args)
  _ = runner.executeCommand(command)
}

/**
 Download the UDIDs of your Firebase App Distribution testers

 - parameters:
   - app: Your app's Firebase App ID. You can find the App ID in the Firebase console, on the General Settings page
   - outputFile: The path to the file where the tester UDIDs will be written
   - firebaseCliToken: Auth token for firebase cli
   - serviceCredentialsFile: Path to Google service account json
   - debug: Print verbose debug output

 Export your testers' device identifiers in a CSV file, so you can add them your provisioning profile. This file can be imported into your Apple developer account using the Register Multiple Devices option. See the [App Distribution docs](https://firebase.google.com/docs/app-distribution/ios/distribute-console#register-tester-devices) for more info.
*/
public func firebaseAppDistributionGetUdids(app: String,
                                            outputFile: String,
                                            firebaseCliToken: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                            serviceCredentialsFile: OptionalConfigValue<String?> = .fastlaneDefault(nil),
                                            debug: OptionalConfigValue<Bool> = .fastlaneDefault(false)) {
let appArg = RubyCommand.Argument(name: "app", value: app, type: nil)
let outputFileArg = RubyCommand.Argument(name: "output_file", value: outputFile, type: nil)
let firebaseCliTokenArg = firebaseCliToken.asRubyArgument(name: "firebase_cli_token", type: nil)
let serviceCredentialsFileArg = serviceCredentialsFile.asRubyArgument(name: "service_credentials_file", type: nil)
let debugArg = debug.asRubyArgument(name: "debug", type: nil)
let array: [RubyCommand.Argument?] = [appArg,
outputFileArg,
firebaseCliTokenArg,
serviceCredentialsFileArg,
debugArg]
let args: [RubyCommand.Argument] = array
.filter { $0?.value != nil }
.compactMap { $0 }
let command = RubyCommand(commandID: "", methodName: "firebase_app_distribution_get_udids", className: nil, args: args)
  _ = runner.executeCommand(command)
}

/**
 Authenticate with Firebase App Distribution using a Google account.

 Log in to Firebase App Distribution using a Google account to generate an authentication token. This token is stored within an environment variable and used to authenticate with your Firebase project. See https://firebase.google.com/docs/app-distribution/ios/distribute-fastlane for more information.
*/
public func firebaseAppDistributionLogin() {

let args: [RubyCommand.Argument] = []
let command = RubyCommand(commandID: "", methodName: "firebase_app_distribution_login", className: nil, args: args)
  _ = runner.executeCommand(command)
}
