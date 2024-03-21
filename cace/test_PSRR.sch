v {xschem version=3.4.5 file_version=1.2
}
G {}
K {}
V {}
S {}
E {}
N 70 -80 70 -60 {
lab=GND}
N 130 -80 130 -60 {
lab=GND}
N 190 -80 190 -60 {
lab=GND}
N 70 -280 70 -140 {
lab=#net1}
N 70 -280 260 -280 {
lab=#net1}
N 130 -260 260 -260 {
lab=#net2}
N 130 -260 130 -140 {
lab=#net2}
N 190 -240 190 -140 {
lab=#net3}
N 190 -240 260 -240 {
lab=#net3}
N 640 -120 720 -120 {
lab=GND}
N 720 -200 720 -120 {
lab=GND}
N 540 -120 640 -120 {
lab=GND}
N 640 -200 640 -190 {
lab=#net4}
N 640 -130 640 -120 {
lab=GND}
N 720 -280 720 -260 {
lab=vout}
N 640 -280 640 -260 {
lab=vout}
N 220 -200 260 -200 {
lab=GND}
N 220 -210 220 -200 {
lab=GND}
N 220 -220 220 -210 {
lab=GND}
N 220 -220 260 -220 {
lab=GND}
N 240 -180 260 -180 {
lab=#net3}
N 240 -180 240 -160 {
lab=#net3}
N 190 -160 240 -160 {
lab=#net3}
N 560 -280 600 -280 {
lab=vout}
N 600 -280 720 -280 {
lab=vout}
C {vsource.sym} 70 -110 0 0 {name=V1 value=0.9 savecurrent=false}
C {vsource.sym} 130 -110 0 0 {name=V2 value="3.3 ac 0.01 0" savecurrent=false}
C {vsource.sym} 190 -110 0 0 {name=V3 value=1.8 savecurrent=false}
C {gnd.sym} 190 -60 0 0 {name=l1 lab=GND}
C {gnd.sym} 130 -60 0 0 {name=l2 lab=GND}
C {gnd.sym} 70 -60 0 0 {name=l3 lab=GND}
C {code.sym} 330 -410 2 1 {name=s1 only_toplevel=false value= "

.lib /home/dcdc/xschem-src/open_pdks/sky130/sky130A/libs.tech/ngspice/sky130.lib.spice tt

.param Cout = 2.2u
.param Rout = 18k
.save all
.option savecurrents


.control 
	setplot new
	ac dec 20 1 1e12 
	plot db(V(Vout))+40	
.endc

.saveall

 "}
C {capa.sym} 640 -230 0 0 {name=C1
m=1
value=\{Cout\}
footprint=1206
device="ceramic capacitor"}
C {res.sym} 640 -160 0 0 {name=R13
value=0.1
footprint=1206
device=resistor
m=1}
C {gnd.sym} 540 -120 0 0 {name=l6 lab=GND}
C {lab_pin.sym} 720 -280 0 1 {name=p32 sig_type=std_logic lab=vout
}
C {gnd.sym} 220 -200 0 0 {name=l5 lab=GND}
C {res.sym} 720 -230 0 0 {name=R1
value=\{Rout\}
footprint=1206
device=resistor
m=1}
C {/home/dcdc/xschem-src/Work1/chipalooza2024/sky130_deser_ip_lowpowerLDO/xschem/LDO_1.sym} 410 -230 0 0 {name=x1}
