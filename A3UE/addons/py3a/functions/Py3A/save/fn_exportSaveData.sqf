A3A_saveTarget params ["_serverID", "_campaignID", "_map"];

private "_saveDataKey";
private _saveData = if (_serverID isEqualType false) then {
	_saveDataKey = format ["savedata%1", _campaignID];
	missionProfileNamespace getVariable _saveDataKey;
} else {
	private _saveDataKey = format["savedata%1%2%3%4",_serverID,_campaignID,"Antistasi",_map];
	profileNamespace getVariable _saveDataKey;
};

if (isNil "_saveData") exitWith { diag_log "Py3A_fnc_exportSaveData: No save data found, skipping export." };

["py3a.save.write_save_data", [_campaignID, _saveData]] call py3_fnc_callExtension;
