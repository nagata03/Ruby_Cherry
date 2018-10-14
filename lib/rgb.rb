def to_hex(r, g, b)
=begin
    '#' +
    r.to_s(16).rjust(2, '0') +
    g.to_s(16).rjust(2, '0') +
    b.to_s(16).rjust(2, '0')
=end
=begin
    hex = '#'
    [r, g, b].each { |n| hex += n.to_s(16).rjust(2, '0') }
    hex
=end
    [r, g, b].inject('#') { |hex, n| hex + n.to_s(16).rjust(2, '0') }
end

def to_ints(hex)
=begin
    r = hex[1..2]
    g = hex[3..4]
    b = hex[5..6]
    ints = []
    [r, g, b].each { |n| ints << n.hex }
    ints
=end
    r, g, b = hex[1..2], hex[3..4], hex[5..6]
=begin
    [r, g, b].map { |n| n.hex }
=end
    [r, g, b].map(&:hex)
end
