local function SetGraphicsSettings()
	rfg.Terrain.FadeStart = 1390
	rfg.Terrain.FadeEnd = 1500
	rfg.Shadows.ShadowMapMaxDist = 200
	rfg.Shadows.TerrainShadowMaxDist = 1500
	rfg.Hdr.BloomSuperSoft = true
	rfg.SetFarClip(1500)
	rfg.SetHighLodFarClip(1500)
end

local function Initialized()
	SetGraphicsSettings()
end

local function OnLoad()
	SetGraphicsSettings()
end

rfg.RegisterEvent("Initialized", Initialized, "Init event")

rfg.RegisterEvent("Load", OnLoad, "Save load event")

rfg.Misc.FxaaEnabled = true
rfg.Ssao.Intensity = 2
rfg.Ssao.Bias = 0.18
rfg.Ssao.DepthThreshold = 99
rfg.SetShadowResolutions(0,512,1024,4096)