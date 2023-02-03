class Email
    def initialize(subject, headers)
        @subject = subject
        @headers  = headers
    end

    def subject
        @subject
    end

    def date
        @headers[:date]
    end

    def from
       @headers[:from]
    end
end

class MailBox
    def initialize(name, emails)
        @name = name
        @emails = emails
    end

    def name
        @name
    end

    def emails
        @emails
    end
end

class MailboxTextFormatter
 def initialize(mailbox)
    @mailbox = mailbox
  end

  def format
    lines = [
      separator,
      format_row(["Date", "From", "Subject"]),
      separator,
      rows.collect { |row| format_row(row) },
      separator,
    ]
    lines.join("\n")
  end

  def separator
    "+#{column_widths.map { |width| '-' * (width + 2) }.join("+")}+"
  end

  def format_row(row)
    cells = 0.upto(row.length - 1).map do |index|
      row[index].ljust(column_widths[index])
    end
    "| #{cells.join(" | ")} |"
  end

  def emails
    @mailbox.emails
  end

  def column_widths
    columns.map { |column| column.max_by { |cell| cell.length }.length }
  end

  def columns
    rows.transpose
  end

  def rows
    emails.collect { |email| [email.date, email.from, email.subject] }
  end
end


def print()
 emails = [
    Email.new(
      "Homework this week",
        {
          :date => "2014-12-01",
           :from => "Ferdous"
        }
      ),
    Email.new(
      "Keep on coding! :)",
        {
          :date => "2014-12-01",
          :from => "Dajana"
        }
      ),
    Email.new(
      "Re: Homework this week",
        {
          :date => "2014-12-02",
          :from => "Arianne"
        }
      )
  ]

  mailbox = MailBox.new("Ruby Study Group", emails)
  formatter = MailboxTextFormatter.new(mailbox)
  puts formatter.format

end

print()

