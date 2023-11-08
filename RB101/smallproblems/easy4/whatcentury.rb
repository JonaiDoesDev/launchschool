CENTURIES = {
  first: {year: (0..100).to_a, numeric: "1st"},
  second: (101..200).to_a,
  third: (201..300).to_a,
  fourth: (301..400).to_a,
  fifth: (401..500).to_a,
  sixth: (501..600).to_a,
  seventh: (601..700).to_a,
  eight: (701..800).to_a,
  ninth: (801..900).to_a,
  tenth: (901..1000).to_a,
  eleventh: (1001..1100).to_a,
  twelth: (1101..1200).to_a,
  thirteenth: (1201..1300).to_a,
  fourteenth: (1301..1400).to_a,
  fifteenth: (1401..1500).to_a,
  sixteenth: (1501..1600).to_a,
  seventeenth: (1601..1700).to_a,
  eighteenth: (1701..1800).to_a,
  nineteenth: (1801..1900).to_a,
  twentieth: (1901..2000).to_a,
  twenty_first: (2001..2100).to_a
}

def century(year)
  CENTURIES.select do |key, value|
  puts value[:year]
  end
end

century(2000)
