package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;
import TJasn.TJ;

public class RETURNinstr extends OneOperandInstruction {

  void execute ()
  {
    /* XXXX */
    ASP = FP + 1; // Deallocates space used by callee's variables
    FP = TJ.data[--ASP - POINTERTAG]; // Restores caller's FP
    PC = TJ.data[--ASP - POINTERTAG]; //puts the saved return address into PC
    ASP -= this.operand; //deallocates space used by formal parameters
    /* XXXX */
  }

  public RETURNinstr (int operand)
  {
    super(operand, "RETURN");
  }
}

