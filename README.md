## Example for students in Flatiron School Ruby Bootcamp - Unmaintained/Possibly Out of Date

The idea here is to stub `session` and access it in an RSpec spec, however, the real suggestion is that if you're testing against `session` you're probably making a brittle test that knows too much about too much and should maybe be testing at a higher level, like that the result of some `session`-based decision shows up on a page or in a response.
