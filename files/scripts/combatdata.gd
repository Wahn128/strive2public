extends Node


var enemygrouppools = {
wolveseasy = { units = [['wolf',2,3]], awareness = 6, captured = null, special = null,
description = 'You come across small pack of wolves.',
descriptionambush = 'You are attacked by small pack of wolves.',
},
direwolveseasy = { units = [['direwolf',2,5]], awareness = 18, captured = null, special = null,
description = 'You come across a pack of dangerous Dire Wolves.',
descriptionambush = 'You are attacked by a pack of dangerous Dire Wolves.',
},
wolveshard = { units = [['wolf',3,6]], awareness = 15, captured = null, special = null,
description = 'You come across a large pack of wolves.',
descriptionambush = 'You are attacked by large pack of wolves.',
},
solobear = { units = [['bear',1,1]], awareness = 6, captured = null, special = null,
description = "$scoutname spots a brown bear couple feet away from you before it's too late. ",
descriptionambush =  "As you walk through the wildreness, you hear fierce roar. It seems you provoked a bear by getting into it's territory and it goes for attack.",
},
plantseasy = { units = [['plant',2,3]], awareness = 0, captured = null, special = null,
description = 'You come across a bunch of living hostile plants. ',
},
fewcougars = { units = [['cougar',2,3]], awareness = 10, captured = null, special = null,
description = "$scoutname spots a group of mountain cougars searching for prey. ",
descriptionambush =  "You are being attacked by group of mountain cougar!",
},
solospider = { units = [['spider',1,1]], awareness = 12, captured = null, special = null,
description = "$scoutname spots a giant spider hiding in the shadows. ",
descriptionambush =  "Horse sized spider detected you trespassing its domain and prepares to attack.",
},
spidergroup = { units = [['spider',3,4]], awareness = 24, captured = null, special = null,
description = "$scoutname spots a group of giant spiders hiding in the shadows. ",
descriptionambush =  "You are attacked by a group of giant spiders.",
},
oozesgroup = { units = [['ooze',2,3]], awareness = 0, captured = null, special = null,
description = "You come across group of living ooze monsters. ",
},
banditseasy = {units = [['bandit',2,3]], awareness = 6, captured = null, special = null,
description = 'You spot a small group of stray bandits. They seems to be unaware of your presence yet. ',
descriptionambush = 'You are attacked by small group of stray bandits. ',
},
thugseasy = {units = [['bandit',2,2]], awareness = 0, captured = ['thugvictim'], special = null,
description = 'You come across pair of thugs bullying some bystrander. As they are too busy, you can pass them unnoticed. ',
},
banditsmedium = {units = [['banditleader', 0,1],['bandit',3,6]], awareness = 12, captured = null, special = null,
description = 'You spot a medium-sized group of stray bandits. They seems to be unaware of your presence yet. ',
descriptionambush = 'You are attacked by group of stray bandits. ',
},
banditshard = {units = [['banditleader', 1,1],['bandit',7,8]], awareness = 15, captured = null, special = null,
description = 'You spot a large-sized group of stray bandits. They seems to be unaware of your presence yet. ',
descriptionambush = 'You are attacked by large group of stray bandits. ',
},
CaliBossSlaver = {units = [['slaver',1,1]], awareness = 0, captured = null, special = null,
description = 'You spot a small group of stray bandits. They seems to be unaware of your presence yet. ',
descriptionambush = 'You are attacked by small group of stray bandits. ',
},
CaliStrayBandit = {units = [['bandit',1,1]], awareness = 0, captured = null, special = null,
description = 'You spot a small group of stray bandits. They seems to be unaware of your presence yet. ',
descriptionambush = 'You are attacked by small group of stray bandits. ',
},
banditcamp = {units = [['bandit',6,8],['banditleader', 1,2]], awareness = 0, captured = ['banditcampcaptured', 'banditcampcaptured'], special = null,
description = 'You come across a bandit encampment. You can spot numerous watchmen around and few capturees, which are likely to be sold for reward, inside. ',
},
elfguards = {units = [['elfguard',2,3]], awareness = 15, captured = null, special = null,
description = "You spot a local patrol of elven warriors scouting the surroundings. It seems they won't be happy with trespassers as this is clearly a tribal Elven territory. ",
descriptionambush = 'You are attacked by small group of elven warriors. ',
},
fairy = {units = [['fairy',1,1]], awareness = 0, captured = null, special = null,
description = 'You spot a [color=aqua]$race $child[/color] going through the woods.',
},
dryad = {units = [['dryad',1,1]], awareness = 0, captured = null, special = null,
description = 'You spot a [color=aqua]$race $child[/color] going through the woods.',
},
monstergirl = {units = [['monstergirl',1,1]], awareness = 0, captured = null, special = null,
description =  "You come across a rare $race monster $child who haven't spot you yet. ",
descriptionambush = 'You are attacked by $race monster $child!',
},
harpy = {units = [['harpy',1,1]], awareness = 0, captured = null, special = null,
description =  "You come across a $race monster $child who haven't spot you yet. ",
},
slaverseasy = {units = [['slaver',2,3]], awareness = 0, captured = ['slavervictim'], special = null,
description = "The group of $unitnumber slavers leading a sole victim. You can't say much about them without getting closer.",
},
slaversmedium = {units = [['slaver',3,5]], awareness = 0, captured = ['slavervictim', 'slavervictim'], special = null,
description = "The group of $unitnumber slavers leading few recently captured victims. You can't say much about them without getting closer.",
},
peasant = {units = [['peasant',1,1]], awareness = 0, captured = null, special = null,
description = "You meet lone [color=aqua]$race $child[/color], native to these lands. $He seems to be unaware of your presence yet. ",
},
peasantgroup = {units = [['peasant',2,3]], awareness = 0, captured = null, special = null,
description = "You meet a group of $unitnumber strangers, native to these lands. They seems to be unaware of your presence yet. ",
},
travelersgroup = {units = [['traveller',2,3]], awareness = 0, captured = null, special = null,
description = "You meet a group of $unitnumber travellers moving by the road. They seems to be unaware of your presence yet. ",
},
troglodytesmall = {units = [['troglodyte',3,5]], awareness = 20, captured = null, special = null,
description = 'You spot a small-sized group of troglodytes. They seems to be unaware of your presence yet. ',
descriptionambush = 'You are attacked by small group of troglodytes. ',
},
troglodytelarge = {units = [['troglodyte',7,10]], awareness = 16, captured = null, special = null,
description = 'You spot a large-sized group of troglodytes. They seems to be unaware of your presence yet. ',
descriptionambush = 'You are attacked by large group of troglodytes. ',
},
mutant = {units = [['mutant',1,1]], awareness = 25, captured = null, special = null,
description = 'You spot and ugly creature, deformed by magical energy.',
descriptionambush = 'You are attacked by a mutant. ',
},
gembeetle = {
units = [['gembeetle',1,1]], awareness = 0, captured = null, special = null,
description = "You spot an unusual creature. A shiny, multicolored bug of significant size. ",
},
bossgolem = {
units = [['bossgolem',1,1]], awareness = 0, captured = null, special = null,
description = "Golem Boss",
},
bosswyvern = {
units = [['bosswyvern',1,1]], awareness = 0, captured = null, special = null,
description = "Wyvern Boss",
},
tishaquestenemy = {units = [['banditleader',1,1],['bandit',3,3]], awareness = 0, captured = null, special = null,
description = "You meet a group of $unitnumber travellers moving by the road. They seems to be unaware of your presence yet. ",
},
ivranquestenemy = {units = [['ivran',1,1],['elfguard',4,4]], awareness = 0, captured = null, special = null,
description = "You meet a group of $unitnumber travellers moving by the road. They seems to be unaware of your presence yet. ",
},
frostforddryadquest = {units = [['direwolf',6,6],['plant',4,4]], awareness = 0, captured = null, special = null,
description = "You meet a group of $unitnumber travellers moving by the road. They seems to be unaware of your presence yet. ",
},
frostfordzoequest = {units = [['marauder',9,9]], awareness = 0, captured = null, special = null,
description = "You meet a group of $unitnumber travellers moving by the road. They seems to be unaware of your presence yet. ",
},
}

