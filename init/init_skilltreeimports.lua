-- ADD ALL THE SKILL THREE IMAGES HERE

local OldGetSkilltreeBG = GLOBAL.GetSkilltreeBG
function GLOBAL.GetSkilltreeBG(imagename, ...)
    if imagename == "wathgrithr_background.tex" and GetModConfigData("wathgrithr_rework") then
        return "images/wathgrithr_rework_skilltree.xml"
    else
        return OldGetSkilltreeBG(imagename, ...)
    end
end