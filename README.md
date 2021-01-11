## Completed Coding Challenge for Auction Edge, accompanying Robert Kim's Application

This submission contains my solution to Auction Edge's coding challenge for the normalization of user provided vehicle input.

### Version

My version of choice was Ruby 2.7.2p137.

### Instructions

To run the application from the command line, use the `ruby` command along with the name of the file containing the code and script provided by Auction Edge:

```
ruby auction_edge.rb
```

### Q&A

1.) When approaching this challenge what were some of the other ideas you came up with to address the problem, and why didn't you use them?

- Initially, I had the tendency of writing the solution to a broader set of theoretical inputs.  For example, I thought I would create a dictionary of the top 10 makes, with top models and trims.  This would obviously have led to a great deal of complexity and time consumption in finding a solution.  In the end, I wanted to follow the instructions of the challenge in the most minimalist way possible, by simply focusing on the expected outputs, while still allowing room for adding more complexity incrementally in the future, theoretically, but following Object Oriented Principles.


2.) If you had, had access to other resources, what would you have chosen to use and why?

- Automated testing is important to me as a developer, so if I had more time, I would have definitely implemented `RSpec` and written some specs.  Instead, I mainly relied on manual testing in `IRB`.

3.) If you chose to use a storage solution (e.g. database) what structure (e.g. tables) would you create to address this problem?

- I would imagine in a real-world scenario, a `Seller` table and `Car` table would need a many-to-many relationship, with a `Transaction` join table.  Obviously, in ActiveRecord this would require a `has_many :through` syntax.


I can be reached via email at robertjoonkim@gmail.com with any questions/feedback.  Thank you for the opportunity.  
