# Sequential Circuits: Latches

In this lab, you learned about the basic building block of sequential circuits: the latch.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Lab Summary
Created a simple memory structure and a 1 byte wide mux and demux module and simple Dlatch module, displaying output needed to be troubleshooted as
at first output would only ever display the LSB.  After some time diagnosing, a logic mismatch was found in the demux module.  The original design expected an 8 bit array of input
and not a reg value, this was corrected and the finished code performed as expected on device.


## Lab Questions

###  Why can we not just use structural Verilog to implement latches?
We want our signals to be locked behind an "enable" signal that we have control over. If we use structural Verilog then everything runs in realtime, and the outputs will appear immediately. When we implement latches, we can control whether we want data to stream through to the outputs or not.
### What is the meaning of always @(*) in a sensitivity block?
- forces reevaluation when variables inside the block change
### What importance is memory to digital circuits?
-  Memory allows digital circuits to create and respond to sequences of event.  Without memory digital circuits would be unable to retain information which would limit them to simple immediate response logic.
