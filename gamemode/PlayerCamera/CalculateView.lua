include("ViewCalculations/CalculateAngle.lua")
include("ViewCalculations/CalculateFOV.lua")
include("ViewCalculations/CalculateOrigin.lua")
include("ViewCalculations/ConstructViewObject.lua")

function CalculateView(ply, pos, angles, fov)
	local new_angles, new_fov, new_origin, view_object

	new_angles = CalculateAngle()
	new_fov = CalculateFOV(fov)
	new_origin = CalculateOrigin(pos)
	view_object = ConstructViewObject(new_origin, new_angles, new_fov, true)

	return view_object
end