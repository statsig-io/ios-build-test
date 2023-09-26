xcodebuild -resolvePackageDependencies

xcodebuild build \
  -destination "platform=iOS Simulator,name=iPhone SE (3rd generation)" \
  -scheme SwiftPackageManagerExample

xcodebuild test \
  -destination "platform=iOS Simulator,name=iPhone SE (3rd generation)" \
  -scheme SwiftPackageManagerExample