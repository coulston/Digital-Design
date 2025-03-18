from typing import Dict, List
import schemdraw
import schemdraw.elements as elm
def Eq_compare(**kwargs) -> elm.intcircuits.Ic:
    return elm.Ic(pins = [
        elm.IcPin(name = 'x', side= 'T'),
        elm.IcPin(name = 'y', side= 'T'),
        #elm.IcPin(name = 'G', side= 'B'),
        elm.IcPin(name = 'E', side= 'B'),
        #elm.IcPin(name = 'L', side= 'B'),
    ], edgepadW = .5, pinspacing=1, **kwargs)


mapping:Dict[str, str] = {'$IsP$': '$4D_{16}$', '$IsL$': '$4B_{16}$', '$IsM$': '$3A_{16}$', '$IsI$': '$43_{16}$'}

with schemdraw.Drawing(show=True) as d:
    P = elm.DataBusLine().at((0,0)).right().label('P', loc = 'L').label('8', loc = 'T', ofst=(0.1,-0.1))
    elm.Wire().delta(12,0).hold()
    for i, (output, scancode) in enumerate(mapping.items()):
        elm.Wire().delta(0, -1).idot()
        Eq_compare().anchor('x') \
                 .label(scancode, loc = 'y', ofst=(0.5,-0.2)) \
                 .label(output  , loc = 'E', ofst=(0.45,0.2)).hold()
        d.move(4,1)
    d.save("sol4-15.svg")
