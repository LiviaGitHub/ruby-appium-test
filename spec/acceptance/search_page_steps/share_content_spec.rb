#Scenario_02: Share news on the social networks of the page All News
#Scenario_03: Share news on the social networks of the page Following
describe "Scenario: Share news on the social networks}" do
  ["ALL NEWS", "FOLLOWING"].each do |tab|
    it "should share news on the social networks of the page #{tab}" do
      find_element(:xpath, "//android.widget.TextView[@text=\"#{tab}\"]").click
      find_element(:xpath, '//android.widget.TextView[@text="Onefootball"]').click
      find_element(:xpath, '//android.widget.TextView[@resource-id="de.motain.iliga:id/menu_share"]').click
      find_element(:xpath, '//android.support.v7.widget.RecyclerView[@resource-id="de.motain.iliga:id/resolver_list"]').visible?
    end
  end
end
