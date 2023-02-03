The mailbox text formatter exercise is a considerable milestone. It may take a little bit longer to complete it. Don’t be discouraged.

Task
Fill in and complete the following class definitions:

```ruby
class MailboxTextFormatter
  # fill in this class body
end
```

You can use this code to check your output:

#create email array as in the last exercise
emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous"}),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana"}),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane"})
]
#create mailbox as before
mailbox = Mailbox.new("Ruby Study Group", emails)

formatter = MailboxTextFormatter.new(mailbox)

puts formatter.format
Your goal is to complete the code in a way that it outputs the following:

Expected output
Mailbox: Ruby Study Group

+------------+---------+------------------------+
| Date       | From    | Subject                |
+------------+---------+------------------------+
| 2014-12-01 | Ferdous | Homework this week     |
| 2014-12-01 | Dajana  | Keep on coding! :)     |
| 2014-12-02 | Ariane  | Re: Homework this week |
+------------+---------+------------------------+

