describe "Scenario: Share news on the social networks of the page All News" do
  it "should share news on the social networks of the page All News" do

    find_element(:xpath, '//android.widget.TextView[@text="ALL NEWS"]').click
    find_element(:xpath, '//android.widget.TextView[@text="Onefootball"]').click
    find_element(:xpath, '//de.motain.iliga:id/menu_share[@text=""]').click
    page.has_content?('Share')
    find(:xpath, "//de.motain.iliga:id/toolbar_title").visible?
  end
end

describe "Scenario: Share news on the social networks of the page Following" do
  it "should share news on the social networks of the page Following" do

    find_element(:xpath, '//android.widget.TextView[@text="FOLLOWING"]').click
    find_element(:xpath, '//android.widget.TextView[@text="Onefootball"]').click
    find_element(:xpath, '//de.motain.iliga:id/menu_share[@text=""]').click
    page.has_content?('Share')
    find(:xpath, "//de.motain.iliga:id/toolbar_title").visible?
  end
end

describe "Share videos on social networks" do
  it "should share videos on social networks" do

    find_element(:xpath, '//android.widget.TextView[@text="SOCIAL"]').click
    find_element(:xpath, '//android.widget.TextView[@text="Onefootball"]').click
    find_element(:xpath, '//de.motain.iliga:id/menu_share[@text=""]').click
    page.has_content?('Share')
    find(:xpath, "//de.motain.iliga:id/toolbar_title").visible?
  end
end
