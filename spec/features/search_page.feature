Feature: Search Page Test Cases

As the application user
I'm on the search page
I want to know the news about my team using the news search field
Scenario: Search a team using the news search field

Give I enter the name of my team in the news search field
When The application displays my team for selection
And I click on my team
Then The application displays page with all the news about my team

As the application user
I'm on the Search page on the All News tab
I want to share news on my social network
Scenario: Share news on the social networks of the page All News

Give I click on a news article of the page All News
And The application opens the news article
When  I click on the icon to share a news article
And The app shows list of social networks for sharing
Then I choose social network and I share successfully

As the application user
I'm on the Search page on the Following tab
I want to share news on my social network
Scenario: Share news on the social networks of the page Following

Give I click on a news article of the page Following
And The application opens the news article
When  I click on the icon to share a news article
And The app shows list of social networks for sharing
Then I choose social network and I share successfully

As the application user
I'm on the search page on the Social tab
I want to share videos on my social networks
Scenario: Share videos on social networks

Give I play video
And The application opens and runs the video
And  I click on the icon to share the video
When The app shows list of social networks for sharing
Then I choose social network and I share successfully

As the application user
I'm on the search page
I want to follow some competitions
Scenario: Start following a competition

Give That I click on the news search field
When I choose a competition to follow and I click the star icon
And System displays a message that I am following the selected competition
Then I can see all the competition news on my following list

As the application user
I'm on the search page
I want to follow some players
Scenario: Start following a player

Give That I click on the news search field
When I choose a player to follow and I click the star icon
And The application opens a window informing all the player's events, already selected and I click Done
And System displays a message that I am following the selected player
Then I can see all the player news on my following list

As the application user
I'm on the search page
I do not have a favorite team
I want to follow some teams
Scenario: Start following a team

Give That I click on the news search field
When I choose a team to follow and I click the star icon
And The application displays a question Is this your favorite team?
And I click on NO
And The application opens a window informing the events of the team, already selected and I click Done
And System displays a message that I am following the selected team
Then I can see all the team news on my following list

As the application user
I'm on the search page
I want to start following a team and define which team events to follow
Scenario: Define which team events to follow

Give That I click on the news search field
And the application displays a list of teams for the selection
When I choose a team and I click the star icon
And The application opens a window informing the events of the selected team, already selected.
And I uncheck the option of all events
And I select two or three event options to follow and click done
Then System displays a message that I am following the selected team

As the application user
I'm on the search page
I want to stop following a player
Scenario: Stop following a player

Give That I click on the news search field
And the application displays a list of players for the selection
When I decide which player does not follow and I click the star icon
Then The system displays a message that I am no longer following the player
