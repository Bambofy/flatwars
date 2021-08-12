include("CalculateView.lua")

function AddHook()
	print("Adding")
	hook.Add("CalcView", "NewCalcView", CalculateView)
end