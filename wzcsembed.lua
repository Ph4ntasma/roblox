local CS = game.Players.localPlayer.PlayerGui.CashShop.CashShop.Content.Left.Items.ScrollingFrame
local fun_facts = {
    " ",
}
local chosen_facts = math.random(0, #fun_facts)
local hexconvlist = {
	-- Doesn't get used anymore, Skips.
    ["878787"] = "868686",
	["545454"] = "535353",
	["272727"] = "262626",
	}


local lists = {

}
    
for i, v in pairs(CS:GetChildren()) do
    if v.Parent.Name == "ScrollingFrame" and v.Name ~= "UIPadding" and v.Name ~= "UIGridLayout" and v.Visible == true then
        local HexNew = v.ItemFrame.Dye.BackgroundColor3:ToHex()
            if hexconvlist[HexNew] then
                HexNew = hexconvlist[HexNew]
            end
		table.insert(lists, v.ItemFrame.Fading.Title.Text)
		table.insert(lists, string.upper(HexNew))
    end
end

local msg = {
    ["embeds"] = {{
		["type"] = "rich",
		["color"] = 10066431,
		["description"] = "It's me, Sentinel Phantasma. " .. fun_facts[chosen_facts] ,
		["author"] = {
			["name"] = "Daily Cashshop HEX",
			["icon_url"] = "https://media.discordapp.net/attachments/795828287468601375/1072983960717643786/export202209071613426300.png"
		},
		["fields"] = {
			{
				["name"] = "Accessories",
				["value"] = lists[1] .. "\n#" .. lists[2] .. "\n" .. lists[3] .. "\n#" .. lists[4] .. "\n" 
				.. lists[5] .. "\n#" .. lists[6],
				["inline"] = true
			},
			{
				["name"] = "Costumes",
				["value"] = lists[7] .. "\n#" .. lists[8] .. "\n" .. lists[9] .. "\n#" .. lists[10] .. "\n" 
				.. lists[11] .. "\n#" .. lists[12] .. "\n" .. lists[13] .. "\n#" .. lists[14] .. "\n"
				.. lists[15] .. "\n#" .. lists[16] .. "\n" .. lists[17] .. "\n#" .. lists[18] .. "\n"
				.. lists[19] .. "\n#" .. lists[20] .. "\n" .. lists[21] .. "\n#" .. lists[22] .. "\n"
				.. lists[23] .. "\n#" .. lists[24],
				["inline"] = true
			}
		},
		["footer"] = {
			["text"] = "Sentinel Phantasma",
			["icon_url"] = "https://cdn.discordapp.com/attachments/795828287468601375/1073028765552222208/Cropped_111.png"
		},
	
	}}
}
local response = syn.request(
    {
        Url = 'https://discord.com/api/webhooks/1089198354455593052/fSFy3s5ItnoWuVRne3b8fLo3Lnnzcgkd88Lul190Zy12mo_44x36195GsZFpCJH1KzRW',
        Method = 'POST',
        Headers = {
            ['Content-Type'] = 'application/json'
        },
        Body = game:GetService('HttpService'):JSONEncode(msg)
    }
);
