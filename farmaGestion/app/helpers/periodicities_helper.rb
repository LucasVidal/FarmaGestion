module PeriodicitiesHelper
  
  def periodicities_for_select
    Periodicity.all.map {|p| [periodicitity_full_description(p), p.id]}
  end
  
  def periodicitity_full_description(periodicity)  
    if periodicity.detail.empty?
      return periodicity.name
    else
      periodicity.name+ " - " + periodicity.detail
    end
  end
end
