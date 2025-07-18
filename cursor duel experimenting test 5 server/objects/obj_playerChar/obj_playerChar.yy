{
  "$GMObject":"",
  "%Name":"obj_playerChar",
  "eventList":[
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":0,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":64,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":1,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":8,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":2,"eventType":3,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
    {"$GMEvent":"v1","%Name":"","collisionObjectId":null,"eventNum":0,"eventType":12,"isDnD":false,"name":"","resourceType":"GMEvent","resourceVersion":"2.0",},
  ],
  "managed":true,
  "name":"obj_playerChar",
  "overriddenProperties":[],
  "parent":{
    "name":"game",
    "path":"folders/Objects/game.yy",
  },
  "parentObjectId":{
    "name":"obj_client_instance",
    "path":"objects/obj_client_instance/obj_client_instance.yy",
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
    {"$GMObjectProperty":"v1","%Name":"playerId","filters":[],"listItems":[],"multiselect":false,"name":"playerId","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"0","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"ability_1","filters":[],"listItems":[],"multiselect":false,"name":"ability_1","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_Lazer","path":"objects/obj_Lazer/obj_Lazer.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_Lazer","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"ability_2","filters":[],"listItems":[],"multiselect":false,"name":"ability_2","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_tripleSpread","path":"objects/obj_tripleSpread/obj_tripleSpread.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_tripleSpread","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"ability_3","filters":[],"listItems":[],"multiselect":false,"name":"ability_3","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_dashSlash","path":"objects/obj_dashSlash/obj_dashSlash.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_dashSlash","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"ability_4","filters":[],"listItems":[],"multiselect":false,"name":"ability_4","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_Ability","path":"objects/obj_Ability/obj_Ability.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_Ability","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"ability_5","filters":[],"listItems":[],"multiselect":false,"name":"ability_5","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resource":{"name":"obj_Ability","path":"objects/obj_Ability/obj_Ability.yy",},"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"obj_Ability","varType":5,},
    {"$GMObjectProperty":"v1","%Name":"score","filters":[],"listItems":[],"multiselect":false,"name":"score","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"undefined","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"hp_max","filters":[],"listItems":[],"multiselect":false,"name":"hp_max","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"5","varType":0,},
    {"$GMObjectProperty":"v1","%Name":"energy_max","filters":[],"listItems":[],"multiselect":false,"name":"energy_max","rangeEnabled":false,"rangeMax":10.0,"rangeMin":0.0,"resourceType":"GMObjectProperty","resourceVersion":"2.0","value":"10","varType":0,},
  ],
  "resourceType":"GMObject",
  "resourceVersion":"2.0",
  "solid":false,
  "spriteId":{
    "name":"spr_player",
    "path":"sprites/spr_player/spr_player.yy",
  },
  "spriteMaskId":null,
  "visible":true,
}