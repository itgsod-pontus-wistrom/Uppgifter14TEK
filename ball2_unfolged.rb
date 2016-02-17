l="+#{'-'*18}+\n"           # top and bottom lines
f=l+"|#{' '*18}|\n"*8+l     # complete box as string
x=y=u=v=1                   # x,y position; u,v next move
loop {                      #
  f[21*y+x]='*'             # add ball to box
  $> << "\e[2J\e[f"+f       # clear screen and print box with ball
  f[21*y+x]=' '             # remove ball from box
  u=f[21*y+x+u]==' '?u:-u   # next move in x direction
  v=f[21*(y+v)+x]==' '?v:-v # next move in y direction
  x+=u                      # perform move
  y+=v                      # --"--
  sleep 0.1                 # .zZZ...
}                           #