function CameraControl_CalculateView(ply, pos, angles, fov)
	return {
		origin = pos - Vector(400, 0, 0),
		angles = Angle(0, 0, 0),
		fov = fov,
		drawviewer = true
	}
end

function CameraControl_AddHook()
	hook.Add("CalcView", "NewCalcView", CameraControl_CalculateView)
end
