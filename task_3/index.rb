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
  mailbox.emails.each{
    |email_entity|
    puts "Date:     #{email_entity.date}"
    puts "From:     #{email_entity.from}"
    puts "Subject:  #{email_entity.subject}"
    puts "\n"
  }

end

print()

