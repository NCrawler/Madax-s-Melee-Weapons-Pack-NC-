if getActivatedMods():contains("ItemTweakerAPI") then 
	require("ItemTweaker_Core");
else
	return
end

TweakItem("Base.Machete","AttachmentType","Knife")
TweakItem("Base.Kukri","AttachmentType","Knife")
