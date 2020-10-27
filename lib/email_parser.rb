# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
    end
     
    def parse
        parsed_addresses = email_addresses.split(/[\s,']/)
        updated_parsed = parsed_addresses.each do |ele| 
            if ele == ""
                parsed_addresses.delete(ele)
            end
        end
        updated_parsed = updated_parsed.uniq
    end
end
