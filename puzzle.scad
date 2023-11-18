$fn=64;

module screwhole() {
    color("pink") translate([0, 0, -17]) union() {
        cylinder(20, 4, 4, $fn=64);
        cylinder(30, 1.9, 1.9, $fn=64);
    }
}

difference() {
    color("green") minkowski(){
        cube([150, 200, 8]);
        cylinder(r=5,h=1);
    }
    
    // first row
    //translate([40, 40, 5]) rotate(45) cylinder(50, 25, 30, $fn=4);
    //translate([40, 100, 5]) rotate(45) cylinder(50, 25, 30, $fn=4);
    //translate([40, 160, 5]) rotate(45) cylinder(50, 25, 30, $fn=4);
    
    // second row
    //translate([110, 40, 5]) rotate(45) cylinder(50, 25, 30, $fn=4);
    //translate([110, 100, 5]) rotate(45) cylinder(50, 25, 30, $fn=4);
    //translate([110, 160, 5]) rotate(45) cylinder(50, 25, 30, $fn=4);
    
    color("yellow") translate([40, 40, 3]) minkowski()
    {
      linear_extrude(height=6, scale=1.2) square([30, 30], center = true);
      cylinder(r=5,h=1);
    }
    
    color("white") translate([75, 100, 3]) union() {
        hull()
        {
          translate([34, -8.5 ,0]) linear_extrude(height=7, scale=1.7) circle(5);
          translate([-34, 8.5 ,0]) linear_extrude(height=7, scale=1.7) circle(5);
          translate([-34, -8.5 ,0]) linear_extrude(height=7, scale=1.7) circle(5);
          translate([34, 8.5 ,0]) linear_extrude(height=7, scale=1.7) circle(5);
        }
    }
    
    color("red") translate([40, 160, 3]) union() {
        hull()
        {
          translate([17, -17 ,0]) linear_extrude(height=7, scale=1.7) circle(5);
          translate([-17, 17 ,0]) linear_extrude(height=7, scale=1.7) circle(5);
        }
        hull()
        {
          translate([-17, -17 ,0]) linear_extrude(height=7, scale=1.7) circle(5);
          translate([17, 17 ,0]) linear_extrude(height=7, scale=1.7) circle(5);
        }
    }
     
    color("purple") translate([115, 40, 3]) rotate(60) minkowski()
    {
      cylinder(6, 20, 25, $fn=3);
      cylinder(r=5,h=1);
    }
    
    color("cyan") translate([110, 160, 3]) minkowski() {
        cylinder(6, 20, 23, $fn=256);
        cylinder(r=5,h=1);
    }
}

translate([240, 40, 3]) difference() {
    color("yellow") minkowski() {
      linear_extrude(height=5, scale=1.2) square([29.5, 29.5], center = true);
      cylinder(r=4.5,h=1);
    }
    screwhole();
}


translate([275, 100, 3]) difference() {
    color("white")
    hull() {
      translate([34, -8.5 ,0]) linear_extrude(height=6, scale=1.5) circle(4.75);
      translate([-34, 8.5 ,0]) linear_extrude(height=6, scale=1.5) circle(4.75);
      translate([-34, -8.5 ,0]) linear_extrude(height=6, scale=1.5) circle(4.75);
      translate([34, 8.5 ,0]) linear_extrude(height=6, scale=1.5) circle(4.75);
    }
    screwhole();
}

translate([240, 160, 3]) difference() {
    color("red") union() {
        hull() {
          translate([17, -17 ,0]) linear_extrude(height=6, scale=1.5) circle(4.5);
          translate([-17, 17 ,0]) linear_extrude(height=6, scale=1.5) circle(4.5);
        }
        hull() {
          translate([-17, -17 ,0]) linear_extrude(height=6, scale=1.5) circle(4.5);
          translate([17, 17 ,0]) linear_extrude(height=6, scale=1.5) circle(4.5);
        }
    }
    screwhole();
}
  

translate([315, 40, 3]) difference() {
    color("purple") rotate(60) minkowski() {
        cylinder(5, 19.5, 24.5, $fn=3);
        cylinder(r=4.5,h=1);
    }
    screwhole();
}

translate([310, 160, 3]) difference() {
    color("cyan")  minkowski() {
        cylinder(5, 19.5, 22.5, $fn=256);
        cylinder(r=4.5,h=1);
    }
    screwhole();
}
    
translate([-20, 40, 10]) difference() {
    union() {
        cylinder(5, 3, 3, $fn=128);
        translate([0, 0, 9]) sphere(5, $fn=128);
    }
    cylinder(7, 1.9, 1.9, $fn=64);
}