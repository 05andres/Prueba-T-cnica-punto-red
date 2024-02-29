def threads(n)

    if n <= 0 || n > 500
        print "el número debe ser un entero sin signo y menor a 500"
    end
    mutex = Mutex.new
    thread1 = Thread.new do 
        for i in 1..n
            mutex.synchronize do
                print "Hilo 1: #{i}" if i.odd?
                print "\n"
            end
        end
    end

    thread2 = Thread.new do 
        for i in 1..n
            mutex.synchronize do
                print "Hilo 2: #{i}" if i.even?
                print "\n"
            end
        end
    end

    thread1.join
    thread2.join
end

threads(8)