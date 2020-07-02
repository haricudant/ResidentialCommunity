class AssetNotifierMailer < ApplicationMailer
    #default :from => 'manojitkannan@gmail.com'
    def mailer(user,val)
        @to = user
        @fun = val
        @complain=Complain.find_by_asset_id(@fun)
        @value = Asset.find(@fun).id
        @assettype = Asset.find(@fun).assettype
        @assetname = Asset.find(@fun).assetname
        @use = Asset.find(@fun).user_id
        @uid = User.find(@use).id
        @doorno = Profile.find(@uid).door_no
        @appointment = @complain.appointment
        @provider = @complain.description

        puts @user
        mail(to: @to,subject:  'Thanks for signing up for our amazing app' )
    end
end
