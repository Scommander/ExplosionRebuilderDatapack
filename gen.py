import json
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


'''Read, write, and drop scripts'''

def load_block_data(filename):
    with open(filename, 'r') as f:
        json_data = f.read()
    return json.loads(json_data)


def write_read_block_function(blocks, block_dict, tag, id_counter):
    global block_score_dict
    with open(f'data/block_generated/functions/read/p{tag}.mcfunction', 'w') as f:
        for block in blocks:
            for state in block_dict[block]['states']:
                if 'properties' in state:
                    blockstate_data = ','.join(
                        [f'{k}={v}' for k, v in state['properties'].items()])
                    f.write(
                        f'execute if block ~ ~ ~ {block}[{blockstate_data}] run scoreboard players set @s s.crhf.block_id {id_counter}' + '\n')
                    block_score_dict[id_counter] = f'{block}[{blockstate_data}]'
                else:
                    f.write(
                        f'scoreboard players set @s s.crhf.block_id {id_counter}')
                    block_score_dict[id_counter] = block
                id_counter += 1
    return id_counter


def create_block_tag_file(blocks, tag):
    with open(f'data/block_generated/tags/blocks/p{tag}.json', 'w') as f:
        f.write(
            '{"values":[' + ','.join([f'"{block}"' for block in blocks]) + ']}')


def read_block(blocks, tag, id_counter=0):
    # Base case: If the list contains only one block, create a file with the block contents and return
    if len(blocks) <= 1:
        id_counter = write_read_block_function(
            blocks, block_dict, tag, id_counter)
        return id_counter

    # Calculate the middle index of the blocks list
    mid = len(blocks) // 2

    # Split the blocks list into two halves
    split1 = blocks[:mid]
    split2 = blocks[mid:]

    create_block_tag_file(split1, f'{tag}_0')
    create_block_tag_file(split2, f'{tag}_1')

    # Create the read block files
    with open(f'data/block_generated/functions/read/p{tag}.mcfunction', 'w') as f:
        f.write(
            f'execute if block ~ ~ ~ #block_generated:p{tag}_0 run function block_generated:read/p{tag}_0' + '\n')
        f.write(
            f'execute if block ~ ~ ~ #block_generated:p{tag}_1 run function block_generated:read/p{tag}_1' + '\n')

    # Recursively call the 'split' function on the two halves of blocks
    id_counter = read_block(split1, f'{tag}_0', id_counter)
    id_counter = read_block(split2, f'{tag}_1', id_counter)

    return id_counter


def write_block(numbers, block_score_dict, tag):
    if len(numbers) <= 16:
        with open(f'data/block_generated/functions/write/p{tag}.mcfunction', 'w') as f:
            for num in numbers:
                f.write(
                    f'execute if score @s s.crhf.block_id matches {num} run setblock ~ ~ ~ {block_score_dict[num]}' + '\n')
        with open(f'data/block_generated/functions/drop/p{tag}.mcfunction', 'w') as f:
            for num in numbers:
                f.write(
                    f'execute if score @s s.crhf.block_id matches {num} run summon minecraft:item ~ ~ ~ ' + '{Item:{id:"' + block_score_dict[num].split('[')[0] + '", Count: 1b}}' + '\n')
        return

    mid = len(numbers)//2

    # Split the numbers list into two halves
    split1 = numbers[:mid]
    split2 = numbers[mid:]

    with open(f'data/block_generated/functions/write/p{tag}.mcfunction', 'w') as f:
        f.write(
            f'execute if score @s s.crhf.block_id matches {split1[0]}..{split1[-1]} run function block_generated:write/p{tag}_0' + '\n')
        f.write(
            f'execute if score @s s.crhf.block_id matches {split2[0]}..{split2[-1]} run function block_generated:write/p{tag}_1' + '\n')

    with open(f'data/block_generated/functions/drop/p{tag}.mcfunction', 'w') as f:
        f.write(
            f'execute if score @s s.crhf.block_id matches {split1[0]}..{split1[-1]} run function block_generated:drop/p{tag}_0' + '\n')
        f.write(
            f'execute if score @s s.crhf.block_id matches {split2[0]}..{split2[-1]} run function block_generated:drop/p{tag}_1' + '\n')

    # Recursively call the 'write_block' function on the two halves of blocks
    write_block(split1, block_score_dict, f'{tag}_0')
    write_block(split2, block_score_dict, f'{tag}_1')


def regenerateable(blocks):
    with open('data/explosion_rebuilder/tags/blocks/regenerateable.json', 'w') as f:
        f.write(
            '{"values":[' + ','.join([f'"{block}"' for block in blocks]) + ']}')


if __name__ == "__main__":
    block_score_dict = {}
    block_dict = load_block_data('blocks.json')
    blocks = list(block_dict.keys())
    id_counter = read_block(blocks, tag="")

    numbers = [i for i in range(id_counter)]  # inclusive
    write_block(numbers, block_score_dict, tag='')
    regenerateable(blocks)
