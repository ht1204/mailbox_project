class Email
    def initialize(subject, date, from)
        @subject = subject
        @date  = date
        @from = from
    end

    def subject
        @subject
    end

    def date
      @date
    end

    def from
      @from
    end
end

def print()
  email_entity = Email.new(
    "Homework this week",
    "2014-12-01",
    "Ferdous"
  )

  puts "Date:     #{email_entity.date}"
  puts "From:     #{email_entity.from}"
  puts "Subject:  #{email_entity.subject}"
end

print()

