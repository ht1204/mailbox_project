So far, your program has all the email data hardcoded. All the data is baked right into your code. Every time you run it, it displays all the same emails. That’s not very useful for a real-world program.

Let’s change this to read our data from an external data source instead.

CSV format
One very simple and popular way to store data in files is by using the CSV format. This stands for “comma-separated values” (though semicolons are often used as separators instead of commas), and it’s something that spreadsheets can read and export. The ability to work with CSV can be quite useful. Just write a little Ruby script and filter that data, or work with it in some other way.

The first line in your code should be require "csv". This makes Ruby’s CSV library available to your program so that you can then use the CSV class.

Task
Building on the same code from the last exercises, read the email data from a emails.csv file. This file is stored in the same directory as your Ruby program.

To complete this exercise, you’ll need to find out how to:

Read the contents of a file to Ruby as a string.

Parse this string as CSV (search for “ruby CSV” and/or look at the documentation).

For each of the rows, ignoring the header line, create an Email instance. Create an array of such instances.

Once you’ve determined how to read and parse the CSV file and create the array of Email instances out of that data, your next task is to encapsulate all of that into a EmailsCsvStore class. This class should take a file name and have a read method, which returns the array of emails read from the file.

In the end, the code should be structured like:

```ruby
require "csv"

class Email
  # your class from the last exercise
end

class Mailbox
  # your class from the last exercise
end

class MailboxHtmlFormatter
  # your class from the last exercise
end

class EmailsCsvStore
  def initialize(filename)
    # fill in this method
  end

  def read
    # fill in this method
  end
end
```

Use these lines of code to validate your answer:

```ruby
store = EmailsCsvStore.new('emails.csv')
emails = store.read
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxHtmlFormatter.new(mailbox)

File.write("csvemails.html", formatter.format)
```
