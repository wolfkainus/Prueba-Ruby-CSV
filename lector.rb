require 'csv'

def lector
  csv = CSV.read('dvd.csv', headers: true, header_converters: :symbol, converters: :all)
  return csv.map(&:to_hash)
end

