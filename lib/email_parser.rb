# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser
  attr_accessor :emails
  @@parsed = []
  def initialize(emails)
    @emails = emails
  end

  def parse
    emails.split(/\s|,\s/).uniq do |email| 
    @@parsed.uniq << email 
    end 
  end
end
