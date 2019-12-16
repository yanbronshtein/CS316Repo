package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;
import TJasn.TJ;
import TJasn.virtualMachine.VirtualMachineHaltException;

public class PASSPARAMinstr extends ZeroOperandInstruction {

  void execute () throws VirtualMachineHaltException
  {
      /* ???????? */
    /*
    ASP stores a pointer to first unused location in stack-dynamically allocated part of data memory
    * i.e ASP points to the first location above the currently allocated locations in that part of memory
    * S-PUSH y is equivalent to TJ.data[ASP++ - POINTERTAG] = y
    * */
    TJ.data[ASP++ - POINTERTAG] = EXPRSTACK[--ESP];
  }

  public PASSPARAMinstr ()
  {
    super("PASSPARAM");
  }
}

