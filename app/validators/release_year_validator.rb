class ReleaseYearValidator < ActiveModel::Validator
    def validate(record)
        unless record.release_year <= Time.now.year
            record.errors[:name] << "Cannot release songs in the future"
        end
    end 
end 