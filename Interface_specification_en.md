# Interface_specification

## Implementation of 2 analogue input channels
#### (0-10V), for a voltage-dependent adjustment of the spindle speed override and feed rate override {-}

The voltages (0-10V) as new setpoints for spindle speed and feed rate are provided by the Signal Processing Unit (SPU) of the ICOtronic system. It would be desirable to calculate the final machining overrides by multiplying the values provided from the SPU (0V = 0% reduction, 10V = 100% reduction) with the override variables set via the control panel. The update rate has to be high so it is preferable to compute this as a synchronised action.

## Implementation of at least one digital output channel
#### (also via synchronised action) to provide an enable signal for the ICOtronic system {-}

##### Minimum requirements {-}

The system can be activated and deactivated synchronous to the NC program by invoking dedicated M-commands. These M-commands should switch this digital output in order to manipulate the enable signal. (eg: M190 ... activate external control → enable is high, M84 ... deactivate external control → enable is low)

##### Possibility of more digital outputs {-}

If the diverse functions:

- connecting to holders
- recording of the data
- using the rule engine

are wanted to be used individually it is needed to implement more digital outputs in the machine. For the recording of data and the activation of the rule engine you need 1 digital output each. At the moment the system can connect up to 255 holders/rules automatically with 8 digital outputs and 1 digital output to activate the connection. Therefore a maximum of 11 digital outputs are needed in the machine.

## Implementation of up to 8 digital input channel
#### (also via synchronised action) to provide information of the ICOtronic system status to the machine {-}

These are all optional. The 8 digital inputs in the machine can be used to see the following status information of the ICOtronic system if wired:

- Is the system active
- Is the system connected to a holder
- Is the system recording
- Is the rule engine active
- Is the system interfering with the machine overrides
- Is the system running in Dashboard Control Mode
- Is the auto connect function enabled
- Is the auto enable Rule activated

## Functions and there needed machine ports

| Functions | Analogue Input | Digital Output | Digital Input | Comment |
|------------|----------------|-------------------|-------------------|-----------|
|Feed override|+1|0|0||
|Spindle speed override|+1|0|0||
|Analogue feedback of the IFT-Value from SPU to machine|+1|0|0||
|Start recording function through machine signal|0|+1|0||
|Enable the rule engine through machine signal|0|+1|0||
|Connect holder through machine signals|0|+log<sub>2</sub>(number of holders)+1|0|The firmware supports up to 255 holders to be connected via this function => max. +8 digital outputs|
|Start the connection to defined holder/rule|0|+1|0||
|SPU feedback to machine: System active|0|0|+1||
|SPU feedback to machine: Holder connected|0|0|+1||
|SPU feedback to machine: Recording active|0|0|+1||
|SPU feedback to machine: Rule engine active|0|0|+1||
|SPU feedback to machine: SPU interfering with the overrides|0|0|+1||
|SPU feedback to machine: Dashboard control activ|0|0|+1||
|SPU feedback to machine: Auto connect enabled|0|0|+1||
|SPU feedback to machine: Auto enable of rule active|0|0|+1||
|ALL FUNCTIONS|3|11|8|All functions used and connectable to max. 255 holders|

### Examples

#### Only using the dashboard and no connection to the machine {-}

If you only want to control the ICOtronic system via the dashboard and no adaptation of the overrides, then you don't need any connections to the machine. In this scenario you have to connect, record etc. via hand and the dashbaord on a computer connected to the SPU.

#### Using the machine to record 1 holder {-}

In this scenario you need 2 digital outputs on the machine. 1 digital output is used to connect/disconnect to the holder and 1 is used to start/stop the recording.

#### Using the machine with 3 different holders to record and get feedback into the machine if the system is active, connected to a holder and recording {-}

In this scenario you need 4 digital outputs and 3 digital inputs on the machine. 2 digital outputs are used to connect/disconnect to up to 3 holders. 1 digital output to start the connection. 1 digital output is used to start/stop the recording. 1 of the digital inputs is used for the information if the SPU is active, 1 digital input is used for the information if a holder is currently connected to the system and 1 digital input is used for the information if the system is recording at the moment.

#### Using the rule engine to influence the overrides without feedback from the SPU with 1 holder and no recording {-}

In this scenario you need 2 analogue inputs and 2 digital outputs on the machine. 2 analogue inputs, 1 for the feed override and 1 for the spindle speed override values. 1 digital output is needed to connect to a holder through the machine and 1 digital output is needed to activate the rule engine through the machine.

#### Using the rule engine to influence the overrides with feedback from the SPU with 2 holders and recording {-}

In this scenario you need 2 analogue inputs, 5 digital outputs and 5 digital inputs on the machine. 2 analogue inputs, 1 for the feed override and 1 for the spindle speed override values. 2 digital output are needed to connect to the 2 holder, 1 digital output to start the connection, 1 digital output is needed to start the recording and 1 digital output is needed to activate the rule engine through the machine. 1 digital input is needed for the information if the SPU is active, 1 digital input is needed for the information if a holder is connected to the system, 1 digital input is needed for the information if the system is recording at the moment, 1 digital input is needed for the information if the rule engine is enabled and 1 digital input is needed to get the information if the system is interfering with the overrides at the moment.

#### Using OPCUA for system control without changing the overrides {-}

In this scenario you don't need any connections to the machine. You only need an OPCUA **CLIENT** which is connected to the system via LAN-cable. 

#### Using OPCUA for system control with usage of the rule engine {-}

In this scenario you need 2 analogue inputs on the machine. 1 analogue input for the override of the feed speed and 1 analogue input for the override of the spindle speed. Additionally you need an OPCUA **CLIENT** which is connected to the system via LAN-cable.
