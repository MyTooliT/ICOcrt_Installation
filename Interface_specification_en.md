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
* connecting to holders
* recording of the data
* using the rule engine
are wanted to be used individually it is needed to implement more digital outputs in the machine. For the recording of data and the activation of the rule engine you need 1 digital output each. At the moment the system can connect up to 3 holders automatically with 2 digital outputs. Therefore a maximum of 4 digital outputs are needed in the machine.

## Implementation of up to 5 digital input channel
#### (also via synchronised action) to provide information of the ICOtronic system status to the machine {-}

These are all optional. The 5 digital inputs in the machine can be used to see the following status information of the ICOtronic system if wired:
+ Is the system active
+ Is the system connected to a holder
+ Is the system recording
+ Is the rule engine active
+ Is the system interfering with the machine overrides
