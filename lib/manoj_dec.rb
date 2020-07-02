class BasicEvent
    def initialize(cost)
        @cost = cost
    end
    
    def cost
        return @cost
    end
        
end

class EventDecorator
    def initialize(real_cost)
        @real_cost = real_cost
        @extra_cost = 0
        @description = "Current bill "
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
end

class DJ_Decorator < EventDecorator

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

class Beverages_Decorator < EventDecorator

    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 15
        @benefits = "Usage of wahing machine"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
end
class Catering_Decorator < EventDecorator

    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 8
        @benefits = "Can use all the sports areas"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
end

class Host_Decorator < EventDecorator

    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 5
        @benefits = "Can use all the sports areas"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
end

      
