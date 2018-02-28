describe "Scenario: Search a team using the news search field" do
  it "should search a team using the news search field" do

    find_element(:xpath, '//android.widget.EditText[@text="Search"]').click
    find_element(:xpath, '//android.widget.EditText[@text="Search"]').sendKeys('Brazil')
    find_element(:xpath, '//android.widget.TextView[@text="Brazil"]').click
    page.has_content?('Brazil')
    page.has_content?('FOLLOW').should be_true
    page.has_content?('SEASON').should be_true
    page.has_content?('SQUAD').should be_true
    find(:xpath, "de.motain.iliga:id/menu_share").visible?
  end
end
