# POLYMORPHISM

# BY INHERITANCE

class Circuit
    attr_reader :voltage, :resistance
    # voltage in volts, resistance in ohms
    def initialize(voltage, resistance)
        @voltage = voltage.to_f
        @resistance = resistance.to_f
    end

    def display_current
        puts "Current is equal to #{current} amperes."
    end

    def display_power
        puts "Power is equal to #{power} watts"
    end

    private
    def current
        @voltage / @resistance
    end

    def power
        current * @voltage
    end


end

class CircuitAnalyzer < Circuit
    def display_current
        puts "#{sprintf('%.4f', current)} amperes."
    end

    def display_power
        puts "#{sprintf('%.4f', power)} watts"
    end
end

class CircuitSolver < Circuit
    def display_current
        puts "#{sprintf('%.4f', current)}A"
    end

    def display_power
        puts "#{sprintf('%.4f', power)}W"
    end
end

circuit1 = CircuitAnalyzer.new(50, 300)
circuit1.display_current
circuit1.display_power

circuit2 = CircuitSolver.new(50, 300)
circuit2.display_current
circuit2.display_power


# BY DUCK TYPING

class Resistor
    def total_resistance(resistor)
        resistor.total_resistance
    end
end

# Compute total resistance of array of resistor values connected in series
class Series
    def initialize(r_values)
        @r_values = r_values.map(&:to_f)
    end

    def total_resistance
        puts "Total resistance is #{@r_values.sum} ohms"
    end
end

# Compute total resistance of array of resistor values connected in parallel
class Parallel
    def initialize(r_values)
        @r_values = r_values.map(&:to_f)
    end

    def total_resistance
        puts "Total resistance is #{1 / (@r_values.inject(0) {|rt, r| rt + 1 / r})} ohms"
    end
end

resistors1 = Resistor.new
resistors1.total_resistance(Series.new([100,200,300]))
resistors1.total_resistance(Parallel.new([100,200,300]))















