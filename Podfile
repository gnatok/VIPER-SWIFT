# Uncomment this line to define a global platform for your project
 platform :ios, '9.0'
# Uncomment this line if you're using Swift
 use_frameworks!

def testing_pods
    pod 'Quick'
    pod 'Nimble'
end

target 'ViperMCFSwift' do
    pod 'ViperMcFlurry', :git => 'git@github.com:rambler-ios/ViperMcFlurry.git', :branch => 'master'
end


target 'ViperMCFSwiftTests' do
    testing_pods
    pod 'ViperMcFlurry', :git => 'git@github.com:rambler-ios/ViperMcFlurry.git', :branch => 'master'
end