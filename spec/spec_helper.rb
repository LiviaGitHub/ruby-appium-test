require 'appium_lib'

RSpec.configure do |config|
  desired_caps = {
    caps: {
      platformName:  'Android',
      platformVersion: '8.0',
      deviceName:    'Android Emulator',
      app:           'spec/fixtures/app-full-rc-v13.1.0.343.apk',
      name: 'OpenFootball test',
      noReset: false,
      appWaitActivity: 'de.motain.iliga.*'
    },
    appium_lib: {
      sauce_username:   nil, # don't run on Sauce
      sauce_access_key: nil,
      wait: 60
    }
  }
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end
  config.shared_context_metadata_behavior = :apply_to_host_groups


  config.filter_run_when_matching :focus

  config.before(:all) do
    @driver = Appium::Driver.new(desired_caps, true).start_driver
    # Appium.promote_singleton_appium_methods RSpec::Core::ExampleGroup
    Appium.promote_appium_methods RSpec::Core::ExampleGroup
  end

  config.before(:each) do
    find_element(:xpath, '//android.widget.Button[@text="I DON\'T HAVE A FAVORITE TEAM"]').click
    find_element(:xpath, '//android.widget.Button[@text="GET STARTED"]').click
  end

  config.after(:all) do
    @driver.quit
  end
end
