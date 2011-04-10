# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)

if Unit.all.size==0
    Unit.create([ {:name=>'unidad'},
              {:name=>'porcion'},
              {:name=>'litro'},
              {:name=>'gramo'},
              {:name=>'kilo'}])
end
puts "--> Creadas unidades basicas"

if Periodicity.all.size==0
    Periodicity.create([{:name=>'Diario'},
                    {:name=>'Semanal', :detail=>'Lunes'},
                    {:name=>'Semanal', :detail=>'Martes'},
                    {:name=>'Semanal', :detail=>'Miércoles'},
                    {:name=>'Semanal', :detail=>'Jueves'},
                    {:name=>'Semanal', :detail=>'Viernes'},
                    {:name=>'Semanal', :detail=>'Sábado'}])
end
puts "--> Creadas periodicidades basicas"