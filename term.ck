// see http://ascii-table.com/ansi-escape-sequences.php

public class term
{
    fun static string reset() { return "\033[0m"; }
    
    fun static string bold() { return "\033[1m"; }
    fun static string standout() { return "\033[3m"; }
    fun static string underscore() { return "\033[4m"; }
    fun static string blink() { return "\033[5m"; }
    fun static string reverse() { return "\033[7m"; }
    fun static string conceal() { return "\033[8m"; }
    
    fun static string normal() { return "\033[22m"; }
    
    fun static string black() { return "\033[30m"; }
    fun static string red() { return "\033[31m"; }
    fun static string green() { return "\033[32m"; }
    fun static string yellow() { return "\033[33m"; }
    fun static string blue() { return "\033[34m"; }
    fun static string magenta() { return "\033[35m"; }
    fun static string cyan() { return "\033[36m"; }
    fun static string white() { return "\033[37m"; }
    fun static string default() { return "\033[39m"; }
    
    fun static string bgblack() { return "\033[40m"; }
    fun static string bgred() { return "\033[41m"; }
    fun static string bggreen() { return "\033[42m"; }
    fun static string bgyellow() { return "\033[43m"; }
    fun static string bgblue() { return "\033[44m"; }
    fun static string bgmagenta() { return "\033[45m"; }
    fun static string bgcyan() { return "\033[46m"; }
    fun static string bgwhite() { return "\033[47m"; }
    fun static string bgdefault() { return "\033[49m"; }
    
    fun static string saveCursor() { return "\033[s"; }
    fun static string restoreCursor() { return "\033[u"; }
    fun static string clearDisplay() { return "\033[2J"; }
    fun static string clearLine() { return "\033[K"; }
    fun static string back(int n) { return "\033["+n+"D"; }

}

