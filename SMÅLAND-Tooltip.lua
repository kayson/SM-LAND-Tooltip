GameTooltip:HookScript("OnTooltipSetUnit", function(self)
	local name, unit = self:GetUnit()
	if UnitIsPlayer("mouseover") and not UnitIsUnit("mouseover", "player") then
		guildName, guildRankName, guildRankIndex = GetGuildInfo("mouseover");
		if guildName == "Three Crowns" then
			self:AddLine("<" .. guildName .. ">", 1, 0, 0, true)
		elseif guildName != nil then
			self:AddLine("<" .. guildName .. ">", 1, 1, 1, true)
		end
	end
end)
