-----------------------------------------------------------------------
-- Madax's Melee Weapons Pack Distribution System
-- by NCrawler
-----------------------------------------------------------------------
-----------------------------------------------------------------------
-- Spawn Location Table
-----------------------------------------------------------------------
local weaponspawnlocs = {
	all = {inventorymale=2,inventoryfemale=2,metal_shelves=5},
	armyhanger = {metal_shelves=10,counter=10,locker=10},
	armystorage = {locker=10,metal_shelves=10},
	armysurplus = {shelves=10,metal_shelves=10},
	bedroom = {wardrobe=1,sidetable=1},
	camping = {counter=5,shelves=5},
	campingstorage = {crate=5},
	closet = {crate=2,metal_shelves=2},
	garagestorage = {crate=3},
	gunstore = {counter=2,displaycase=2,locker=2,metal_shelves=2},
	gunstorestorage = {all=2},
	hunting = {locker=4,metal_shelves=4,other=4},
	policestorage = {locker=5,metal_shelves=5},
	shed = {other=3},
	sportstorage = {metal_shelves=4,shelves=4,crate=4,counter=4},
	sportstore = {shelves=4,counter=4},
	storageunit = {all=3},
}

-----------------------------------------------------------------------
-- Main Function
-----------------------------------------------------------------------
local function spawnMWPitems(_roomName, _containerType, _containerFilled)	
	if (weaponspawnlocs[_roomName] == nil) then
		return
	end
	
	if (weaponspawnlocs[_roomName] ~= nil) and (weaponspawnlocs[_roomName][_containerType] ~= nil) then
		if RollPercent(weaponspawnlocs[_roomName][_containerType]) then
			_containerFilled:AddItem(weaponTable[FillContainer(#weaponTable)])
		end
	end
end

-----------------------------------------------------------------------
-- Weapon Table
-----------------------------------------------------------------------
weaponTable = {
	"MWPWeapons.fiskarcurvedmachete",
	"MWPWeapons.albtacticalkatana",
	"MWPWeapons.syntheticsword",
	"MWPWeapons.defender18machete",
	"MWPWeapons.zhunterhookmachete",
	"MWPWeapons.gothsamuraisword",
	"MWPWeapons.crtkkukrimachete",
	"MWPWeapons.britishp1856pioneers",
	"MWPWeapons.sogfaritantomachete",
	"MWPWeapons.korekmachete",
	"MWPWeapons.taigamachete",
	"MWPWeapons.muelahuntingknife",
	"MWPWeapons.cgcombattanto",
	"MWPWeapons.yangjangcolumbiabayonet",
	"MWPWeapons.assaultvknife",
	"MWPWeapons.khkcombatknife",
	"MWPWeapons.kabar1245tanto",
	"MWPWeapons.aitormonterobowieknife",
	"MWPWeapons.arliabutterflyknife",
	"MWPWeapons.reapertacsickle",
	"MWPWeapons.rexlerkunai",
	"MWPWeapons.ontariookc10bayonet",
	"MWPWeapons.sogf19nelite",
	"MWPWeapons.russianakmbayonet",
	"MWPWeapons.blitalianstiletto",
	"MWPWeapons.dmmiceaxe",
	"MWPWeapons.cwcombathatchet",
	"MWPWeapons.roughneckaxe",
	"MWPWeapons.crtkfreyraxe",
	"MWPWeapons.gerberpackhatchet",
	"MWPWeapons.doomsdaysurvivalaxe",
	"MWPWeapons.spydercohatchethawk",
	"MWPWeapons.pythoncampaxe",
	"MWPWeapons.winklersurvivalhatchet",
	"MWPWeapons.sogbeardedcampaxe",
	"MWPWeapons.gemtord42crashaxe",
	"MWPWeapons.gerberdownrangetomahawk",
	"MWPWeapons.sptesnaztacticalshovel",
	"MWPWeapons.fiskarsplittingmaul",
	"MWPWeapons.reavercleaver",
	"MWPWeapons.aluminiumbaseballbat",
	"MWPWeapons.eastonb5baseballbat",
	"MWPWeapons.roughneckgorillasledgehammer",
	"MWPWeapons.avengebaseballbat",
	"MWPWeapons.louisvillevaporbaseballbat",
	"MWPWeapons.brooklynsmasher",
	"MWPWeapons.fatmaxbrickhammer",
	"MWPWeapons.oxnailhammer",
	"MWPWeapons.m48tacticalwarhammer",
	"MWPWeapons.coldsteelspear"
};

-----------------------------------------------------------------------
-- Random Gen functions
-----------------------------------------------------------------------
function RollPercent(_percentage)
	if ZombRand(1000)+1 >= (1000 - ((1000 * _percentage) / 100)) then
		return true
	else
		return false
	end
end

function FillContainer(_index)
	return ZombRand(_index)+1
end

Events.OnFillContainer.Add(spawnMWPitems)