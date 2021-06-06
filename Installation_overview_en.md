# Installation_overview_en

Preparation document provided to the customer prior to the installation of the ICOtronic control System

## ICOtronic System components 		

The main components for the ICOtronic control system are shown in the figure below. Those are:

- the Sensory Tool Holder (STH), which features the acceleration sensor, a transceiver and a battery
- the Stationary Transceiver Unit (STU), which is located inside the machine room
- the Signal Processing Unit (SPU), which is connected to the STU via cable and must be located outside the machine room
- the Charging Cradle (CC) which is used for charging the battery of the STH

![icocrtl](assets/icocrtl.png)

## Before the installation 					  			

1. Preparation of the machine tool control system interface. (see the "Interface specification" document)
2. Checking for an installation  position for the SPU (Signal Processing Unit) closely to the machine.  (best case in the electrical cabinet)
3. Checking how the power supply of the SPU (230V~, normal outlet) can be connected. (maybe an extension cord will be needed)
4. Checking  for possibilities to route the cable from the STU (Stationary  Transceiver Unit) inside of the machining room to the SPU outside of it. The cable has a diameter of 6mm, is about 5m long and the plug has a  diameter of 19mm.
5. Preparation of testing workpiece and tools.

## For the installation 				  			

1. Look at the wiring diagram of the analogue interface module to find the right terminals in the electrical cabinet.
2. Please have a maintenance technician available for the installation.
3. Please have a machine operator available for the installation.
4. Cables for the analogue "override signals" and the digital output of the M-command "ICOtronic activ" are needed. (see the "Interface specification" document)
   Those are typically core stranded cables with different colours. (Your  maintenance technicians probably have their own conventions, we will  gladly use them)
   The diameter is typically 0,75 mm² , which are  normal for low voltage. Here we also gladly use the conventions of your  house technicians.
   The cables have to be wired from the electrical  cabinet all the way to the installation place of the SPU. (max 6 cables  parallel)
5. The cable  ends have to be prepared for the machine and ICOtronic System. (plug-in  terminal strips on the side of ICOtronic, so for example ferrules can be used)
6. Label machine or other methods to label the cables.
7. Materials to fixate the cables (cable ties,...)
8. Laptop with Windows operating system and admin rights, with already installed LabView Runtime, download link -> 
   http://www.ni.com/download/labview-run-time-engine-2018/7383/en/) 
   CAUTION: it has to be the 2018 SP1 version
9. Ethernet cable to connect the SPU and the Laptop

## Functionality of the machine tool interface 			  			

In order to control the machine tool with the ICOtronic system, the  machine tool can enable the ICOtronic system's control functionality  using a digital output. Only if this signal is set, the ICOtronic system can interact with the machine tool. Depending on the mode of operation  the ICOtronic system is configured to, it will manipulate the voltages  applied to the tool machine's analogue inputs. The machine tool changes  its override settings dependent on these inputs. The result is a closed  control loop that optimizes the process parameters on-the-fly.

### Digital IN (NC-->SPU): 		

In order to activate and deactivate this functionality, a M-command  is typically used in the G-code file. To ensure that this signal is  propagated correctly through all the layers of abstraction and  components, a test routine is provided in order to verify its  functionality. This test is carried out during installation.

Please make sure that the correct digital outputs in the machine tool are available, can be set and cleared using a M-command and are  accessible on a terminal block. The machine's manual must be available  for trouble shooting purposes. The machine operator must be able to set  and clear this output. 

The signal provided to the SPU needs to be a 24V digital signal. The  input on the SPU is an opto-isolated sinking input with a common ground  for all 8 possible channels. 

### Analogue OUT (SPU-->NC): 					  			

The SPU generates analogue control signals in order to manipulate the machine's override settings. Each control signal has a voltage range  from 0-10V which corresponds to 100%-0% override respectively e.g. (0V=  100% OVR, 10V = 0% OVR, 6V = 40%OVR).

