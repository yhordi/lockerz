i = 0
until i == 1000 do
  Locker.create(size:"small", empty: true)
  Locker.create(size:"medium", empty:true)
  Locker.create(size:"large", empty: true)
  i += 1
end