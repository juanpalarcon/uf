# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

Unit.delete_all
CSV.foreach("/home/jpalarcon/Desktop/api-uf/db/UF_2019.csv", headers: true, col_sep: ';') do |row|

    jan = row.fetch('Ene')
    feb = row.fetch('Feb')
    day = row.fetch(row.headers[0])

    jan_wdecimals = jan.gsub( '.', ' ').gsub ',', '.'
    if feb != nil
        feb_wdecimals = jan.gsub( '.', ' ').gsub ',', '.'
    end

    

    Unit.create(date:'2019-01-' + row.fetch(row.header[0]), value: row.fetch('Ene'))

    if value == nil
    end

    Unit.create(date:'2019-02-' + row.fetch(row.header[0]), value: row.fetch('Feb')) if row.fetch('Feb') != nil


end
