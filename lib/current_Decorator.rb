class BasicCurrent
    def initialize(cost)
        @cost = cost
    end
    
    def cost
        return @cost
    end
        
end

class CurrentDecorator
    def initialize(real_cost)
        @real_cost = real_cost
        @extra_cost = 0
        @description = "Current bill "
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
end

class Geyser_Decorator < CurrentDecorator

    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 30
        @benefits = "Can use all the sports areas"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
end

class Washing_MachineDecorator < CurrentDecorator

    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 10
        @benefits = "Usage of wahing machine"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
end
class Water_HeaterDecorator < CurrentDecorator

    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 30
        @benefits = "Can use all the sports areas"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
end
class Oven_Decorator < CurrentDecorator

    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 30
        @benefits = "Can use all the sports areas"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
end
