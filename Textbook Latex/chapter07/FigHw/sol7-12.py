import schemdraw
from schemdraw import flow

with schemdraw.Drawing() as d:
    d.config(unit=.5)
    start = flow.State().label("*\nStart")
