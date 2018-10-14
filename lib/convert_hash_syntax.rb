def convert_hash_syntax(old_syntax)
    old_syntax.gsub(/:(?<key>\w+) *=> */, '\k<key>: ')
end
