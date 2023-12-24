clc;clear;
turn = 0x7fff;
command = uint8(zeros(1,4));
command(3) = uint8((turn-mod(turn,0x100))/0x100);
command(4) = uint8(mod(turn,0x100));
disp(command)
