# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

workspace 'ModuleTest'
  use_frameworks!
  def myPods
    pod 'R.swift'
  end

target 'ModuleTest' do
  # Comment the next line if you don't want to use dynamic frameworks
  myPods
  use_frameworks!

  # Pods for ModuleTest

  target 'ModuleTestTests' do
    inherit! :search_paths
    # Pods for testing
  end

  target 'ModuleTestUITests' do
    # Pods for testing
  end

end

target 'BlueModule' do
  project 'BlueModule/BlueModule.xcodeproj'
  myPods
end

target 'RedModule' do
  project 'RedModule/RedModule.xcodeproj'
  myPods
end