Please make sure suitable analogue inputs are available in the  machine tool. These inputs must be mapped to the corresponding override  variables, which is usually accomplished using synchronous functions. It is important that the analogue inputs as well as all auxillary  variables can be displayed at the machine tool for debugging-purposes.  The machine operator must be able to access these information. Since  this interface is an analogue interface, the mapping function must be  suitable to accommodate gain errors and offsets. Especially edge cases,  close to the maximum and minimum voltages can cause problems if the  transfer characteristic is not well-behaved (positive semidefinite).

### SPU Pinout: 		

NC... Not Connected, which usually means not used in this application.

#### **Analogue OUT:**

| PIN    | 0         | 1       | 2             | 3        | 4                | 5           | 6    | 7    | 8    | 9    |
| ------ | --------- | ------- | ------------- | -------- | ---------------- | ----------- | ---- | ---- | ---- | ---- |
| signal | IFT-Value | IFT GND | Feed Override | Feed GND | Spindle Override | Spindle GND | NC   | NC   | NC   | NC   |

The calculated IFT-Value, which represents the stability of the  process regarding chatter, is provided as an analogue signal from 0 - 10 V on Pin number 0. However, this is just for the possibility of  recording the IFT value and therefore, Pin 0 and Pin 1 are not connected with the required analogue interface for the in-process parameter  adaption of the control system. The IFT value can be scaled and its  offset can be changed in the Dashboard. (For more information about the  Dashboard and its configuration, see the Dashboard user manual)

#### **Digital IN:**

| PIN    | 0      | 1    | 2    | 3    | 4    | 5    | 6    | 7    | 8    | 9    |
| ------ | ------ | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- | ---- |
| signal | Enable | NC   | NC   | NC   | NC   | NC   | NC   | NC   | NC   | GND  |

## During the installation 					  			

This is only an overview of the installation. For more information about the installation, see the "Installation manual".
For more information about the Dashboard and its configurations, see the "Dashboard manual".

1. Position the components (SPU, STU) in a makeshift manner at the machine an check the cable deployment.
2. The maintenance technician connects the cables between the machine and the ICOtronic system.
3. The  ICOtronic system is put into the "Direkt outout" mode to send  pre-defined test voltages (overrides) to the machine and to read the  digital inputs.
4. Together  with the maintenance technician, test if the cables were installed  correctly. This happens through measurement of the voltages at the  terminals.
5. If this test was successful, the machine  operator tests the correct intern calculation from analogue voltages to  the corresponding variables in the control system of the machine.
6. The machine operator uses the M-command to test the setting/resetting of the signal and to see, if the signal is  correctly detected by the ICOtronic system.
7. Verify through cuts without removing  material if the M-command and the overrides interact in a correct way in a normal NC program. Therefore, the machine operator creates a  NC-program, which cuts two identical traces, one without active  M-command and overrides of the ICOtronic system, and one with active  signals.
8. The sensory tool holder should be inserted in the spindle. Now connect to the holder using the Dashboard. Change  the mode to "Watch". In order to test the radio link between the STU and the holder, the sensory tool holder should be positioned in different  areas of the machining room.
9. Test cuts are performed with the sensory tool holder.

## After the installation 					  			

After successfully installing the system, it still needs to be  configured to optimally control the given use case. Therefore, it is  good to run some test cases.
This requires:

- Someone to operate the laptop
- A machine operator
- A testing tool
- A testing workpiece to be machined

The time required to optimize the system for the use case varies.  This depends on the intensity of chatter, the process time, the  experience for configuring the Dashboard and the experience of the  machine operator. This optimization procedure can take between one hour  and several hours.

Following steps have to be taken, to work out the parameters for a given use case:

1. Make some cuts without removing material to test if all signals are working correctly
2. Set the ICOtronic system to "Watch" mode and perform a process in  which chatter normally occurs. In the "Watch" mode the ICOtronic systems does not control the predefined overrides. While cutting, watch the  signal in the dashboard and take notes of the values.
3. Switch the Dashboard mode to one of the stability control modes of  the ICOtronic system.("Stability 2 Level" or "Stability Reduction")  Configure the settings in the dashboard using the noted values and carry out a cut with the ICOtronic system activated.
4. If the cut is not chatter free, change the settings in the dashboard with the data of cuts already performed and repeat the cut with the new configurations.
5. After the cut is chatter free, take notes of the values to use them later in the actual process.