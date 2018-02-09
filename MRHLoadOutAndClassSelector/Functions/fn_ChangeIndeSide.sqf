/*
this function changes the allegiance of the idependant side
params are :
0 = ind are ennemies to both sides
1 = ind are friends to both sides
2 = ind are friends to blufor but ennemies to opfor
3 = ind are friends to opfor but enemies to blufor
eg [0] call MRH_fnc_ChangeIndeSide; //will make inde attack both sides
*/
params ["_allegiancetype"];

switch (true) do {
case (_allegiancetype == 0) : {
east setFriend [independent, 0];
west setFriend [independent, 0];
independent setFriend [west, 0];
independent setFriend [east, 0];
systemchat "Les indépendants sont maintenant hostiles aux deux camps";
};
case (_allegiancetype == 1) : {
east setFriend [independent, 1];
west setFriend [independent, 1];
independent setFriend [west, 1];
independent setFriend [east, 1];
systemchat "Les indépendants sont maintenant neutres";
};
case (_allegiancetype == 2) : {
east setFriend [independent, 0];
west setFriend [independent, 1];
independent setFriend [west, 1];
independent setFriend [east, 0];
systemchat "Les indépendants sont maintenant amis des Blufor";
};
case (_allegiancetype == 3) : {
east setFriend [independent, 1];
west setFriend [independent, 0];
independent setFriend [west, 0];
independent setFriend [east, 1];
systemchat "Les indépendants sont maintenant amis des Opfor";
};
};