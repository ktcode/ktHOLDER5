//
// ktHOLDER5
//
//


gap1 = 0.001;
gap2 = 0.002;

th = 2;

in = 26/2;
out = in+panel_thick;
sh = 25;
hh = 50;




translate([0, 0, 0]) A();
translate([0, 30, 0]) B();

module A()
{
    difference()
    {
        union()
        {
            translate([0, 0, 0]) cube([80+th*2, 17+th*2, 17+th*2]);

        }
        
        translate([0, 0, 17+th]) B();
        
        translate([th, th, th]) cube([80, 17, 17+gap1]);
        translate([-gap1, th+(17-11)/2, th+17-11+gap1]) cube([10, 11, 11+th]);
        translate([80-1, th+(17-11)/2, th+17-5+gap1]) cube([10, 11, 5+th]);

    }
}

module B()
{
        hull()
            {
                translate([0, 2, th-0.1+gap1])
                cube([80+th*2, 17, 0.1]);
                translate([0, 1, 0])
                cube([80+th*2, 17+th*2-2, 0.1]);
            }
}
