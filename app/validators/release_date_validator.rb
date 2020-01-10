# class ReleaseDateValidator < ActiveModel::Validator 

#     def validate(record)
#         if @song.released
#             @song.release_year != nil 
#         end 
#     end 
# end 


   # release_year optional if released = false
    # release_year cannot be blank if released = true 
    # release_year must be less than or equal to current year