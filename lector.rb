require 'csv'

def lector
  csv = CSV.read('dvd.csv', headers: true, header_converters: :symbol, converters: :all)

#6. Deben eliminar (mediante ruby al leer el csv) las columnas:
#Status, Sound, Versions, Aspect, UPC, DVD_RealeaseDate, Id, Timestamp
#-----------------------------------------------------------------------------------------
useless = %i(status sound versions aspect upc dvd_releasedate id timestamp)
useless.each { |e| csv.delete(e) }
#-----------------------------------------------------------------------------------------

  return csv.map(&:to_hash)
end

