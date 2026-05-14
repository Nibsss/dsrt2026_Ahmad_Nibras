v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -540 -430 -540 -260 {lab=in}
N -500 -490 -500 -460 {lab=#net1}
N -880 -490 -500 -490 {lab=#net1}
N -880 -490 -880 -460 {lab=#net1}
N -750 -350 -750 -290 {lab=in}
N -750 -350 -540 -350 {lab=in}
N -500 -400 -500 -290 {lab=out}
N -880 -400 -880 -230 {lab=GND}
N -500 -430 -460 -430 {lab=#net1}
N -460 -490 -460 -430 {lab=#net1}
N -500 -490 -460 -490 {lab=#net1}
N -500 -260 -460 -260 {lab=GND}
N -460 -260 -460 -230 {lab=GND}
N -750 -230 -750 -220 {lab=GND}
N -750 -220 -500 -220 {lab=GND}
N -500 -230 -500 -220 {lab=GND}
N -880 -220 -750 -220 {lab=GND}
N -880 -230 -880 -220 {lab=GND}
N -460 -230 -460 -220 {lab=GND}
N -500 -220 -460 -220 {lab=GND}
N -500 -350 -440 -350 {lab=out}
C {sky130_fd_pr/nfet_01v8.sym} -520 -260 0 0 {name=M1
W=1
L=0.15
nf=1 
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=nfet_01v8
spiceprefix=X
}
C {sky130_fd_pr/pfet_01v8.sym} -520 -430 0 0 {name=M2
W=1
L=0.15
nf=1
mult=1
ad="expr('int((@nf + 1)/2) * @W / @nf * 0.29')"
pd="expr('2*int((@nf + 1)/2) * (@W / @nf + 0.29)')"
as="expr('int((@nf + 2)/2) * @W / @nf * 0.29')"
ps="expr('2*int((@nf + 2)/2) * (@W / @nf + 0.29)')"
nrd="expr('0.29 / @W ')" nrs="expr('0.29 / @W ')"
sa=0 sb=0 sd=0
model=pfet_01v8
spiceprefix=X
}
C {vsource.sym} -880 -430 0 0 {name=V1 value=1.8 savecurrent=false}
C {vsource.sym} -750 -260 0 0 {name=V2 value=0 savecurrent=false}
C {gnd.sym} -880 -220 0 0 {name=l1 lab=GND}
C {code.sym} -1070 -370 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value=".lib /foss/pdks/ciel/sky130/versions/7b70722e33c03fcb5dabcf4d479fb0822d9251c9/sky130A/libs.tech/ngspice/sky130.lib.spice tt
.param mc_mm_switch=0
.param mc_pr_switch=1"}
C {lab_pin.sym} -750 -350 0 0 {name=p1 sig_type=std_logic lab=in}
C {lab_pin.sym} -440 -350 2 0 {name=p2 sig_type=std_logic lab=out}
C {code_shown.sym} -360 -300 0 0 {name=SPICE
only_toplevel=false
value=".option wnflag=0
.option savecurrents
.control
  save all
  dc v2 0 1.8 0.01
  plot in out
  op
.endc"}
