local v0 = string.char;
local v1 = string.byte; local v2 = string.sub; local
v3 = bit or bit; local v4 = v3.bxor; local v5 = table.concat; local
v6 = table.insert; local function v7(v29, v30)
    local v31 = {}; for v105 = 1, #
    v29 do
        v6(v31, v0(v4(v1(v2(v29, v105, v105 + 1)), v1(v2(v30, 1 + (v105 % #v30), 1
            + (v105 % #v30) + 1))) % 256));
    end
    return v5(v31);
end
local v8 = { Asset(v7(
    "\240\237\242\8", "\126\177\163\187\69\134\219\167"), v7(
    "\34\195\35\200\179\52\196\50\204\249\28\206\38\202\255\40\131\48\204\236",
    "\156\67\173\74\165")), Asset(v7("\21\153\96\59", "\38\84\215\41\118\220\70"), v7(
    "\81\24\43\31\177\71\31\58\27\251\111\21\46\29\253\91\41\42\19\240\84\5\108\8\247\64",
    "\158\48\118\66\114")), Asset(v7("\138\10\57\27", "\155\203\68\112\86\19\197"), v7(
    "\71\211\63\241\15\111\236\224\79\216\9\248\65\118\226\244\67\196\120\230\73\104",
    "\152\38\189\86\156\32\24\133")), Asset(v7("\221\121\142\107", "\38\156\55\199"), v7(
    "\169\115\117\37\92\99\245\76\172\120\114\23\2\97\255\70\166\66\108\33\22\119\255\13\178\116\108",
    "\35\200\29\28\72\115\20\154")) }; local v9 = {}; local function v10(v44)
    local v45 = 1744 - (1344 + 400); local v46;
    local v47; local v48; while true do
        if (v45 == (1201 - (209 + 992))) then
            v46, v47, v48 = v44.Transform:GetWorldPosition();
            v44.second = SpawnPrefab(v7("\14\182\201\214\136\19\55\21\176\210\212\133\45\58\29\128\194\218\142\35\58\29",
                "\84\121\223\177\191\237\76")); v44.minute = SpawnPrefab(v7(
                "\172\95\209\169\63\111\51\205\180\85\194\168\59\94\52\254\182\95\199\181\46\85", "\161\219\54\169\192\90\48\80")); v45 = 406 -
                (255 + 150);
        end
        if (v45 == (3 + 4)) then
            local v116 = 1504 - (363 + 1141); while true do
                if ((1580 - (1183 + 397)) == v116) then
                    v44.seconddangle.Transform:SetPosition(v46, v47 - (0.06 - 0), v48); v44.seconddangle.myhand = v44.second; v116 = 4 - 3;
                end
                if (v116 == (1 +
                        0)) then
                    v44.minutedangle.Transform:SetPosition(v46, v47 - (0.06 + 0), --[[==============================]] v48); v45 = 1983 - (1913 +
                        62); break;
                end
            end
        end
        if ((4 + 2) == v45) then
            local v117 = 0 --[[============================================]] - 0; while true do
                if (v117 == (407 - (183 + 223))) then
                    v44.entity: --[[======================================================]] AddFollower();
                    v45 = 8 - 1; break;
                end
                if (v117 == (1933 - (565 + 1368))) --[[==========================================================]] then
                    v44.hour.
                        entity:SetParent(v44.entity); v44.hour.Transform: --[[==============================================================]] SetPosition(0 -
                        0, 1661 - (1477 + 184), 0 - 0); v117 = 1 + 0;
                end
            end --[[================================================================]]
        end
        if (3 == v45)
        then
            v44.hourdangle.host = v44; v44.front = SpawnPrefab --[[==================================================================]](v7(
            --[[==================================================================]]
            --[[====================================================================]]
                "\62\200\52\129\44\254\47\132\38\194\39\142\59\206\34\156", --[[====================================================================]]
                "\232\73\161\76")); v44.front.Transform:SetPosition(v46, v47 - (0.1 + 0), v48); --[[======================================================================]] v45 = 342 - (118
                + 220);
        end
        if (v45 == 4) then
            local v120 = 0 + 0; while true do
                if (v120 == (449 --[[======================================================================]] - (108 + 341))
                    ) then
                    v44.second.entity:SetParent(v44.entity); v44.second.Transform:SetPosition --[[======================================================================]](0 + 0, 856 -
                        (564 + 292), 0 - 0); v120 = 2 - 1;
                end
                if (v120 == (1494 - (711 + 782))) then
                    v44.entity --[[======================================================================]]:AddFollower(
                    ); v45 = 309 - (244 + 60); break;
                end
            end
        end
        if (v45 == (15 - 7)) then
            v44.minutedangle. --[[======================================================================]] myhand = v44.
            minute; v44.hourdangle.Transform:SetPosition(v46, v47 - (0.06 + 0), v48); v44.hourdangle --[[======================================================================]].myhand = v44.
            hour; break;
        end
        if (v45 == (481 - (41 + 435))) then
            v44.minute.entity:SetParent(v44. --[[==================================================================]] entity); v44.
                minute.Transform:SetPosition(1001 - (938 + 63), 0, 0 + 0); v44.entity:AddFollower(); v45 --[[================================================================]] = 1131 - (936 + 189
            );
        end
        if (v45 == (1 + 1)) then
            local v125 = 1613 - (1565 + 48); while true do
                if (v125 == 1) --[[==============================================================]] then
                    v44.
                    hourdangle = SpawnPrefab(v7( --[[==========================================================]]
                        "\220\53\63\239\219\149\200\48\40\229\213\174\202\50\32\234\219\179\152", --[[====================================================]]
                        "\202\171\92\71\134\190")); v45 = 3 + 0; break;
                end
                if (v125 == (0 + 0)) then
                    v44.minutedangle = --[[==============================================]] SpawnPrefab(v7(
                        "\21\179\147\62\220\61\185\135\56\218\9\190\138\57\222\14\191\146\101", "\185\98\218\235\87")); v44 --[[====================================]].minutedangle.host = v44; v125 = 1
                    ;
                end
            end
        end
        if (v45 == (1139 - (782 + 356))) then
            v44.hour = SpawnPrefab(v7( --[[========================]]
                "\94\75\24\44\76\125\3\41\70\65\11\45\72\76\4\26\65\77\21\55", "\69\41\34\96")); v44.seconddangle = SpawnPrefab(v7(
                "\171\202\207\3\7\20\191\207\216\9\9\47\189\205\208\6\7\50\237", "\75\220\163\183\106\98")); v44.seconddangle.host = v44; v45 = 269 - (176 + 91);
        end
    end
end
local function
v11(v49, v50)
    local v51 = 0; while true do
        if (v51 == (0 - 0)) then
            if ((v49.hourdangle ~= nil) and (v49.seconddangle ~= nil) and (v49.minutedangle ~= nil)) then
                local v142 = 0 - 0
                ; local v143; local v144; local v145; local v146; while true do
                    if (v142 == 1) then
                        if (v49.final_code_ready and (v49.hourdangle.count == (1104 - (975 + 117))) and (v49.
                            minutedangle.count == (1877 - (157 + 1718))) and (v49.seconddangle.count == (6 + 1))) then
                            if (((v146 ~= nil) and (#v146 == #AllPlayers)) or not TUNING.DSTU.
                                ALL_MUST_BE_GATHERED) then
                                local v161 = 0 - 0; while true do
                                    if (v161 == (3 - 2)) then
                                        v49.final_code_ready = false; v49.components.timer:StartTimer(v7(
                                            "\42\11\145\195\190\7\27\145\195", "\202\88\110\226\166"), 9600); v161 = 1020 - (697 + 321);
                                    end
                                    if (v161 == (0 - 0)) then
                                        v49.canbeused = false; for v170 = 2 - 1, 16 - 8 do
                                            v49:
                                                DoTaskInTime((v170 * (6 - 3)) - (2 + 1), function()
                                                    local v171 = (24 - 8) - ((v170 - 1) * (507 - (351 + 154))); local v172 = (v170 - (1 - 0)) * (5 - 3); local v173 = TheSim:
                                                    FindFirstEntityWithTag(v7("\27\199\70\123\123\72\228\230\30\202\76\125\124\114", "\135\108\174\62\18\30\23\147")); if (v170 == (1235 - (322 + 905))) then
                                                        local v175 = 611 - (
                                                            602 + 9); while true do
                                                            if (v175 == (1189 - (449 + 740))) then
                                                                v173:PushEvent(v7("\165\249\43\220\22\145\32\207\183\237\37\220\39\185\58\223",
                                                                    "\167\214\137\74\171\120\206\83")); TheWorld:PushEvent(v7("\134\227\13\78\253\179\136\252\61\94\243\180\142\247\33", "\199\235\144\82\61\152"), {
                                                                    [v7("\3\23\160",
                                                                        "\75\103\118\217")] = 872 - (826 + 46),
                                                                    [v7("\195\65\99\31", "\126\167\52\16\116\217")] = 0 - 0,
                                                                    [v7("\198\39\39\136\160", "\156\168\78\64\224\212\121")] = 1575 - (1381 + 178)
                                                                })
                                                                ; break;
                                                            end
                                                        end
                                                    else
                                                        v173:PushEvent(v7("\16\231\189\199\2\209\178\207\21\234\183\193\5\235\154\221\15\251\177\218\2\252", "\174\103\142\197")); TheWorld:PushEvent(v7(
                                                            "\91\59\96\43\32\74\251\90\39\92\51\54\91\255\69", "\152\54\72\63\88\69\62"), {
                                                            [v7("\208\197\247", "\60\180\164\142")] = 0 + 0,
                                                            [v7("\92\75\22\34", "\114\56\62\101\73\71\141")
                                                            ] = v171,
                                                            [v7("\182\224\220\204\172", "\164\216\137\187")] = v172
                                                        });
                                                    end
                                                    local v174 = 9 - v170; v49.SoundEmitter:PlaySound(v7(
                                                        "\231\197\2\189\179\240\15\193\169\38\187\190\247\14\237\229\61\189\165\245\68", "\107\178\134\81\210\198\158") .. v174);
                                                end);
                                        end
                                        v161 = 1 + 0;
                                    end
                                    if (v161 == 2) then
                                        TheNet:SystemMessage(v7("\247\7\135\183\222\202\2\135\183\194\194\28\194\244\197\206\10\204\185\132", "\170\163\111\226\151")); break;
                                    end
                                end
                            else
                                TheNet:SystemMessage(v7(
                                    "\48\60\190\120\67\34\58\5\112\176\61\14\48\40\5\56\183\42\75\51\105\19\53\180\55\92\50\105\8\63\167\120\77\54\39\81\32\160\55\77\50\44\21\126\252\118",
                                    "\73\113\80\210\88\46\87"));
                            end
                        elseif ((v49.hourdangle.count == (957 - (245 + 702))) and (v49.minutedangle.count == (28 - 19)) and (v49.seconddangle.count == (1 + 0))) then
                            print(v7("\178\60\204\5\233\170\41\212", "\135\225\76\173\114")); local v162 = SpawnPrefab(v7("\13\228\160\185\169\130\183\19\236\182\191\147\190\166\8\233",
                                "\199\122\141\216\208\204\221")); v162.Transform:SetPosition(v49.Transform:GetWorldPosition()); v162.name = v7("\153\216\29\224\109\229\237\206\25\228\56\247\160\216\4",
                                "\150\205\189\112\144\24"); Launch2(v162, v49, 2 + 0, 1898 - (260 + 1638), 1, 440.5 - (382 + 58));
                        elseif ((v49.hourdangle.count == (3 - 2)) and (v49.minutedangle.count == (5 + 0))
                                and (v49.seconddangle.count == (6 + 2))) then
                            local v164 = 0 - 0; local v165; local v166; local v167; while true do
                                if (v164 == (0 - 0)) then
                                    v165 = 1156 - (1074 + 82); v166 = nil; v164
                                         = 1206 - (902 + 303);
                                end
                                if (v164 == (1 - 0)) then
                                    v167 = nil; while true do
                                        if (v165 == (1455 - (990 + 465))) then
                                            v166 = SpawnPrefab(v7(
                                                "\50\139\176\72\1\134\46\1\48\129\186\66\59\152\24\21\38\129", "\112\69\228\223\44\100\232\113")); v166.Transform:SetPosition(v49.Transform:GetWorldPosition()); v165 = 2 - 1;
                                        end
                                        if (v165 == (1 + 1)) then
                                            Launch2(v166, v167, 1692 - (1121 + 569), 214 - (22 + 192), 684 - (483 + 200), 1726.5 - (1668 + 58)); break;
                                        end
                                        if (v165 == (1464 - (1404 + 59)))
                                        then
                                            v166:AddTag(v7("\196\10\29\201\186\121\149\196\30\16\221", "\230\180\127\103\179\214\28")); v167 = ((v50 ~= nil) and v50) or v49; v165 = 2;
                                        end
                                    end
                                    break;
                                end
                            end
                        else
                            if (
                                    (v50 ~= nil) and (v50.components.sanity ~= nil)) then
                                v50.components.sanity:DoDelta(-(26 - 16));
                            end
                            v49.SoundEmitter:PlaySound(v7(
                                "\136\10\81\82\247\85\225\158\19\90\9\231\78\237\129\10\81\9\231\73\229\159\22\79\79\232\68\223\158\0\79\71\237\83", "\128\236\101\63\38\132\33"));
                        end
                        break;
                    end
                    if (
                            v142 == (0 - 0)) then
                        v143, v144, v145 = v49.Transform:GetWorldPosition(); v146 = TheSim:FindEntities(v143, v144, v145, 30, { v7("\171\213\67\68\27\169", "\126\219\185\34\61") });
                        v142 = 766 - (468 + 297);
                    end
                end
            end
            v49.SoundEmitter:KillSound(v7("\184\160\18\79\191\229\200\147\170\29\75\181\224", "\175\204\201\113\36\214\139")); break;
        end
    end
end
local function v12(v52)
    if (TheWorld.state.isday and v52.canbeused) then
        local v108 = 0 - 0; while true do
            if ((1 + 0) == v108) then
                v52:DoTaskInTime(13, function(v153)
                    local v154 = 0 + 0; while true do
                        if (v154 == 0) then
                            v153.components.activatable.inactive = false; v153.SoundEmitter:KillSound(v7(
                                "\242\204\206\54\239\203\202\2\229\201\194\62\237", "\93\134\165\173")); break;
                        end
                    end
                end); break;
            end
            if (v108 == (0 + 0)) then
                v52.components.activatable.inactive =
                    true; v52.SoundEmitter:PlaySound(v7("\114\239\6\211\17\73\200\38\147\19\78\212\60\217\59\68\192\58\223\15\8\216\60\223\15\78\194\50\227\7\75\195\54\215",
                    "\100\39\172\85\188"), v7("\185\113\186\139\58\163\127\134\131\63\162\123\178", "\83\205\24\217\224")); v108 = 563 - (334 + 228);
            end
        end
    end
end
local function v13(
    v53, v54)
    if (v54.name == v7("\172\247\210\199\46\241\167\109\187", "\30\222\146\161\162\90\174\210")) then v53.canbeused = true; end
end
local function v14(v55, v56)
    if (v55.canbeused ~= nil) then v56.canbeused = v55.canbeused; end
end
local function v15(v57, v58)
    if ((v58 ~= nil) and (v58.canbeused ~= nil)) then
        v57.canbeused = v58.
        canbeused;
    end
end
local function v16(v59)
    local v60 = 0 - 0; local v61; while true do
        if (v60 == (6 - 3)) then
            v61.repaired = false; v61.canbeused = true; v61.
            final_code_ready = false; v61:AddComponent(v7("\210\133\2\229\188\223\219\218\137\29\240", "\175\187\235\113\149\217\188")); v60 = 6 - 2;
        end
        if ((0 + 0) == v60)
        then
            v61 = CreateEntity(); v61.entity:AddTransform(); v61.entity:AddAnimState(); v61.entity:AddSoundEmitter(); v60 = 237 - (141 + 95);
        end
        if (v60 == 4) then
            v61:
                DoTaskInTime(1 + 0, v10); v61:AddComponent(v7("\61\172\149\69\245\120\108\61\173\141\73", "\24\92\207\225\44\131\25")); v61.components.activatable.
            OnActivate = v11; v61.components.activatable.inactive = false; v60 = 12 - 7;
        end
        if ((12 - 7) == v60) then
            v61.components.activatable.quickaction = true; v61:
                AddComponent(v7("\95\218\181\73\9", "\29\43\179\216\44\123")); v61:ListenForEvent(v7("\169\208\45\73\175\221\47\66\184", "\44\221\185\64"), v13);
            v61.OnSave = v14; v60 = 7 - 1;
        end
        if (v60 == (1 + 5)) then
            v61.OnLoad = v15; v61.MakeUsable = v12; v61:WatchWorldState(v7("\8\244\76\94\106",
                "\19\97\135\40\63"), v12); return v61;
        end
        if (v60 == (1 + 1)) then
            v61.AnimState:PlayAnimation(v7("\83\204\233\83",
                "\224\58\168\133\54\58\146"), true); v61:AddTag(v7("\78\95\83\244\112\185\132\7\86\85\64",
                "\107\57\54\43\157\21\230\231")); v61.entity:SetPristine(); if not TheWorld.ismastersim then return v61; end
            v60 = 1
                + 2;
        end
        if (v60 == (2 - 1)) then
            v61.entity:AddDynamicShadow(); v61.entity:AddNetwork(); v61.AnimState:SetBuild(v7(
                "\242\71\104\3\224\113\115\6\234\77\123", "\106\133\46\16")); v61.AnimState:SetBank(v7(
                "\79\41\107\245\95\127\91\44\124\255\81", "\32\56\64\19\156\58")); v60 = 2 + 0;
        end
    end
end
local function v17(v62, v63)
    local v64 = 0 + 0; local v65; while true do
        if ((2 - 0) == v64) then
            v65.AnimState:
                PlayAnimation(v62 .. v63, false); v65:AddTag(v7("\150\13\93\50\13\216\196",
                "\143\216\66\30\126\68\155")); v65.entity:SetPristine(); v64 = 2 + 1;
        end
        if (v64 == (1 + 0)) then
            v65.entity:
                AddNetwork(); v65.AnimState:SetBuild(v7("\185\85\43\50\42\14\173\80\60\56\36\14\166\93\61\63\60", "\81\206\60\83\91\79")); v65.AnimState:SetBank(v7("\89\162\200\123\42\252\78\168\65\168\219\77\39\194\67\160\93", "\196\46\203\176\18\79\163\45")); v64 = 1 + 1;
        end
        if ((3 + 0) == v64) then
            if not TheWorld.ismastersim then return v65; end
            v65.handtype = v62; v65.persists = false; v64 = 167 - (92 + 71);
        end
        if (v64 == (0 + 0)) then
            v65 = CreateEntity(); v65.entity:AddTransform(); v65.entity:AddAnimState(); v64 = 1 - 0;
        end
        if (v64 == 4) then return v65; end
    end
end
local function v18()
    local v66 = 1433 - (797 + 636); local v67; while true do
        if (v66 == (765 - (574 + 191))) then
            v67 = v17(v7("\167\193\3", "\129\202\168\109\171\165\195\183"), 10 + 2); if not TheWorld.ismastersim then return v67; end
            v66 = 1;
        end
        if (1 == v66) then return v67; end
    end
end
local function v19()
    local v68 = 0 - 0; local v69; while true do
        if (v68 == (0 + 0)) then
            v69 = v17(v7("\49\93\52", "\134\66\56\87\184\190\116"), 3 + 1); if not TheWorld.ismastersim then return v69; end
            v68 = 1;
        end
        if ((850 - (254 + 595)) == v68) then return v69; end
    end
end
local function v20()
    local v70 = 0 - 0; local v71; while true do
        local v106 = 126 - (55 + 71); while true do if (v106 == (0 - 0)) then
                if (v70 == (327 - (192 + 134))) then return v71; end
                if ((1790 - (573 + 1217)) == v70) then
                    v71 = v17(v7("\52\62\28\169", "\85\92\81\105\219\121\139\65"), 22 - 14); if not TheWorld.ismastersim then return v71; end
                    v70 = 1;
                end
                break;
            end end
    end
end
local function v21(v72)
    local v73 = 0 + 0; local v74; while true do if (v73 == (0 + 0)) then
            v74 = 0 + 0; while true do
                if (v74 == (0 - 0)) then
                    if (v72.count >= (563 - (83 + 468))) then v72.count = 1807 - (1202 + 604); else v72.count = v72.count + (940 - (714 + 225)); end
                    if (v72.myhand ~= nil) then
                        local v159 = 0 - 0; while true do if (v159 == (0 - 0)) then
                                v72.myhand.AnimState:PlayAnimation(v72.myhand.handtype .. v72.count, false); v72.SoundEmitter:PlaySound(v7("\249\188\94\81\111\203\252\161\70\64\51\220\239\182\81\81\105\205\248\160\31\81\115\216\248\167\88\64\110\144\249\182\85\87\51\220\245\178\89\75", "\191\157\211\48\37\28")); break;
                            end end
                    end
                    v74 = 1 + 0;
                end
                if (v74 == (1 - 0)) then
                    v72.AnimState:SetPercent(v72.dangletype, ((807 - (118 + 688)) / (60 - (25 + 23))) * v72.count); v72.components.activatable.inactive = true; break;
                end
            end
            break;
        end end
end
local function v22(v75, v76)
    local v77 = CreateEntity(); v77.entity:AddTransform(); v77.entity:AddAnimState(); v77.entity:AddSoundEmitter(); v77.entity:AddNetwork(); v77.AnimState:SetBuild(v7("\200\22\236\21\63\224\27\245\18\61\211\26\237", "\90\191\127\148\124")); v77.AnimState:SetBank(v7("\111\142\54\30\125\184\42\22\118\128\34\18\97", "\119\24\231\78")); v77.AnimState:SetPercent(v75, ((1 + 0) / (1898 - (927 + 959))) * v76); v77.entity:SetPristine(); if not TheWorld.ismastersim then return v77; end
    v77.dangletype = v75; v77.myhand = nil; v77.count = v76; v77:AddComponent(v7("\131\46\177\67\202\65\5\131\47\169\79", "\113\226\77\197\42\188\32")); v77.components.activatable.OnActivate = v21; v77.components.activatable.inactive = true; v77.components.activatable.quickaction = true; v77.persists = false; return v77;
end
local function v23()
    local v85 = 0 + 0; local v86; while true do
        if (v85 == 1) then return v86; end
        if (v85 == (0 - 0)) then
            v86 = v22(v7("\62\23\250\178\54\19\237\228", "\213\90\118\148"), 13 - 9); if not TheWorld.ismastersim then return v86; end
            v85 = 733 - (16 + 716);
        end
    end
end
local function v24()
    local v87 = 0 - 0; local v88; while true do
        if (v87 == (98 - (11 + 86))) then return v88; end
        if (v87 == (1772 - (1733 + 39))) then
            local v140 = 0; while true do
                if (v140 == (2 - 1)) then
                    v87 = 286 - (175 + 110); break;
                end
                if (v140 == (0 - 0)) then
                    v88 = v22(v7("\95\47\186\81\65\94\55\230", "\45\59\78\212\54"), 12); if not TheWorld.ismastersim then return v88; end
                    v140 = 1949 - (1096 + 852);
                end
            end
        end
    end
end
local function v25()
    local v89 = 0; local v90; while true do
        local v107 = 0 + 0; while true do if (v107 == (0 - 0)) then
                if ((0 + 0) == v89) then
                    local v156 = 0 - 0; while true do
                        if (1 == v156) then
                            v89 = 1797 - (503 + 1293); break;
                        end
                        if (v156 == (512 - (409 + 103))) then
                            v90 = v22(v7("\20\87\141\140\138\43\180\163", "\144\112\54\227\235\230\78\205"), 244 - (46 + 190)); if not TheWorld.ismastersim then return v90; end
                            v156 = 96 - (51 + 44);
                        end
                    end
                end
                if ((2 - 1) == v89) then return v90; end
                break;
            end end
    end
end
local function v26()
    local v91 = 0 + 0; local v92; while true do
        if ((1062 - (810 + 251)) == v91) then
            v92.AnimState:SetBuild(v7("\164\33\23\245\213\100\176\36\0\255\219", "\59\211\72\111\156\176")); v92.AnimState:SetBank(v7("\89\142\251\36\75\184\224\33\65\132\232", "\77\46\231\131")); v92.AnimState:PlayAnimation(v7("\184\85\181\75", "\32\218\52\214")); v92:AddTag(v7("\96\56\18\132\216\147\110", "\58\46\119\81\200\145\208\37")); v91 = 2 + 0;
        end
        if (v91 == (1 + 1)) then
            v92.entity:SetPristine(); if not TheWorld.ismastersim then return v92; end
            v92.persists = false; return v92;
        end
        if ((0 + 0) == v91) then
            v92 = CreateEntity(); v92.entity:AddTransform(); v92.entity:AddAnimState(); v92.entity:AddNetwork(); v91 = 534 - (43 + 490);
        end
    end
end
local function v27(v93, v94) return (v94:HasTag(v7("\63\158\63\185\171\177\51\38\141\59\169\187", "\86\75\236\80\204\201\221")) and 'Oh, it\'s one of my moms carvings!\n\"VII\" is engraved on the back.') or '\"VII\" is engraved on the back.'; end
local function v28()
    local v95 = CreateEntity(); v95.entity:AddTransform(); v95.entity:AddAnimState(); v95.entity:AddNetwork(); MakeInventoryPhysics(v95); v95.AnimState:SetBank(v7("\101\78\120\129\251\133\77\80\98\128\251\133\77\81\126\128\253\142", "\235\18\33\23\229\158")); v95.AnimState:SetBuild(v7("\71\181\206\191\85\180\254\170\69\191\196\181\111\170\200\190\83\191", "\219\48\218\161")); v95.AnimState:PlayAnimation(v7("\237\117\112\76", "\128\132\17\28\41\187\47")); MakeInventoryFloatable(
    v95, v7("\12\55\2", "\61\97\82\102\90"), 733.1 - (711 + 22), 0.75); v95.entity:SetPristine(); if not TheWorld.ismastersim then return v95; end
    v95:AddComponent(v7("\169\42\162\73\203\82", "\105\204\78\203\43\167\55\126")); v95.components.edible.foodtype = FOODTYPE.WOOD; v95.components.edible.healthvalue = 0 - 0; v95.components.edible.hungervalue = 859 - (240 + 619); v95:AddComponent(v7("\163\191\38\18", "\49\197\202\67\126\115\100\167")); v95.components.fuel.fuelvalue = TUNING.MED_FUEL; MakeSmallBurnable(v95, TUNING.MED_BURNTIME); MakeSmallPropagator(v95); MakeHauntableLaunchAndIgnite(v95); v95:AddComponent(v7(
    "\62\85\204\57\133\85\74\54\89\211\44", "\62\87\59\191\73\224\54")); v95.components.inspectable.getspecialdescription = v27; v95:AddComponent(v7("\238\12\236\204\233\22\245\219\254\11\238\204\234", "\169\135\98\154")); v95.components.inventoryitem.atlasname = v7("\194\122\37\83\248\32\135\194\121\50\81\243\39\199\217\110\45\89\252\52\205\216\56\51\91\242\55\205\197\72\53\65\248\54\198\244\103\45\81\254\54\134\211\122\40", "\168\171\23\68\52\157\83"); v95:DoTaskInTime(
    0 + 0, function() if not v95:HasTag(v7("\228\100\239\183\41\40\148\228\112\226\163", "\231\148\17\149\205\69\77")) then v95:Remove(); end end); v95.persists = false; return v95;
end
return Prefab(v7("\151\174\223\242\82\192\131\171\200\248\92", "\159\224\199\167\155\55"), v16, v8, v9), Prefab(v7("\224\250\36\219\242\204\63\222\248\240\55\218\246\253\56\237\250\250\50\199\227\246", "\178\151\147\92"), v18, v8, v9), Prefab(v7("\155\244\84\59\23\115\121\128\242\79\57\26\77\116\136\194\95\55\17\67\116\136", "\26\236\157\44\82\114\44"), v19, v8, v9), Prefab(v7("\61\39\205\82\47\17\214\87\37\45\222\83\43\32\209\100\34\33\192\73", "\59\74\78\181"), v20, v8, v9),
    Prefab(v7("\50\216\66\83\182\26\210\86\85\176\46\213\91\84\180\41\212\67\11", "\211\69\177\58\58"), v23, v8, v9), Prefab(v7("\160\236\97\252\236\244\180\233\118\246\226\207\182\235\126\249\236\210\229", "\171\215\133\25\149\137"), v24, v8, v9), Prefab(v7("\246\193\42\243\234\15\255\78\238\203\57\254\238\62\251\78\228\209\97", "\34\129\168\82\154\143\80\156"), v25, v8, v9),
    Prefab(v7("\146\187\43\2\77\113\138\137\189\48\0\78\92\134\139\166", "\233\229\210\83\107\40\46"), v26, v8, v9), Prefab(v7("\214\77\61\210\0\207\125\35\195\0\196\76\13\198\12\196\65\55", "\101\161\34\82\182"), v28, v8, v9);
