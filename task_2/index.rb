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

def print()
  email_entity = Email.new(
    "Homework this week",
    {
      :date => "2014-12-01",
      :from => "Ferdous"
    }
  )

  puts "Date:     #{email_entity.date}"
  puts "From:     #{email_entity.from}"
  puts "Subject:  #{email_entity.subject}"
end

print()

