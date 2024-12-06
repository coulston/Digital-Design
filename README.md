<img src="Textbook Latex/Fig/colorCover.jpg" align="right" alt="Digital Design Text Cover" width="20%"/>

Orginally published in 2004 by McGraw Hill, Digital Design: A Datapath and Control is now
available as an OER.  This text was written for faculty and students wanting a structured 
approach to the design of complex digital systems.  It guides students and faculty through 
the process by exposing critical skills gradually through the text. 

# Features
* End of Chapter Problems. 
* Instructor’s Manual containing solutions to the end-of-chapter problems.
* Laboratory Manual containing 11 projects suitable for implementation on many different FPGA development boards.
* Numerous Examples. Many examples demonstrating application of the material are contained throughout the text. 


# Why?
You might be asking yourself ``Why bother writing yet another digital design 
text?''  While this text does cover many of the same topics you will 
find in other digital design texts, it distinguishes itself by
*presenting a systematic design process for sophisticated digital circuits.* 
A digital design sophisticated when it needs to be described algorithmically
and has the generic architecture shown in **Figure 1**.


<img src="Textbook Latex/chapter08/Fig/Abstract.gif" align="right" alt="Abstract Digital System" width="100%"/>

**Figure 1: An abstract digital system constructed from a datapath and a control unit.**


The datapath and control framework classifies the inputs and outputs of every
digital logic building block as either **Data inputs**, **Data output**, **Control**, 
**Status** (the two special signals, **clk** and **reset** sit outside this
classification).  Under this framework, the datapath performs all data manipulations and the 
control unit sequences the control inputs for datapath.  The datapath is built from
combinational and sequential building blocks like multiplexers and counters.  The control unit
is a finite state machine.

# Class Organization
The text, homework and laboratory are intended for a 4-credit course.  The example timeline 
shown in Table~\ref{table:introTimeline} assumes 3 50-minute lectures per week and 
one 2 or 3 hour laboratory a week. While it is expected that students finish the laboratory
during the scheduled time, frequently students will need additional time to complete work, so accommodations need
to be in-place for them to access the hardware and software outside of course hours.   I expect that students will 
spend about 4-hours a week working outside of class. 


# Example Timeline

| Session  | Topic | Reading |
| ---     | --- | --- |
| 1			  |  Course Intro, Binary numbering, Hexadecimal | 1.1 -- 1.3 |
| 2			  | Binary Addition | 1.4 |
| 3			  | Logic gates / Circuit to Symbolic / Circuit to Truth Table | 2.1, 2.21, 2.2.2 
| 4			  | Symbolic to Truth Table / Symbolic to Circuit |  2.2.3, 2.2.4 
| 5 			| Symbolic to Verilog | Supplemental |
| Lab \#1	| Introduction to CAD tools and Verilog | |
| 6 			| Symbolic to Symbolic |  2.2.5 |
| 7 			| Symbolic to Symbolic |  2.2.5 |
| 8 			| Truth Table to Symbolic SOP and POS  | 2.2.6, 2.2.7, 2.3 |
| Lab \#2 | Hexadecimal to 7-segment Converter |  |
| 9 			| Karnaugh Maps, 3 variables |  3.1 |
| 10			|  Combinational Logic with Verilog |  Supplemental |
| 11 			| Karnaugh Maps, 4 and 5 variables |  3.2, 3.3 |
| Lab \#3	| Rock Paper Scissors | |
| 12 			| Don't cares |  3.5 |
| 13			| SOP and POS in Karnaugh maps  | |
| 14 			| Exam Review  | 3.6 |
| Lab \#4 | Guessing Game | |
| 15			| Exam I |  |
| 16 			| Decoder / Multiplexers  | 4.1, 4.2 |
| 17 			| 2's complement  | 1.5 |
| 18 			| Adders |  4.3 |
| 19			| Adder Subtractor  | 4.4 |
| Lab \#5 | Guessing Game with Hints  | |
| 20			| Comparator |  4.5 |
| 21			| Wire Logic / Combinations  | 4.7, 4.8 |
| 22			| SR Latch e | 5.5 |
| 23			| Basic memory elements -- timing  | 5.1 |
| 24			| Basic memory elements -- practical considerations  | 5.7 |
| Lab \#6 | Decimal Calculator | |
| 25 			| Register |  6.1 |
| 26 			| Shift Registers  | 6.2 |
| 27 			| Counter |  6.3 |
| Lab \#7 | 1 Dimensional Cellular Automata  | 6.3 |
| 28 			| RAM |  6.4 |
| 29 			| Register Transfer |  6.5 |
| 30			| Exam Review |  Supplemental |
Lab \#8 	| Mod 10 Counter |  |
| 31			| Exam II |  |
| 32 			| Sequential Design -- Traffic Light Controller  | 7.4 |
| 33 			| Sequential Design -- Verilog  | Supplemental |
| Lab \#9 | Stopwatch Datapath | |
| 34 			| Sequential Design -- Timing  | 7.6 |
| 35 			| Sequential Design -- Vending Machine  | 7.5 |
| Lab\#10	| Stopwatch Control  | |
| 36 			| Datapath and Control Theory |  8.1, 8.2, 8.3 |
| 37 			| Datapath and Control Theory  | 8.1, 8.2, 8.3 |
| 38 			| Datapath and Control Practice  | 8.4, 8.5 |
| Lab\#11	| Stopwatch -- Datapath and Control  | |
| 39			| Datapath and Control Practice  | 8.4, 8.5 |
| 40			| Datapath and Control Timing  | 8.4, 8.5 |
| 41			| Datapath and Control Practice  | 8.7 |
| 			  | Lab wrap-up |        |
| 42		  | Exam Review |  Supplemental |
|         | Exam III |             |


# Contribute
An important feature of this text is the ability for others to contribute to its ongoing improvement.
At present the text lacks HDL material and would benefit from a unit on FPGA architectures.  There
are countless ways that you can improve this text.  If you are interested in contributing, reach out 
to [Dr. Christopher Coulston](mailto:coulston@mines.edu?subject=[GitHub]%20Contributions) and I can arrange to make a branch of the text repository.  I'd enjoy 
working with others and sharing perspectives.
