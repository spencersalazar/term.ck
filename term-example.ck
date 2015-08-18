
chout <= term.reset() + "normal" + term.reset() <= IO.nl();
chout <= term.bold() + "bold" + term.reset() <= IO.nl();
chout <= term.blink() + "blink" + term.reset() <= IO.nl();
chout <= term.reverse() + "reverse" + term.reset() <= IO.nl();
chout <= term.bold() + term.black() + "bold black" + term.reset() <= IO.nl();
chout <= term.bold() + term.red() + "bold red" + term.reset() <= IO.nl();
chout <= term.bold() + term.green() + "bold green" + term.reset() <= IO.nl();
chout <= term.bold() + term.yellow() + "bold yellow" + term.reset() <= IO.nl();
chout <= term.bold() + term.blue() + "bold blue" + term.reset() <= IO.nl();
chout <= term.bold() + term.magenta() + "bold magenta" + term.reset() <= IO.nl();
chout <= term.bold() + term.cyan() + "bold cyan" + term.reset() <= IO.nl();
chout <= term.bold() + term.white() + "bold white" + term.reset() <= IO.nl();
chout <= term.bgblack() + term.white() + "bg black" + term.reset() <= IO.nl();
chout <= term.bgred() + term.white() + "bg red" + term.reset() <= IO.nl();
chout <= term.bggreen() + term.black() + "bg green" + term.reset() <= IO.nl();
chout <= term.bgyellow() + term.black() + "bg yellow" + term.reset() <= IO.nl();
chout <= term.bgblue() + term.white() + "bg blue" + term.reset() <= IO.nl();
chout <= term.bgmagenta() + term.white() + "bg magenta" + term.reset() <= IO.nl();
chout <= term.bgcyan() + term.black() + "bg cyan" + term.reset() <= IO.nl();
chout <= term.bgwhite() + term.black() + "bg white" + term.reset() <= IO.nl();
chout <= term.standout() + term.bgred() + "standout bg red" + term.reset() <= IO.nl();

chout <= term.reset() + "wait for it"; chout.flush();
0.5::second => now;
chout <= "."; chout.flush();
0.5::second => now;
chout <= "."; chout.flush();
0.5::second => now;
chout <= "."; chout.flush();
0.5::second => now;
chout <= term.back(14); chout.flush();
chout <= term.clearLine(); chout.flush();

chout <= term.reset() + "- CLEAR -" + term.reset() <= IO.nl();
chout <= term.back(14); chout.flush();
chout <= term.clearLine(); chout.flush();

1.62::second => now;

["-", "\\", "|", "/"] @=> string cycle[];

for(int i; i < 50; i++)
{
    chout <= cycle[i%cycle.cap()] <= " ";
    chout <= term.bggreen()<= term.bold();
    chout <= term.black() <= " the " <= term.blue() <= "time" <= term.black() <= " is " <= term.blue() <= "now ";
    chout <= term.reset();
    chout <= " " <= cycle[cycle.cap()-((i+3)%cycle.cap()+1)];
    chout.flush();

    0.1::second => now;
    
    chout <= term.back(21); chout.flush();
    chout <= term.clearLine(); chout.flush();
}

chout <= "* ";
chout <= term.bggreen()<= term.bold();
chout <= term.black() <= " the " <= term.blue() <= "time" <= term.black() <= " is " <= term.blue() <= "now ";
chout <= term.reset();
chout <= " *" <= IO.nl();
chout.flush();



