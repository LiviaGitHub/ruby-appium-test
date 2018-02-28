context "News Search" do
  before(:each) do
    find_element(:xpath, '//android.widget.TextView[@resource-id="de.motain.iliga:id/action_search"]').click
  end

#Scenario_01: Search a team using the news search field
describe "Scenario: Search a team using the news search field" do
  it "should search a team using the news search field" do

    find_element(:xpath, '//android.widget.EditText[@text="Search"]').send_keys('Copa')
    find_element(:xpath, '//android.widget.TextView[@text="Copa Argentina"]').click
    find("Bundesliga").text
    find("Game Day").text
  end
end

#Scenario_01: Search a team using the news search field
describe "Scenario: Search a team using the news search field" do
  it "should search a team using the news search field" do

    find_element(:xpath, '//android.widget.EditText[@text="Search"]').send_keys('Superliga Argentina')
    find_element(:xpath, '//android.widget.TextView[@text="Superliga Argentina"]').click
    find("Bundesliga").text
    find("Game Day").text
  end
end

#Scenario_06: Start following a player
  describe "Scenario: Start following a player" do
    it "should start following a player" do

      find_element(:xpath, '//android.widget.EditText[@text="Search"]').send_keys('Lucas Sum')
      find_element(:xpath, '//android.widget.TextView[@text="Lucas Sum"]').click
      find_element(:xpath, '//android.widget.TextView[@resource-id="de.motain.iliga:id/menu_follow"]').click
      find_element(:xpath, '//android.widget.TextView[@text="DONE"]').click
      find_element(:xpath, '//android.widget.TextView[@text="Following"]').click
      find("Lucas Sum").text
    end
  end

#Scenario_07: Start following a team
  describe "Scenario: Start following a team" do
    it "should start following a team" do

      find_element(:xpath, '//android.widget.EditText[@text="Search"]').send_keys('Independiente')
      find_element(:xpath, '//android.widget.TextView[@text="Independiente"]').click
      find_element(:xpath, '//android.widget.TextView[@resource-id="de.motain.iliga:id/menu_follow"]').click
      find("You have not defined a favourite team yet. Is Independiente the team you love most?").text
      find_element(:xpath, '//android.widget.TextView[@text="NO"]').click
      find_element(:xpath, '//android.widget.TextView[@text="DONE"]').click
      find_element(:xpath, '//android.widget.TextView[@text="Following"]').click
      find("Independiente").text
    end
  end

#Scenario_08: Define which team events to follow
  describe "Scenario: Define which team events to follow" do
    it "should define which team events to follow" do

      find_element(:xpath, '//android.widget.EditText[@text="Search"]').send_keys('River Plate')
      find_element(:xpath, '//android.widget.TextView[@text="River Plate"]').click
      find_element(:xpath, '//android.widget.TextView[@resource-id="de.motain.iliga:id/menu_follow"]').click
      find("You have not defined a favourite team yet. Is River Plate the team you love most?").text
      find_element(:xpath, '//de.motain.iliga:id/tutorial_button_secondary[@text="NO"]').click
      find_element(:xpath, '//android.widget.TextView[@text="All events"]').click
      find_element(:xpath, '//android.widget.TextView[@text="Game facts"]').click
      find_element(:xpath, '//android.widget.TextView[@text="Red cards"]').click
      find_element(:xpath, '//android.widget.TextView[@text="DONE"]').click
      find_element(:xpath, '//android.widget.TextView[@text="Following"]').click
      find("River Plate").text
    end
  end
end
