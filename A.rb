def secant_parallel(values)

    values = values.split.map(&:to_f)
    
    x1,x2,x3,x4,x5,x6,x7,x8 = values
    main = (x1 - x2) * (x3 - x4) - (x5 - x6) * (x7 - x8)
    if main == 0
        print "PARALELAS"
    else
        intersect_x = ((x1 * x2 - x3 * x4) * (x5 - x6) - (x5 * x6 - x7 * x8) * (x1 - x2)) / main
        intersect_y = ((x1 * x2 - x3 * x4) * (x5 - x6) - (x5 * x6 - x7 * x8) * (x1 - x2)) / main
        print "(#{ intersect_x}), (#{intersect_y})"
    end    
end

secant_parallel("2 2 5 -1.0 4.0 2.0 -1.0 -2.0")