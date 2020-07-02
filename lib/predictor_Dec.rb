class Basicexpense
    def initialize(cost)
        @cost = cost
    end
    
    def cost
            return @cost
    end
    
end

class Rentdecorator
    def initialize(real_cost) 
        @real_cost = real_cost
        @extra_cost = 0
        @description = "rent"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
    
end

    
class SportsAmenities < Rentdecorator
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

    
    
class LaundryAmenities < Rentdecorator
    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 53
        @benefits = "shared laundry room, washers & dryers in the unit, laundry service"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    def benefits
        return @benefits
    end
    
end

class RecreationAmenities < Rentdecorator
    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 40
        @benefits = "Spa, Community events & classes, Media Room"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end
    
    def benefits
        return @benefits
    end
end

    
    
class MiscellaneousAmenities< Rentdecorator
    def initialize(real_cost)
        super(real_cost)
        @extra_cost = 20
        @benefits = "Recycling center,Doorstep recycling collection,Playground"
    end
    
    def cost
        return @real_cost.cost + @extra_cost
    end 
    def benefits
        return @benefits
    end
    
end
    
class ParkingAmenities< Rentdecorator
      def initialize(real_cost)
        super(real_cost)
        @extra_cost = 36
        @benefits = "lljkjk"
      end
    
      def cost
        return @real_cost.cost + @extra_cost
      end  
    
      def benefits
        return @benefits
     end
     
 end
 
class PetAmenities< Rentdecorator
      def initialize(real_cost)
        super(real_cost)
        @extra_cost = 35
        @benefits = "Dog washing station,Large dogs allowed,Multiple pets allowed"
      end
    
      def cost
        return @real_cost.cost + @extra_cost
      end  
    
      def benefits
        return @benefits
      end
     
end

        
    
     