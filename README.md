acceptance_tests
================

#### Ideas
* fork the faker gem and add scidea specific fake data and namespaces -- this will be tailored to the project, add healthcare, elearning specific jargon, course work etc, AND have boundary testing namespace with elizabeth hendrickson's heuristics randomized
* think of clever way to make it so any account can try any test -- and it should pass/fail depending on permissions and show proper assertion of behavior
* use guard and 'hidden' vm to keep running tests in the background during changes for immediate feedback (on second monitor, using capistrano to run elsewhere or distributed suite commands like spork or bonjour)
  * one window text editor, one window application with dev tools, another window test run feedback and logs
* Add faker so that different input can be used each time
* Eventually there will be tons of test ideas in scenario form... use tagging to have full test run, core test run, acceptance test run, etc...
* Log times for all the actions to see where hangs are, ex. if it takes a user 30 seconds to click through datepicker to get what they want, it may be time for better datepicker or clearer instructions

#### Test Ideas
* have timer set at tolerable user limits for each action <10 second waits for all actions... anything over should be flagged for optimization

#### Test Issues
* situation exists where editing custom forms (such as user account), when new require fields have been added after -- requires adding the fields then -- this should be fixed, but tested around until it is
* if account has not yet accepted the terms and conditions, login tasks will fail expecting to be on the dashboard -- conditional in this circumstance?