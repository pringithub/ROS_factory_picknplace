
"use strict";

let PopulationControl = require('./PopulationControl.js')
let GetMaterialLocations = require('./GetMaterialLocations.js')
let VacuumGripperControl = require('./VacuumGripperControl.js')
let AGVControl = require('./AGVControl.js')
let SubmitTray = require('./SubmitTray.js')
let ConveyorBeltControl = require('./ConveyorBeltControl.js')

module.exports = {
  PopulationControl: PopulationControl,
  GetMaterialLocations: GetMaterialLocations,
  VacuumGripperControl: VacuumGripperControl,
  AGVControl: AGVControl,
  SubmitTray: SubmitTray,
  ConveyorBeltControl: ConveyorBeltControl,
};
