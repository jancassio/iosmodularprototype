platform :ios, '9.3'
use_frameworks!

workspace 'Workspace'


abstract_target 'Rx' do
    pod 'RxSwift',    '~> 3.0.0-beta.1'
    pod 'RxCocoa',    '~> 3.0.0-beta.1'
    pod 'RxDataSources', '~> 1.0.0-beta.2'
    
    target 'AppSub1' do
        project 'AppSub1/AppSub1'
    end

    target 'AppSub2' do
        project 'AppSub2/AppSub2'
    end

    target 'ViewKit' do
        project 'ViewKit/ViewKit'
    end

    target 'DataKit' do
        project 'DataKit/DataKit'
    end

    target 'ExtensionsKit' do
        project 'ExtensionsKit/ExtensionsKit'
    end
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
        target.build_configurations.each do |config|
            config.build_settings['SWIFT_VERSION'] = '3.0'
        end
    end
end
