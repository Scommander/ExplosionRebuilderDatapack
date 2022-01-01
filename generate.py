file = open("data/creeperfiller/functions/small_scan.mcfunction", "w")
'''Check radius generation'''
for x in range(-5, 6):
    for y in range(-5, 6):
        for z in range(-5, 6):
            file.write(f"execute positioned ~{x} ~{y} ~{z} unless block ~ ~ ~ #creeperfiller:air if block ~ ~ ~ #creeperfiller:regenerateable align xyz unless entity @e[type=minecraft:marker,tag=s.crhf.block_marker,dx=0] positioned ~0.5 ~0.5 ~0.5 run function creeperfiller:spawn_marker\n")
file.close()

file = open("data/creeperfiller/functions/big_scan.mcfunction", "w")
'''Check radius generation'''
for x in range(-8, 9):
    for y in range(-8, 9):
        for z in range(-8, 9):
            file.write(f"execute positioned ~{x} ~{y} ~{z} unless block ~ ~ ~ #creeperfiller:air if block ~ ~ ~ #creeperfiller:regenerateable align xyz unless entity @e[type=minecraft:marker,tag=s.crhf.block_marker,dx=0] positioned ~0.5 ~0.5 ~0.5 run function creeperfiller:spawn_marker\n")
file.close()


print("Finished")
