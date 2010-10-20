#For the nth order Hilbert curve, output is an array of arrays containing x and y-coordinates

def hilbert(n)

  if n <= 0
    x = 0
    y = 0
    return [[x],[y]]
  else
    coords = hilbert(n-1);
    x = []
    y = []
    # Generate X-Coordinates
    coords[1].each{|ycoord| x << (ycoord-0.5)*0.5}
    coords[0].each{|xcoord| x << (xcoord-0.5)*0.5}
    coords[0].each{|xcoord| x << (xcoord+0.5)*0.5}
    coords[1].each{|ycoord| x << (0.5-ycoord)*0.5}
    # Generate Y-Coordinates
    coords[0].each{|xcoord| y << (xcoord-0.5)*0.5}
    coords[1].each{|ycoord| y << (ycoord+0.5)*0.5}
    coords[1].each{|ycoord| y << (ycoord+0.5)*0.5}
    coords[0].each{|xcoord| y << (-0.5-xcoord)*0.5}
    return [x,y]
  end
end