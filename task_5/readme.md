Separation of concerns
One question that may have come up while working on the previous mailbox text formatter task: why would you have a separate class for formatting the ASCII table (a plain text table that uses characters like +, -, and |)?

The reason is that you want each of your classes to encapsulate one concept that’s useful in our application. Put another way, each of your classes should be concerned with one responsibility.

An email vaguely resembles the concept of an analog letter written on paper. Some message is being sent from one person to another. Nowadays, everyone knows what an email is. It stores all the information about a particular message. The same is true for mailboxes, which are used to store a bunch of emails. Formatting a number of emails to be displayed on a text-based terminal is a very different concern.

It therefore makes a lot of sense to have three different classes implement each of these concepts or concerns. It’s intuitively called a design principle in programming: the principle of separation of concerns.

Aside from being more comprehensible and mapping readily to concepts that you already know, one other advantage is that you can now easily implement other formatter classes that format your emails in a different way, suitable to be displayed in other media. That’s what this exercise is about.

Before you get to that, one other aspect needs to be addressed.—an architecture used to structure and separate concerns, called “model, view, controller.”

Model, view, controller
The two classes, Email and Mailbox, in your application are models. They’re concerned with modeling those real-world things your users are interested in. They want to work with emails.

The MailboxTextFormatter class, on the other hand, is a view. It’s used to generate a certain representation in a format that’s suitable to a certain medium (the terminal, in our case).

You don’t have a controller class so far, but the little bit of code at the end of the file does what a controller usually would do. It generates some models (the emails and the mailbox objects) and passes them to the view (the formatter) to be rendered into something that can then be returned and displayed.

Task
Display your mailbox contents in HTML, which is the format that browsers like to use.

You’ll start over with the same code again, except that your formatter class now will be called MailboxHtmlFormatter.

```ruby
class Email
  # your class from the last exercise
end

class Mailbox
  # your class from the last exercise
end

class MailboxHtmlFormatter
  # fill in this class body
end
```
Use this code to generate your output:
```ruby
emails = [
  Email.new("Homework this week", { :date => "2014-12-01", :from => "Ferdous"),
  Email.new("Keep on coding! :)", { :date => "2014-12-01", :from => "Dajana"}),
  Email.new("Re: Homework this week", { :date => "2014-12-02", :from => "Ariane"})
]
mailbox = Mailbox.new("Ruby Study Group", emails)
formatter = MailboxHtmlFormatter.new(mailbox)

puts formatter.format
```
Your goal is to complete the code in a way so that it outputs the following HTML code:

Expected output:
```html
<html>
<head>
      <style>
        table {
          border-collapse: collapse;
        }
        td, th {
          border: 1px solid black;
          padding: 1em;
        }
      </style>
    </head>
  <body>
    <h1>Ruby Study Group</h1>
    <table>
      <thead>
        <th>Date</th>
        <th>From</th>
        <th>Subject</th>
      </thead>
      <tbody>
        <tr>
          <td>2014-12-01</td>
          <td>Ferdous</td>
          <td>Homework this week</td>
        </tr>
        <tr>
          <td>2014-12-01</td>
          <td>Dajana</td>
          <td>Keep on coding! :)</td>
        </tr>
        <tr>
          <td>2014-12-02</td>
          <td>Ariane</td>
          <td>Re: Homework this week</td>
        </tr>
      </tbody>
    </table>
  </body>
</html>
```
Don’t be intimidated
This likely looks overwhelming. It’s probably fair to say that manually writing HTML isn’t very popular amongst most programmers. There are therefore quite a few tools that make your life easier. Your task is to write such a tool.

This exercise should also be easier for you to complete than the previous one. You already have a bunch of practice iterating over emails and working with arrays and strings. This time, you don’t need to deal with the maximum length of strings per column. You can interpolate things together.


