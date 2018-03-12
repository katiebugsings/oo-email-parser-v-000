class EmailParser
 attr_accessor :emails
 @@parsed = []

 def initialize(emails)
   @emails = emails
 end

 def parse
   emails.split(/\s|,\s/).uniq do |email|
     @@parsed << email
   end
end

end
