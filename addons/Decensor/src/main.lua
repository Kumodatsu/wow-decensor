local DCS, addon_name = ...

local register_emote = function(cmds, no_target_msg, target_msg)
    if type(cmds) ~= "table" then
        cmds = { cmds }
    end
    for _, cmd in ipairs(cmds) do
        local id = cmd:upper()
        _G[("SLASH_%s1"):format(id)] = ("/%s"):format(cmd)
        SlashCmdList[id] = function(arg)
            local has_target = UnitExists "target"
            SendChatMessage(has_target and target_msg or no_target_msg, "EMOTE")
        end
    end
end

register_emote(
    { "belch", "burp" },
    "lets out a loud belch.",
    "burps rudely in %t's face."
)

register_emote(
    "cough",
    "lets out a hacking cough.",
    "coughs at %t."
)

register_emote(
    "fart",
    "farts loudly. Whew...what stinks?",
    "brushes up against %t and farts loudly."
)

register_emote(
    "moan",
    "moans suggestively.",
    "moans suggestively at %t."
)

register_emote(
    "moon",
    "drops their trousers and moons everyone.",
    "drops their trousers and moons %t."
)

register_emote(
    { "shake", "rear" },
    "shakes their rear.",
    "shakes their rear at %t."
)

register_emote(
    { "smell", "stink" },
    "smells the air around them. Wow, someone stinks!",
    "smells %t. Wow, someone stinks!"
)

register_emote(
    "spit",
    "spits on the ground.",
    "spits on %t."
)
