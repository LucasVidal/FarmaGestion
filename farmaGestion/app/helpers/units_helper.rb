module UnitsHelper

  def units_for_select
    Unit.all.map {|u| [u.name, u.id]}
  end

end
