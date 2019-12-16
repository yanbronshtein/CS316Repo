package TJasn.virtualMachine;

import static TJasn.virtualMachine.CodeInterpreter.*;

import TJasn.TJ;

public class PUSHNUMinstr extends OneOperandInstruction {

  void execute ()
  {
     /* XXXX */
    EXPRSTACK[ESP++] = this.operand;
    /* XXXX */
  }

  public PUSHNUMinstr (int value) throws SourceFileErrorException
  {
    super(value, "PUSHNUM");
    if (operand >= POINTERTAG + TJ.HEAP_START)
      throw new SourceFileErrorException("Integer constant is too large.");
  }
}

