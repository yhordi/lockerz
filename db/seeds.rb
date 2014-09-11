i = 0
until i == 1000 do
  Locker.create(size: 1)
  Locker.create(size: 2)
  Locker.create(size: 3)
  i += 1
end

Bag.create(size: 1, guest_name: "Jordan Kamin", locker_id: 1)