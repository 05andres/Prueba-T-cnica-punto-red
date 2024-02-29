def permu(value)
    if value.lenth < 3 || value.lenth > 50
        return print "no cumple con las condiciones"
    end
    puts value.chars.to_a.permutation.map(&:join)
end


permu("ABC")