var capturespool = {
thugvictim = {
race = ['area'],
originspool = [['rich',5],['commoner',20],['poor', 50],['slave',100]],
agepool = [['child',20],['teen',60], ['adult', 100]],
sex = ['any'],
faction = 'stranger',
},
slavervictim = {
race = ['area'],
originspool = [['rich',10],['slave',20],['commoner',45],['poor', 100]],
agepool = [['child',20],['teen',60], ['adult', 100]],
sex = ['any'],
faction = 'stranger',
},
banditcampcaptured= {
race = ['any'],
originspool = [['noble', 10],['rich',40],['commoner',80],['poor', 100]],
agepool = [['child',20],['teen',60], ['adult', 100]],
sex = ['any'],
faction = 'stranger',
},


}


var enemypool = {
wolf = {
name = 'Wolf',
code = 'wolf',
faction = 'animal',
icon = load("res://files/images/enemies/wolf.png"),
special = null,
capture = null,
rewardpool = {bestialessenceing = 15, supply = 30},
rewardgold = 0,
rewardsupply = {low = 1, high = 2},
rewardexp = 10,
stats = {health = 25, power = 5, speed = 12, energy = 50, armor = 0, magic = 0, abilities = ['attack']},
skills = [],
},
direwolf = {
name = 'Dire Wolf',
code = 'direwolf',
faction = 'animal',
icon = load("res://files/images/enemies/wolf.png"),
special = null,
capture = null,
rewardpool = {bestialessenceing = 25, supply = 15},
rewardgold = 0,
rewardsupply = {low = 1, high = 3},
rewardexp = 20,
stats = {health = 50, power = 8, speed = 15, energy = 50, armor = 1, magic = 0, abilities = ['attack']},
skills = [],
},
plant = {
name = 'Plant',
code = 'plant',
faction = 'plant',
icon = load("res://files/images/enemies/plant.png"),
special = null,
capture = null,
rewardpool = {natureessenceing = 35, supply = 25},
rewardgold = 0,
rewardsupply = {low = 1, high = 3},
rewardexp = 15,
stats = {health = 40, power = 5, speed = 7, energy = 50, armor = 3, magic = 0, abilities = ['attack']},
skills = [],
},
ooze = {
name = 'Ooze',
code = 'ooze',
faction = 'animal',
icon = load("res://files/images/enemies/slime.png"),
special = null,
capture = null,
rewardpool = {taintedessenceing = 20, fluidsubstanceing = 20, supply = 30},
rewardgold = 0,
rewardsupply = {low = 2, high = 3},
rewardexp = 25,
stats = {health = 55, power = 7, speed = 12, energy = 50, armor = 15, magic = 0, abilities = ['attack']},
skills = [],
},
bear = {
name = 'Bear',
code = 'bear',
faction = 'animal',
icon = load("res://files/images/enemies/bear.png"),
special = null,
capture = null,
rewardpool = {bestialessenceing = 40, supply = 25},
rewardgold = 0,
rewardsupply = {low = 1, high = 3},
rewardexp = 20,
stats = {health = 90, power = 7, speed = 13, energy = 50, armor = 3, magic = 0, abilities = ['attack']},
skills = [],
},
cougar = {
name = 'Cougar',
code = 'cougar',
faction = 'animal',
icon = load("res://files/images/enemies/cougar.png"),
special = null,
capture = null,
rewardpool = {bestialessenceing = 30, supply = 40},
rewardgold = 0,
rewardsupply = {low = 1, high = 4},
rewardexp = 20,
stats = {health = 60, power = 6, speed = 15, energy = 50, armor = 1, magic = 0, abilities = ['attack']},
skills = [],
},
spider = {
name = 'Giant Spider',
code = 'spider',
faction = 'animal',
icon = load("res://files/images/enemies/spider.png"),
special = null,
capture = null,
rewardpool = {bestialessenceing = 40, supply = 25},
rewardgold = 0,
rewardsupply = {low = 1, high = 4},
rewardexp = 50,
stats = {health = 120, power = 12, speed = 17, energy = 50, armor = 5, magic = 2, abilities = ['attack']},
skills = [],
},
peasant = {
name = 'Lone Stranger',
code = 'peasant',
faction = 'stranger',
icon = load("res://files/images/enemies/stranger.png"),
special = null,
capture = true,
capturerace = ['area'],
captureoriginspool = [['commoner',25],['poor', 100]],
captureagepool = [['child',20],['teen',60], ['adult', 100]],
capturesex = ['any'],
rewardpool = {gold = 15, supply = 25},
rewardgold = [1,5],
rewardsupply = {low = 1, high = 2},
rewardexp = 15,
stats = {health = 40, power = 4, speed = 14, energy = 50, armor = 2, magic = 1, abilities = ['attack']},
skills = [],
},
elfguard = {
name = 'An Elf Warrior',
code = 'elfguard',
faction = 'elf',
icon = null,
special = null,
capture = true,
capturerace = ['area'],
captureoriginspool = [['commoner',35],['rich', 45],['poor',100]],
captureagepool = [['teen',60], ['adult', 100]],
capturesex = ['any'],
rewardpool = {gold = 20, supply = 35},
rewardgold = [1,5],
rewardsupply = {low = 1, high = 2},
rewardexp = 30,
stats = {health = 75, power = 7, speed = 14, energy = 50, armor = 3, magic = 2, abilities = ['attack']},
skills = [],
},
fairy = {
name = 'Fairy',
code = 'fairy',
faction = 'monster',
icon = null,
special = '',
capture = true,
capturerace = [['Fairy',100]],
captureoriginspool = [['poor', 50],['commoner',100]],
captureagepool = [['child',20],['teen',60], ['adult', 100]],
capturesex = ['any'],
rewardpool = {magicessenceing = 35},
rewardgold = [5,10],
rewardexp = 20,
stats = {health = 45, power = 4, speed = 17, energy = 50, armor = 0, magic = 5, abilities = ['attack']},
skills = [],
},
harpy = {
name = 'Harpy',
code = 'harpy',
faction = 'monster',
icon = null,
special = '',
capture = true,
capturerace = [['Harpy',100]],
captureoriginspool = [['poor',50],['commoner',100]],
captureagepool = [['child',20],['teen',60], ['adult', 100]],
capturesex = ['any'],
rewardpool = {bestialessenceing = 20},
rewardgold = [5,10],
rewardexp = 20,
stats = {health = 55, power = 5, speed = 16, energy = 50, armor = 1, magic = 0, abilities = ['attack']},
skills = [],
},
dryad = {
name = 'Dryad',
code = 'dryad',
faction = 'monster',
icon = null,
special = '',
capture = true,
capturerace = [['Dryad',100]],
captureoriginspool = [['commoner',100],['poor',50]],
captureagepool = [['child',20],['teen',60], ['adult', 100]],
capturesex = ['any'],
rewardpool = {natureessenceing = 20},
rewardgold = [5,10],
rewardexp = 20,
stats = {health = 75, power = 4, speed = 15, energy = 50, armor = 0, magic = 0, abilities = ['attack']},
skills = [],
},
monstergirl = {
name = 'Monster ',
code = 'monstergirl',
faction = 'monster',
icon = null,
special = '',
capture = true,
capturerace = ['area'],
captureoriginspool = [['rich',25],['poor',50],['commoner',100]],
captureagepool = [['child',20],['teen',60], ['adult', 100]],
capturesex = ['any'],
rewardpool = {},
rewardgold = [5,10],
rewardexp = 25,
stats = {health = 100, power = 7, speed = 14, energy = 50, armor = 2, magic = 1, abilities = ['attack']},
skills = [],
},
bandit = {
name = 'Bandit',
code = 'bandit',
faction = 'bandit',
icon = load("res://files/images/enemies/banditm.png"),
iconalt = load("res://files/images/enemies/banditf.png"),
special = '',
capture = true,
capturerace = ['bandits'],
captureoriginspool = [['slave',20],['commoner',35],['poor', 100]],
captureagepool = [['child',20],['teen',60], ['adult', 100]],
capturesex = ['any'],
rewardpool = {gold = 35},
rewardgold = [5,15],
rewardexp = 20,
stats = {health = 65, power = 3, speed = 14, energy = 50, armor = 2, magic = 0, abilities = ['attack']},
skills = [],
},
banditleader = {
name = 'Bandit Leader',
code = 'banditleader',
faction = 'bandit',
icon = load("res://files/images/enemies/banditleaderm.png"),
iconalt = load("res://files/images/enemies/banditleaderf.png"),
special = '',
capture = true,
capturerace = ['bandits'],
captureoriginspool = [['slave',20],['commoner',55],['poor', 100]],
captureagepool = [['teen',30], ['adult', 100]],
capturesex = ['any'],
rewardpool = {gold = 100},
rewardgold = [30,50],
rewardexp = 50,
stats = {health = 90, power = 6, speed = 18, energy = 80, armor = 4, magic = 0, abilities = ['attack']},
skills = [],
},
marauder = {
name = 'Marauder',
code = 'marauder',
faction = 'bandit',
icon = load("res://files/images/enemies/banditleaderm.png"),
iconalt = load("res://files/images/enemies/banditleaderf.png"),
special = '',
capture = true,
capturerace = ['bandits'],
captureoriginspool = [['slave',20],['commoner',55],['poor', 100]],
captureagepool = [['teen',30], ['adult', 100]],
capturesex = ['any'],
rewardpool = {gold = 100},
rewardgold = [30,50],
rewardexp = 50,
stats = {health = 100, power = 12, speed = 18, energy = 80, armor = 4, magic = 0, abilities = ['attack']},
skills = [],
},
traveller = {
name = 'Traveller',
code = 'traveller',
faction = 'stranger',
icon = load("res://files/images/enemies/stranger.png"),
special = '',
capture = true,
capturerace = ['area'],
captureoriginspool = [['poor',30],['commoner',80],['rich', 100]],
captureagepool = [['child',20],['teen',60], ['adult', 100]],
capturesex = ['any'],
rewardpool = {gold = 50, supply = 50},
rewardgold = [5,15],
rewardsupply = {low = 1, high = 4},
rewardexp = 20,
stats = {health = 50, power = 5, speed = 13, energy = 50, armor = 2, magic = 0, abilities = ['attack']},
skills = [],
},
slaver = {
name = 'Slaver',
code = 'slaver',
faction = 'stranger',
icon = load("res://files/images/enemies/slaverm.png"),
iconalt = load("res://files/images/enemies/slaverf.png"),
special = null,
capture = true,
capturerace = ['bandits'],
captureoriginspool = [['slave',20],['commoner',50],['poor', 100]],
captureagepool = [['teen',20], ['adult', 100]],
capturesex = ['any'],
rewardpool = {gold = 35, supply = 40},
rewardgold = [5,15],
rewardsupply = {low = 2, high = 3},
rewardexp = 25,
stats = {health = 70, power = 7, speed = 15, armor = 4, energy = 50, magic = 0, abilities = ['attack']},
skills = [],
},
ivran = {
name = 'An Elf Leader',
code = 'ivran',
faction = 'elf',
icon = null,
special = null,
capture = true,
capturerace = ['Dark Elf',100],
captureoriginspool = [['commoner',25],['rich', 35],['poor',100]],
captureagepool = [['teen',60], ['adult', 100]],
capturesex = ['any'],
rewardpool = {gold = 20},
rewardgold = [5,10],
rewardexp = 30,
stats = {health = 90, power = 10, speed = 20, energy = 50, armor = 4, magic = 2, abilities = ['attack']},
skills = [],
},
#undercity
mutant = {
name = 'Crazed mutant',
code = 'mutant',
faction = 'animal',
icon = load("res://files/images/enemies/mutant.png"),
special = null,
capture = null,
rewardpool = {taintedessenceing = 40},
rewardgold = 0,
rewardsupply = {low = 1, high = 4},
rewardexp = 50,
stats = {health = 150, power = 15, speed = 17, energy = 50, armor = 2, magic = 2, abilities = ['attack']},
skills = [],
},
troglodyte = {
name = 'Troglodyte',
code = 'troglodyte',
faction = 'animal',
icon = load("res://files/images/enemies/troglodyte.png"),
special = null,
capture = null,
rewardpool = {taintedessenceing = 40, supply = 30},
rewardgold = 0,
rewardsupply = {low = 1, high = 2},
rewardexp = 50,
stats = {health = 90, power = 12, speed = 14, energy = 50, armor = 2, magic = 2, abilities = ['attack']},
skills = [],
},
gembeetle = {
name = 'Gem Beetle',
code = 'gembeetle',
faction = 'animal',
icon = load("res://files/images/enemies/gembettle.png"),
special = null,
capture = null,
rewardpool = {gem = 50},
rewardgold = 0,
rewardsupply = {low = 1, high = 2},
rewardexp = 10,
stats = {health = 75, power = 15, speed = 16, energy = 50, armor = 15, magic = 2, abilities = ['attack']},
skills = [],
},
bossgolem = {
name = 'Animated Golem',
code = 'bossgolem',
faction = 'boss',
icon = load("res://files/images/enemies/golem.png"),
special = null,
capture = null,
rewardpool = {gem = 50},
rewardgold = 0,
rewardsupply = {low = 1, high = 2},
rewardexp = 10,
stats = {health = 500, power = 20, speed = 16, energy = 50, armor = 20, magic = 2, abilities = ['attack','aoeattack']},
skills = [],
},
bosswyvern = {
name = 'Cave Wyvern',
code = 'bosswyvern',
faction = 'boss',
icon = null,
special = null,
capture = null,
rewardpool = {gem = 50},
rewardgold = 0,
rewardsupply = {low = 1, high = 2},
rewardexp = 10,
stats = {health = 450, power = 24, speed = 16, energy = 50, armor = 15, magic = 2, abilities = ['attack','aoeattack']},
skills = [],
},
}
