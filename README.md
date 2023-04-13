# time_planner

An app that helps organize time intelligently

## Features

- Setting Activities
- Smart Clock
- Event Activity Planner
- Switching activities
- Reward system (Trophy/Encouragement)


## Details

## Setting Activities
Setting activity timeframe / name / flexibilty to switch to other timeframes / details -optional-


### Smart Clock
An Analog Clock that illustrates the activities set by the user in colorful subsets. On top of it, there will be the user activities in a list showing which color is to which activity it is. When an activity is clicked, activity management settings will be shown.


### Event Activity Planner
Those are timeframes that defaults to a 5 minute timeframes before any activity. The sole purpose is to be ready for the activity following them and to have the ability to switch the activity before its time begins. Called "Event" because this timeframe represents an event for the planning to start. Every time this event occures, triggers vibration utility to inform the user to be ready to the activity upcomming.
Once EAP occurs, push notification and vibration will be both triggered.


### Switching activities
If a user finished the current activity before its estimated timeframe end occurs, the user can switch the remaining time of the activity to another activity.
Example:
User x has set his activity 1 timeframe as: 8:00 to 9:00, x finished the activity at 8:25 the remaining time for the activity is 35 minutes. User x has also set activity 2 timeframe as 10:00 to 10:30. 
In this case, user can switch the remaining time of timeframe 1 to timeframe 2. Timeframe 2 will end once it reaches 8:55.
Additionally, if a user wants to switch Activities before they start it. 

* this will be applicable if the activity is flexible to switch to/from other timeframes


### Reward system (Trophy/Encouragement)
- If the user switch the activity in the Event Activity Planner timeframe, there will be a point added to user's event planner activity switches counter. This counter will determine which level is the user in terms of flexibility.

- If the user view the upcomming activity in the Event Activity Planner timeframe. Activity interest counter will increment which determine the level of the user in terms of setting activities that are interesting/high priority.

- If the user fill plans of more than 30% hours of the day, a point will be added to user planning abilities counter which determine the level of the user in terms of long-term strategic planning enthusiasm.
