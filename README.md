# PANDA_AdmitCtrl_VF_VirtualFixture
A simple demo on 7DOF Panda robot with Admittance control and VF (virtual fixture) implementation.

# Platform
Matlab/SIMULINK: R2020a 64bit;

CoppeliaSim Edu, Version 4.1.0 (rev.1) 64bit.

# Contents
(1) Implementing a simple admittance control on 7DOF Panda robot;

(2) Virtual fixture;

(3) During 2-3 sec (T=10 sec), an external force z=-10N (can be exerted by human) was exerted on the robot EE (end-effector), which will make the robot EE moving downwards. External force was removed after 3 sec, then robot EE only get VF force, which function as a spring and make the robot EE back to the previous point position.

(4) Optional. This demo can connect to VREP (CoppeliaSim) for visualization (use VREP scene file "teng4_panda.ttt").

(5) demo video and picture.

![20210601_190619_demoPic](https://user-images.githubusercontent.com/34574771/120408628-a6c6c380-c30c-11eb-8f59-e337cbfb9f56.png)

https://user-images.githubusercontent.com/34574771/120408473-5b141a00-c30c-11eb-8be0-c91f2e36bbee.mp4

