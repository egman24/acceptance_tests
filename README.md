acceptance_tests
================

#### Ideas
* use guard and 'hidden' vm to keep running tests in the background during changes for immediate feedback (on second monitor, using capistrano to run elsewhere or distributed suite commands like spork or bonjour)
  * one window text editor, one window application with dev tools, another window test run feedback and logs
* Add faker so that different input can be used each time
* Eventually there will be tons of test ideas in scenario form... use tagging to have full test run, core test run, acceptance test run, etc...
* Log times for all the actions to see where hangs are, ex. if it takes a user 30 seconds to click through datepicker to get what they want, it may be time for better datepicker or clearer instructions