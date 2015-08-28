def move_disk(num_disks, from, to, via)
  if num_disks == 1
    to << from.pop
  elsif num_disks == 0
    []
  else
    via << from.pop
    move_disk(num_disks-1, from, to, via) << via.pop
  end
end