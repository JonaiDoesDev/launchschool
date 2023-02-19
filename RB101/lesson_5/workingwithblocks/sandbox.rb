[{ a: 'ant', b: 'elephant' }, { c: 'bat', z: 'zebra' }, {d: 'dog', e: "equestrian"}, {f: 'tola', g: 'garfield'}].select do |hash|
  hash.all? do |key, value|
    value[0] == key.to_s
  end
end