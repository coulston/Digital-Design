import schemdraw
from schemdraw import logic
import cairosvg

schemdraw.use('svg')
schemdraw.svgconfig.svg2 = False

with schemdraw.Drawing(file='sol5-7-bad.svg', show=False) as d:
    D = logic.Kmap(names='DQ',
        truthtable=[
            ('10', '1'),
            ('11', '1')
        ], groups={
            '1.': {'color': 'blue', 'fill': '#0000ff33'}
            })
    d.move(4,0)
    T = logic.Kmap(names='TQ',
            truthtable=[
                ('01', '1'),
                ('10', '1')
            ], groups={
                '10': {'color': 'blue' , 'fill': '#0000ff33'},
                '01': {'color': 'green', 'fill': '#00ff0033'}
            })
    d.move(-4,-4)
    SR = logic.Kmap(names='SRQ',
                truthtable=[
                    ('001', '1'),
                    ('01.', '0'),
                    ('100', '1'),
                    ('101', '1'),
                    ('110', 'x'),
                    ('111', 'x'),
                    ], groups={
                        '10.': {'color': 'blue' , 'fill': '#0000ff33'},
                        '.01': {'color': 'green', 'fill': '#00ff0033'}
                    })
    d.move(6,0)
    JK = logic.Kmap(names='JKQ',
                    truthtable=[
                    ('001', '1'),
                    ('01.', '0'),
                    ('100', '1'),
                    ('101', '1'),
                    ('110', '1'),
                    ('111', '0'),
                    ], groups={
                        '1.0': {'color': 'blue' , 'fill': '#0000ff33'},
                        '.01': {'color': 'green', 'fill': '#00ff0033'}
                    })
    cairosvg.svg2pdf(bytestring = d.get_imagedata('svg'), write_to='sol5-7.pdf')
