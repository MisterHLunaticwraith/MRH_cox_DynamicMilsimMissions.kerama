params ["_screen"];
_uav ="";
{_test = _x getVariable "isMRHCreatedUav"; if (_test) then {_uav = _x};} forEach vehicles;

/* create camera and stream to render surface */
_cam = "camera" camCreate [0,0,0];
_cam cameraEffect ["Internal", "Back", "uavrtt"];
_uav setVariable ["MRH_attachedUavCam", _cam, true];
/* attach cam to gunner cam position */
_cam attachTo [_uav, [0,0,0], "PiP0_pos"];

/* make it zoom in a little */
_cam camSetFov 0.1;

/* switch cam to thermal */
"uavrtt" setPiPEffect [0];


addMissionEventHandler ["Draw3D", {
    _dir = 
        (_uav selectionPosition "PiP0_pos") 
            vectorFromTo 
        (_uav selectionPosition "PiP0_dir");
    _cam setVectorDirAndUp [
        _dir, 
        _dir vectorCrossProduct [-(_dir select 1), _dir select 0, 0]
    ];
}];

_screen setObjectTexture [0, "#(argb,512,512,1)r2t(uavrtt,1.25)"];