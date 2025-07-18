{
  "$GMObject":"",
  "%Name":"obj_Lazer",
  "eventList":[],
  "managed":true,
  "name":"obj_Lazer",
  "overriddenProperties":[
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_Ability","path":"objects/obj_Ability/obj_Ability.yy",},"propertyId":{"name":"oCast","path":"objects/obj_Ability/obj_Ability.yy",},"resource":{"name":"obj_Lazer_cast","path":"objects/obj_Lazer_cast/obj_Lazer_cast.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"obj_Lazer_cast",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_Ability","path":"objects/obj_Ability/obj_Ability.yy",},"propertyId":{"name":"oAim","path":"objects/obj_Ability/obj_Ability.yy",},"resource":{"name":"obj_Lazer_aim","path":"objects/obj_Lazer_aim/obj_Lazer_aim.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"obj_Lazer_aim",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_Ability","path":"objects/obj_Ability/obj_Ability.yy",},"propertyId":{"name":"cooldown_cooldown","path":"objects/obj_Ability/obj_Ability.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"2",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_Ability","path":"objects/obj_Ability/obj_Ability.yy",},"propertyId":{"name":"charge_max","path":"objects/obj_Ability/obj_Ability.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"3",},
    {"$GMOverriddenProperty":"v1","%Name":"","name":"","objectId":{"name":"obj_Ability","path":"objects/obj_Ability/obj_Ability.yy",},"propertyId":{"name":"cost","path":"objects/obj_Ability/obj_Ability.yy",},"resourceType":"GMOverriddenProperty","resourceVersion":"2.0","value":"2",},
  ],
  "parent":{
    "name":"lazer",
    "path":"folders/Objects/game/abilities/lazer.yy",
  },
  "parentObjectId":{
    "name":"obj_Ability",
    "path":"objects/obj_Ability/obj_Ability.yy",
  },
  "persistent":false,
  "physicsAngularDamping":0.1,
  "physicsDensity":0.5,
  "physicsFriction":0.2,
  "physicsGroup":1,
  "physicsKinematic":false,
  "physicsLinearDamping":0.1,
  "physicsObject":false,
  "physicsRestitution":0.1,
  "physicsSensor":false,
  "physicsShape":1,
  "physicsShapePoints":[],
  "physicsStartAwake":true,
  "properties":[
    {"$GMObjectProperty":"v1","%Name":"damage_trace","filters":[],"listItems":[],"multiselect":false,"name":"damage_trace","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"damage_burst","filters":[],"listItems":[],"multiselect":false,"name":"damage_burst","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"1.5","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_lazer",
    "path":"sprites/spr_lazer/spr_lazer.yy",
  },
  "spriteMaskId":null,
  "visible":false,
}