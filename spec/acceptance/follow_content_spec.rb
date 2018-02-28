describe "Scenario: Start following a competition" do
  it "should start following a competition" do

    find_element(:xpath, '//android.widget.EditText[@text="Search"]').click
    find_element(:xpath, '//android.widget.EditText[@text="Search"]').sendKeys('Primeira B')
    find_element(:xpath, '//de.motain.iliga:id/item_name[@text="Primeira B"]').click

    #Verificar se está flegado
    find_element(:xpath, '//de.motain.iliga:id/menu_follow[@text=""]').click
    page.has_content?('You now follow Copa Argentina')
    find_element(:xpath, 'de.motain.iliga:id/fixed_bottom_navigation_container[@text="Following"]').click
    page.has_content?('Copa Argentina')
    find_element(:xpath, '//de.motain.iliga:id/team_name[@text="Copa Argentina"]').visible?
  end
end

describe "Scenario: Start following a player" do
  it "should start following a player" do

    find_element(:xpath, '//android.widget.EditText[@text="Search"]').click
    find_element(:xpath, '//android.widget.EditText[@text="Search"]').sendKeys('Lucas Sum')
    find_element(:xpath, '//de.motain.iliga:id/item_name[@text="Lucas Sum"]').click

    #Verificar se está flegado
    find_element(:xpath, '//de.motain.iliga:id/menu_follow[@text=""]').click
    find_element(:xpath, '//de.motain.iliga:id/button_primary[@text="DONE"]').click
    page.has_content?('You now follow Lucas Sum')
    find_element(:xpath, 'de.motain.iliga:id/fixed_bottom_navigation_container[@text="Following"]').click
    page.has_content?('Lucas Sum')
    find_element(:xpath, '//de.motain.iliga:id/team_name[@text="Lucas Sum"]').visible?
  end
end

describe "Scenario: Start following a team" do
  it "should start following a team" do

    find_element(:xpath, '//android.widget.EditText[@text="Search"]').click
    find_element(:xpath, '//android.widget.EditText[@text="Search"]').sendKeys('Independiente')
    find_element(:xpath, '//de.motain.iliga:id/item_name[@text="Independiente"]').click

    #Verificar se está flegado
    find_element(:xpath, '//de.motain.iliga:id/menu_follow[@text=""]').click
    page.has_content?('You have not defined a favourite team yet. Is Atlético Madrid the team you love most?')
    find_element(:xpath, '//de.motain.iliga:id/tutorial_button_secondary[@text="NO"]').click
    find_element(:xpath, '//de.motain.iliga:id/button_primary[@text="DONE"]').click
    page.has_content?('You now follow Lucas Sum')
    find_element(:xpath, 'de.motain.iliga:id/fixed_bottom_navigation_container[@text="Following"]').click
    page.has_content?('Independiente')
    find_element(:xpath, '//de.motain.iliga:id/team_name[@text="Independiente"]').visible?
  end
end

describe "Scenario: Define which team events to follow" do
  it "define which team events to follow" do

    find_element(:xpath, '//android.widget.EditText[@text="Search"]').click
    find_element(:xpath, '//android.widget.EditText[@text="Search"]').sendKeys('Independiente')
    find_element(:xpath, '//de.motain.iliga:id/item_name[@text="Independiente"]').click

    #Verificar se está flegado
    find_element(:xpath, '//de.motain.iliga:id/menu_follow[@text=""]').click
    page.has_content?('You have not defined a favourite team yet. Is Atlético Madrid the team you love most?')
    find_element(:xpath, '//de.motain.iliga:id/tutorial_button_secondary[@text="NO"]').click
    find_element(:xpath, '//de.motain.iliga:id/checkIcon[@text="All events"]').click
    find_element(:xpath, '//de.motain.iliga:id/checkIcon[@text="Game facts"]').click
    find_element(:xpath, '//de.motain.iliga:id/checkIcon[@text="Red cards"]').click
    find_element(:xpath, '//de.motain.iliga:id/button_primary[@text="DONE"]').click
    page.has_content?('You now follow Lucas Sum')
  end
end

describe "Scenario: Stop following a player" do
  it "should stop following a player" do

    find_element(:xpath, '//android.widget.EditText[@text="Search"]').click
    find_element(:xpath, '//android.widget.EditText[@text="Search"]').sendKeys('Lucas Sum')
    find_element(:xpath, '//de.motain.iliga:id/item_name[@text="Lucas Sum"]').click

    #Verificar se está flegado
    find_element(:xpath, '//de.motain.iliga:id/menu_follow[@text=""]').click
    find_element(:xpath, '//de.motain.iliga:id/button_primary[@text="DONE"]').click
    page.has_content?('You now follow Lucas Sum')
  end
end
