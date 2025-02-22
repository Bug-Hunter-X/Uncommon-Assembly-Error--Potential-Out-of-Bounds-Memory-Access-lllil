# Uncommon Assembly Error: Potential Out-of-Bounds Memory Access

This repository demonstrates a subtle bug in assembly code related to scaled addressing and out-of-bounds memory access. The bug is not always apparent and might manifest under specific conditions.

The `bug.asm` file contains the code with the error, while `bugSolution.asm` provides a corrected version.

**The Bug:**

The problem arises from the use of scaled addressing with potentially unbounded scaling factors. If the values of `ecx` or `edi` are unexpectedly large, the memory access will extend beyond allocated memory, causing a crash.

**The Solution:**

The solution involves carefully checking the bounds of the scaling factors before performing the memory accesses. This typically involves adding checks to ensure the resulting addresses fall within the allocated memory region.