class BoardgasenergysController < CalculateelectricbillsController
   
   
   def getproviderdetails(a)
        @a =a 
        cost = @a.cost
        ans = @a.standingcharge
        pslv = @a.pslvcharge
        return cost,ans,pslv
   end
end