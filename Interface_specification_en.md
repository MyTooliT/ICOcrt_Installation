# Interface_specification_en

## Implementation of 2 analogue input channels (0-10V), for a voltage-dependent adjustment of the spindle speed  override and feed rate override

The voltages (0-10V) as new setpoints for spindle speed and feed rate are provided by the Signal Processing  Unit (SPU) of the ICOtronic system. It would be desirable to calculate  the final machining overrides by multiplying the values provided from  the SPU (0V = 0% reduction, 10V = 100% reduction) with the override  variables set via the control panel. The update rate has to be high so  it is preferable to compute this as a synchronized action.

## Implementation of at least one digital  output channel (also via synchronized action) to provide an enable  signal for the ICOtronic system

The system can be activated and  deactivated synchronous to the NC program by invoking dedicated  M-commands. These M-commands should switch this digital output in order  to manipulate the enable signal. (eg: M190 ... activate external control → enable is high, M84 ... deactivate external control → enable is low)
