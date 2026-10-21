from ashes_fg.asic.asic_compile import StandardCell, Port

class IndirectVMM_4x2(StandardCell):
    def __init__(self,circuit,island=None,dim=(1,1),Vd_P_w=None,Vd_R_w=None,Vd_R_e=None,Vd_P_e=None,Vsel_n=None,Vs_n=None,VINJ_n=None,GND_n=None,Vg_n=None,VTUN_n=None,Vsel_s=None,Vs_s=None,VINJ_s=None,GND_s=None,Vg_s=None,VTUN_s=None):
        # Define variables
        self.circuit = circuit
        self.pins = []
        self.ports = []
        self.island = island
        self.dim = dim
        self.size = [17.11,6.55]

        # Define cell information
        self.name = 'IndirectVMM_4x2'
        self.Vd_P_w = Port(circuit,self,'Vd_P_w','W',4*self.dim[0])
        self.Vd_R_w = Port(circuit,self,'Vd_R_w','W',4*self.dim[0])
        self.Vd_R_e = Port(circuit,self,'Vd_R_e','E',4*self.dim[0])
        self.Vd_P_e = Port(circuit,self,'Vd_P_e','E',4*self.dim[0])
        self.Vsel_n = Port(circuit,self,'Vsel_n','N',2*self.dim[1])
        self.Vs_n = Port(circuit,self,'Vs_n','N',2*self.dim[1])
        self.VINJ_n = Port(circuit,self,'VINJ_n','N',2*self.dim[1])
        self.GND_n = Port(circuit,self,'GND_n','N',1*self.dim[1])
        self.Vg_n = Port(circuit,self,'Vg_n','N',2*self.dim[1])
        self.VTUN_n = Port(circuit,self,'VTUN_n','N',1*self.dim[1])
        self.Vsel_s = Port(circuit,self,'Vsel_s','S',2*self.dim[1])
        self.Vs_s = Port(circuit,self,'Vs_s','S',2*self.dim[1])
        self.VINJ_s = Port(circuit,self,'VINJ_s','S',2*self.dim[1])
        self.GND_s = Port(circuit,self,'GND_s','S',1*self.dim[1])
        self.Vg_s = Port(circuit,self,'Vg_s','S',2*self.dim[1])
        self.VTUN_s = Port(circuit,self,'VTUN_s','S',1*self.dim[1])

        # Initialize ports with given values
        portsInit = [Vd_P_w,Vd_R_w,Vd_R_e,Vd_P_e,Vsel_n,Vs_n,VINJ_n,GND_n,Vg_n,VTUN_n,Vsel_s,Vs_s,VINJ_s,GND_s,Vg_s,VTUN_s]
        i=0
        for p in self.ports:
            self.assignPort(p,portsInit[i])
            i+=1

        # Add cell to circuit
        circuit.addInstance(self,self.island)

class TA_FGbias_1x2(StandardCell):
    def __init__(self,circuit,island=None,dim=(1,1),Vin_P_w=None,Vin_M_w=None,Vd_P_w=None,GND_w=None,OUTPUT_e=None,GND_n=None,Vg_n=None,Vsel_n=None,AVDD_n=None,VTUN_n=None,VINJ_n=None,GND_s=None,Vg_s=None,Vsel_s=None,AVDD_s=None,VTUN_s=None,VINJ_s=None):
        # Define variables
        self.circuit = circuit
        self.pins = []
        self.ports = []
        self.island = island
        self.dim = dim
        self.size = [27.6,6.5]

        # Define cell information
        self.name = 'TA_FGbias_1x2'
        self.Vin_P_w = Port(circuit,self,'Vin_P_w','W',2*self.dim[0])
        self.Vin_M_w = Port(circuit,self,'Vin_M_w','W',2*self.dim[0])
        self.Vd_P_w = Port(circuit,self,'Vd_P_w','W',2*self.dim[0])
        self.GND_w = Port(circuit,self,'GND_w','W',1*self.dim[0])
        self.OUTPUT_e = Port(circuit,self,'OUTPUT_e','E',2*self.dim[0])
        self.GND_n = Port(circuit,self,'GND_n','N',1*self.dim[1])
        self.Vg_n = Port(circuit,self,'Vg_n','N',1*self.dim[1])
        self.Vsel_n = Port(circuit,self,'Vsel_n','N',1*self.dim[1])
        self.AVDD_n = Port(circuit,self,'AVDD_n','N',1*self.dim[1])
        self.VTUN_n = Port(circuit,self,'VTUN_n','N',1*self.dim[1])
        self.VINJ_n = Port(circuit,self,'VINJ_n','N',1*self.dim[1])
        self.GND_s = Port(circuit,self,'GND_s','S',1*self.dim[1])
        self.Vg_s = Port(circuit,self,'Vg_s','S',1*self.dim[1])
        self.Vsel_s = Port(circuit,self,'Vsel_s','S',1*self.dim[1])
        self.AVDD_s = Port(circuit,self,'AVDD_s','S',1*self.dim[1])
        self.VTUN_s = Port(circuit,self,'VTUN_s','S',1*self.dim[1])
        self.VINJ_s = Port(circuit,self,'VINJ_s','S',1*self.dim[1])

        # Initialize ports with given values
        portsInit = [Vin_P_w,Vin_M_w,Vd_P_w,GND_w,OUTPUT_e,GND_n,Vg_n,Vsel_n,AVDD_n,VTUN_n,VINJ_n,GND_s,Vg_s,Vsel_s,AVDD_s,VTUN_s,VINJ_s]
        i=0
        for p in self.ports:
            self.assignPort(p,portsInit[i])
            i+=1

        # Add cell to circuit
        circuit.addInstance(self,self.island)
