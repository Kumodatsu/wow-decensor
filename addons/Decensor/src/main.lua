local DCS, addon_name = ...

local register_emote = function(cmd, no_target_msg, target_msg)
    local id = cmd:upper()
    _G[("SLASH_%s1"):format(id)] = ("/%s"):format(cmd)
    SlashCmdList[id] = function(arg)
        local has_target = UnitExists "target"
        SendChatMessage(has_target and target_msg or no_target_msg, "EMOTE")
    end
end

register_emote(
    "moan",
    "moans suggestively.",
    "moans suggestively at %t."
)

register_emote(
    "spit",
    "spits on the ground.",
    "spits on %t."
)

register_emote(
    "moon",
    "drops their trousers and moons everyone.",
    "drops their trousers and moons %t."
)
