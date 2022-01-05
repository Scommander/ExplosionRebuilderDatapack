file_path = "data/explosion_rebuilder/functions/creeper_scan.mcfunction"
f = open(file_path, "w")
r = 6
for x in range(-r, r + 1):
  for y in range(-r, r + 1):
    for z in range(-r, r + 1):
      if (x**2 + y**2 + z**2)**0.5 > r:
        continue
      f.write(f"execute positioned ~{x} ~{y} ~{z} unless block ~ ~ ~ #explosion_rebuilder:air if block ~ ~ ~ #explosion_rebuilder:regenerateable unless block ~ ~ ~ minecraft:tnt align xyz unless entity @e[type=minecraft:marker,tag=s.crhf.block_marker,dx=0] positioned ~0.5 ~0.5 ~0.5 run function explosion_rebuilder:spawn_creeper_marker\n")
f.close()

file_path = "data/explosion_rebuilder/functions/charged_creeper_scan.mcfunction"
f = open(file_path, "w")
r = 8
for x in range(-r, r + 1):
  for y in range(-r, r + 1):
    for z in range(-r, r + 1):
      if (x**2 + y**2 + z**2)**0.5 > r:
        continue
      f.write(f"execute positioned ~{x} ~{y} ~{z} unless block ~ ~ ~ #explosion_rebuilder:air if block ~ ~ ~ #explosion_rebuilder:regenerateable unless block ~ ~ ~ minecraft:tnt align xyz unless entity @e[type=minecraft:marker,tag=s.crhf.block_marker,dx=0] positioned ~0.5 ~0.5 ~0.5 run function explosion_rebuilder:spawn_creeper_marker\n")
f.close()

file_path = "data/explosion_rebuilder/functions/spat_scan.mcfunction"
f = open(file_path, "w")
r = 3
for x in range(-r, r + 1):
  for y in range(-r, r + 1):
    for z in range(-r, r + 1):
      if (x**2 + y**2 + z**2)**0.5 > r:
        continue
      f.write(f"execute positioned ~{x} ~{y} ~{z} unless block ~ ~ ~ #explosion_rebuilder:air if block ~ ~ ~ #explosion_rebuilder:regenerateable unless block ~ ~ ~ minecraft:tnt align xyz unless entity @e[type=minecraft:marker,tag=s.crhf.block_marker,dx=0] positioned ~0.5 ~0.5 ~0.5 run function explosion_rebuilder:spawn_spat_marker\n")
f.close()

file_path = "data/explosion_rebuilder/functions/tnt_scan.mcfunction"
f = open(file_path, "w")
r = 8
for x in range(-r, r + 1):
  for y in range(-r, r + 1):
    for z in range(-r, r + 1):
      if (x**2 + y**2 + z**2)**0.5 > r:
        continue
      f.write(f"execute positioned ~{x} ~{y} ~{z} unless block ~ ~ ~ #explosion_rebuilder:air if block ~ ~ ~ #explosion_rebuilder:regenerateable unless block ~ ~ ~ minecraft:tnt align xyz unless entity @e[type=minecraft:marker,tag=s.crhf.block_marker,dx=0] positioned ~0.5 ~0.5 ~0.5 run function explosion_rebuilder:spawn_tnt_marker\n")
f.close()



file_path = "data/explosion_rebuilder/functions/bed_scan.mcfunction"
f = open(file_path, "w")
r = 10
for x in range(-r, r + 1):
  for y in range(-r, r + 1):
    for z in range(-r, r + 1):
      if (x**2 + y**2 + z**2)**0.5 > r:
        continue
      f.write(f"execute positioned ~{x} ~{y} ~{z} unless block ~ ~ ~ #explosion_rebuilder:air if block ~ ~ ~ #explosion_rebuilder:regenerateable unless block ~ ~ ~ minecraft:tnt align xyz unless entity @e[type=minecraft:marker,tag=s.crhf.block_marker,dx=0] positioned ~0.5 ~0.5 ~0.5 run function explosion_rebuilder:spawn_bed_marker\n")
f.close()



file_path = "data/explosion_rebuilder/functions/respawn_anchor_scan.mcfunction"
f = open(file_path, "w")
r = 10
for x in range(-r, r + 1):
  for y in range(-r, r + 1):
    for z in range(-r, r + 1):
      if (x**2 + y**2 + z**2)**0.5 > r:
        continue
      f.write(f"execute positioned ~{x} ~{y} ~{z} unless block ~ ~ ~ #explosion_rebuilder:air if block ~ ~ ~ #explosion_rebuilder:regenerateable unless block ~ ~ ~ minecraft:tnt align xyz unless entity @e[type=minecraft:marker,tag=s.crhf.block_marker,dx=0] positioned ~0.5 ~0.5 ~0.5 run function explosion_rebuilder:spawn_respawn_anchor_marker\n")
f.close()



file_path = "data/explosion_rebuilder/functions/end_crystal_scan.mcfunction"
f = open(file_path, "w")
r = 11
for x in range(-r, r + 1):
  for y in range(-r, r + 1):
    for z in range(-r, r + 1):
      if (x**2 + y**2 + z**2)**0.5 > r:
        continue
      f.write(f"execute positioned ~{x} ~{y} ~{z} unless block ~ ~ ~ #explosion_rebuilder:air if block ~ ~ ~ #explosion_rebuilder:regenerateable unless block ~ ~ ~ minecraft:tnt align xyz unless entity @e[type=minecraft:marker,tag=s.crhf.block_marker,dx=0] positioned ~0.5 ~0.5 ~0.5 run function explosion_rebuilder:spawn_end_crystal_marker\n")
f.close()

print("Finished")
