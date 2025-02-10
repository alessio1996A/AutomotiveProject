package elaborato2024.simulations;


import inet.networks.base.WiredNetworkBase;
import inet.node.ethernet.Eth100M;
import inet.node.ethernet.Eth1G;
import inet.node.ethernet.EthernetSwitch;
import inet.node.tsn.TsnDevice;
import inet.node.inet.StandardHost;
import inet.node.tsn.TsnSwitch;
import inet.showcases.tsn.combiningfeatures.frerandcs.LocalTsnSwitch;
import inet.showcases.tsn.gatescheduling.TsnSwitch1;
import ned.IdealChannel;

network TestNet extends WiredNetworkBase
{
    parameters:

        @display("bgb=3284.825,1561.6837");
        **.bitrate = default(1Gbps);
    submodules:
        LD1: TsnDevice {
            @display("p=156.18,1167.24");
        }
        CU: TsnDevice {
            @display("p=238.37999,587.73");
        }
        SW1: TsnSwitch {
            @display("p=885.2325,1066.1763");
        }
        SW2: TsnSwitch {
            @display("p=1575.6025,1105.1488");
        }
        HU: TsnDevice {
            @display("p=834.33,308.25");
        }
        LD2: TsnDevice {
            @display("p=402.78,1380.96");
        }
        US1: TsnDevice {
            @display("p=895.98,1426.1699");
        }
        US2: TsnDevice {
            @display("p=501.41998,394.56");
        }
        US3: TsnDevice {
            @display("p=1471.38,312.36");
        }
        US4: TsnDevice {
            @display("p=2626.29,916.52997");
        }
        CM1: TsnDevice {
            @display("p=106.86,854.88");
        }
        TLM: TsnDevice {
            @display("p=2626.29,620.61");
        }
        RC: TsnDevice {
            @display("p=1886.49,1454.94");
        }
        RS1: TsnDevice {
            @display("p=2585.19,1183.6799");
        }
        RS2: TsnDevice {
            @display("p=2461.89,443.88");
        }
        ME: TsnDevice {
            @display("p=2116.65,386.34");
        }
        S2: TsnDevice {
            @display("p=1150.7999,246.59999");
        }
        S1: TsnDevice {
            @display("p=1253.5499,1426.1699");
        }
        S3: TsnDevice {
            @display("p=1779.63,349.35");
        }
        S4: TsnDevice {
            @display("p=2355.03,1380.96");
        }
    connections:

        LD1.ethg++ <--> Eth1G <--> SW1.ethg++;
        LD2.ethg++ <--> Eth1G <--> SW1.ethg++;
        SW1.ethg++ <--> Eth1G <--> CU.ethg++;
        CU.ethg++ <--> Eth1G <--> SW1.ethg++;
        SW1.ethg++ <--> Eth1G <--> HU.ethg++;
        CM1.ethg++ <--> Eth1G <--> SW1.ethg++;
        ME.ethg++ <--> Eth1G <--> SW2.ethg++;
        SW2.ethg++ <--> Eth1G <--> SW1.ethg++;
        SW2.ethg++ <--> Eth1G <--> S3.ethg++;
        SW2.ethg++ <--> Eth1G <--> S4.ethg++;
        SW1.ethg++ <--> Eth1G <--> S2.ethg++;
        SW1.ethg++ <--> Eth1G <--> S1.ethg++;
        US1.ethg++ <--> Eth1G <--> SW1.ethg++;
        US2.ethg++ <--> Eth1G <--> SW1.ethg++;
        US3.ethg++ <--> Eth1G <--> SW2.ethg++;
        US4.ethg++ <--> Eth1G <--> SW2.ethg++;
        SW2.ethg++ <--> Eth1G <--> RS2.ethg++;
        SW2.ethg++ <--> Eth1G <--> RS1.ethg++;
        TLM.ethg++ <--> Eth1G <--> SW2.ethg++;
        RC.ethg++ <--> Eth1G <--> SW2.ethg++;
}
