
{***************************************}
{                                       }
{ Name:   CBWGS512.PAS                  }
{                                       }
{ adaptation de CBW.PAS                 }
{ Delphi Interface Unit for             }
{ Computer Board's Universal Library    }
{                                       }
{ (c) Copyright 1996 - 2000             }
{     Computer Boards                   }
{    All rights reserved.               }
{                                       }
{***************************************}


unit cbwgs512;

interface
{$IFDEF FPC} {$mode delphi} {$DEFINE AcqElphy2} {$A1} {$Z1} {$ENDIF}

uses windows;


const

{ Current Revision Number}
  CURRENTREVNUM = 5.12;

{ System error code }
  NOERRORS           = 0;    { No error occurred }
  BADBOARD           = 1;    { Invalid board number specified }
  DEADDIGITALDEV     = 2;    { Digital I/O is not responding }
  DEADCOUNTERDEV     = 3;    { Counter is not responding }
  DEADDADEV          = 4;    { D/A is not responding }
  DEADADDEV          = 5;    { A/D is not responding }
  NOTDIGITALCONF     = 6;    { Specified board does not have digital I/O }
  NOTCOUNTERCONF     = 7;    { Specified board does not have a counter }
  NOTDACONF          = 8;    { Specified board is does not have D/A }
  NOTADCONF          = 9;    { Specified board does not have A/D }
  NOTMUXCONF         = 10;   { Specified board does not have thermocouple inputs }
  BADPORTNUM         = 11;   { Invalid port number specified }
  BADCOUNTERDEVNUM   = 12;   { Invalid counter device }
  BADDADEVNUM        = 13;   { Invalid D/A device }
  BADSAMPLEMODE      = 14;   { Inavlid sampling mode option specified }
  BADINT             = 15;   { Board configured for invalid interrupt level }
  BADADCHAN          = 16;   { Invalid A/D channel Specified }
  BADCOUNT           = 17;   { Invalid count specified }
  BADCNTRCONFIG      = 18;   { invalid counter configuration specified }
  BADDAVAL           = 19;   { Invalid D/A output value specified }
  BADDACHAN          = 20;   { Invalid D/A channel specified }
  ALREADYACTIVE      = 22;   { A background process is already in progress }
  PAGEOVERRUN	   = 23;   { DMA page overrun - obsolete }
  BADRATE            = 24;   { Inavlid sampling rate specified }
  COMPATMODE         = 25;   { Board switches set for "compatible" mode }
  TRIGSTATE          = 26;   { Incorrect intial trigger state D0 must=TTL low) }
  ADSTATUSHUNG       = 27;   { A/D is not responding }
  TOOFEW             = 28;   { Too few samples before trigger occurred }
  OVERRUN            = 29;   { Data lost due to overrun, rate too high }
  BADRANGE           = 30;   { Invalid range specified }
  BADFILENAME        = 32;   { Not a legal DOS filename }
  DISKISFULL         = 33;   { Couldn't complete, disk is full }
  COMPATWARN         = 34;   { Board is in compatible mode, so DMA will be used }
  BADPOINTER         = 35;   { Invalid pointer (NULL) }
  RATEWARNING        = 37;   { Rate may be too high for interrupt I/O }
  CONVERTDMA         = 38;   { CONVERTDATA cannot be used with DMA I/O }
  DTCONNECTERR       = 39;   { Board doesn't have DT Connect }
  FORECONTINUOUS     = 40;   { CONTINUOUS can only be used with BACKGROUND }
  BADBOARDTYPE       = 41;   { This function can not be used with this board }
  WRONGDIGCONFIG     = 42;   { Digital I/O is configured incorrectly }
  NOTCONFIGURABLE    = 43;   { Digital port is not configurable }
  BADPORTCONFIG      = 44;   { Invalid port configuration specified }
  BADFIRSTPOINT      = 45;   { First point argument is not valid }
  ENDOFFILE          = 46;   { Attempted to read past end of file }
  NOT8254CTR         = 47;   { This board does not have an 8254 counter }
  NOT9513CTR         = 48;   { This board does not have a 9513 counter }
  BADTRIGTYPE        = 49;   { Invalid trigger type }
  BADTRIGVALUE       = 50;   { Invalid trigger value }
  BADOPTION          = 52;   { Invalid option sepcified for this function }
  BADPRETRIGCOUNT    = 53;   { Invalid pre-trigger count sepcified }
  BADDIVIDER         = 55;   { Invalid fout divider value }
  BADSOURCE          = 56;   { Invalid source value  }
  BADCOMPARE         = 57;   { Invalid compare value }
  BADTIMEOFDAY       = 58;   { Invalid time of day value }
  BADGATEINTERVAL    = 59;   { Invalid gate interval value }
  BADGATECNTRL       = 60;   { Invalid gate control value }
  BADCOUNTEREDGE     = 61;   { Invalid counter edge value }
  BADSPCLGATE        = 62;   { Invalid special gate value }
  BADRELOAD          = 63;   { Invalid reload value }
  BADRECYCLEFLAG     = 64;   { Invalid recycle flag value }
  BADBCDFLAG         = 65;   { Invalid BCD flag value }
  BADDIRECTION       = 66;   { Invalid count direction value }
  BADOUTCONTROL      = 67;   { Invalid output control value }
  BADBITNUMBER       = 68;   { Invalid bit number }
  NONEENABLED        = 69;   { None of the counter channels are enabled }
  BADCTRCONTROL      = 70;   { Element of control array not ENABLED/DISABLED }
  BADEXPCHAN         = 71;   { Invalid MUX channel }
  WRONGADRANGE       = 72;   { Wrong A/D range selected for cbtherm }
  OUTOFRANGE         = 73;   { Temperature input is out of range }
  BADTEMPSCALE       = 74;   { Invalid temperate scale }
  BADERRCODE         = 75;   { Invalid error code specified }
  NOQUEUE            = 76;   { Specified board does not have chan/gain queue}
  CONTINUOUSCOUNT    = 77;   { CONTINUOUS option can't be used with this count value }
  UNDERRUN           = 78;   { D/A FIFO hit empty while doing output }
  BADMEMMODE         = 79;   { Invalid memory mode specified }
  FREQOVERRUN        = 80;   { Measured freq to high for gating interval }
  NOCJCCHAN          = 81;   { Board does not have CJC chan configured }
  BADCHIPNUM         = 82;   { Invalid chip number used with cbC9513Init() }
  DIGNOTENABLED      = 83;   { Digital I/O on board is not enabled }
  CONVERT16BITS      = 84;   { Convert option not allowed with 16 bit A/D }
  NOMEMBOARD         = 85;   { EXTMEMORY option requires a memory board }
  DTACTIVE           = 86;   { Memory I/O while DT was active }
  NOTMEMCONF         = 87;   { Specified board is not a memory board }
  ODDCHAN            = 88;   { First chan in queue can not be odd }
  CTRNOINIT          = 89;   { Counter was not initialized }
  NOT8536CTR         = 90;   { Specified counter is not an 8536 }
  FREERUNNING        = 91;   { A/D is not timed. Running at fastest possible speed }
  INTERRUPTED        = 92;   { Operation was interrupted with CTRL-C key }
  NOSELECTORS        = 93;   { No selectors could be allocated }
  NOBURSTMODE        = 94;   { Burst mode is not supported on this board }
  NOTWINDOWSFUNC     = 95;   { This function not available in Windows lib }
  NOTSIMULCONF       = 96;   { Board not configured for simultaneous option }
  EVENODDMISMATCH    = 97;   { Even channel in odd slot in the queue }
  M1RATEWARNING      = 98;   { DAS16/M1 sample rate too fast for count }
  NOTRS485           = 99;   { Specified board is not a COM-485 }
  NOTDOSFUNC         = 100;  { This function not avaliable in DOS }
  RANGEMISMATCH      = 101;  { Unipolar and Bipolar can not be used together in A/D que }
  CLOCKTOOSLOW       = 102;  { Sample rate too fast for clock jumper setting }
  BADCALFACTORS      = 103;  { Cal factors were out of expected range of values }
  BADCONFIGTYPE      = 104;  { Invalid configuration type information requested }
  BADCONFIGITEM      = 105;  { Invalid configuration item specified }
  NOPCMCIABOARD      = 106;  { Can't acces PCMCIA board }
  NOBACKGROUND       = 107;  { Board does not support background I/O }
  STRINGTOOSHORT     = 108;  { String argument is not long enough }
  CONVERTEXTMEM      = 109;  { CONVERTDATA not allowed with EXTMEM }
  BADEUADD              = 110;   { e_ToEngUnits addition error }
  DAS16JRRATEWARNING    = 111;   { use 10 MHz clock for rates > 125KHz }
  DAS08TOOLOWRATE       = 112;   { DAS08 rate set too low for AInScan warning }
  MEMBOARDPROGERROR     = 113;   { Program error getting memory board source }
  AMBIGSENSORONGP       = 114;   { more than one sensor type defined for EXP-GP }
  NOSENSORTYPEONGP      = 115;   { no sensor type defined for EXP-GP }
  NOCONVERSIONNEEDED    = 116;   { 12 bit board without chan tags - converted in ISR }
  NOEXTCONTINUOUS       = 117;   { External memory cannot be used in CONTINUOUS mode }
  INVALIDPRETRIGCONVERT = 118;   { cbAConvertPretrigData was called after failure in cbAPretrig }
  BADCTRREG             = 119;   { bad arg to CLoad for 9513 }
  BADTRIGTHRESHOLD      = 120;   { Invalid trigger threshold specified in cbSetTrigger }
  BADPCMSLOTREF         = 121;   { Bad PCM Card slot reference }
  AMBIGPCMSLOTREF       = 122;   { Ambiguous PCM Card slot reference}
  BADSENSORTYPE         = 123;   { Bad sensor type selected in Instacal }
  DELBOARDNOTEXIST      = 124;   { tried to delete board number which doesn't exist }
  NOBOARDNAMEFILE       = 125;   { board name file not found }
  CFGFILENOTFOUND       = 126;   { configuration file not found }
  NOVDDINSTALLED        = 127;   { CBUL.386 device driver is not installed }
  NOWINDOWSMEMORY       = 128;   { No Windows memory avaliable }
  OUTOFDOSMEMORY        = 129;   { No DOS memory available }
  OBSOLETEOPTION        = 130;   { Option not supportedin cbGet/SetConfig }
  NOPCMREGKEY           = 131;   { No registry entry for this PCMCIA board }
  NOCBUL32SYS           = 132;   { CBUL32.SYS device driver not installed }
  NODMAMEMEMORY         = 133;   { No memory for device driver's DMA buffer }  
  IRQNOTAVAILABLE       = 134;   { IRQ in use by another device }
  NOT7266CTR            = 135;   { This board does not have an LS7266 counter }
  BADQUADRATURE         = 136;   { Invalid quadrature specified }
  BADCOUNTMODE          = 137;   { Invalid counting mode specified }
  BADENCODING           = 138;   { Invalid data encoding specified }
  BADINDEXMODE          = 139;   { Invalid index mode specified }
  BADINVERTINDEX        = 140;   { Invalid invert index specified }
  BADFLAGPINS           = 141;   { Invalid flag pins specified }
  NOCTRSTATUS           = 142;   { This board does not support cbCStatus() }
  NOGATEALLOWED         = 143;   { Gating and indexing not allowed simultaneously }
  NOINDEXALLOWED        = 144;   { Indexing not allowed in non-quadratue mode }
  OPENCONNECTION        = 145;   { Temperature input has open connection }
  BMCONTINUOUSCOUNT     = 146;   { Count must be integer multiple of packetsize for recycle mode. }
  BADCALLBACKFUNC       = 147;   { Invalid pointer to callback function passed as arg }

  INTERNALERR           = 200;  { 200-299 = 16 bit library internal error  }
  INTERNALERR32         = 300;  { 300-399 = 32 bit library internal error  }
  PCMCIAERRS            = 400;  { 400-499 = PCMCIA errors }
                                                                

{ These are the commonly occurring remapped DOS error codes }
  DOSBADFUNC         = 501;
  DOSFILENOTFOUND    = 502;
  DOSPATHNOTFOUND    = 503;
  DOSNOHANDLES       = 504;
  DOSACCESSDENIED    = 505;
  DOSINVALIDHANDLE   = 506;
  DOSNOMEMORY        = 507;
  DOSBADDRIVE        = 515;
  DOSTOOMANYFILES    = 518;
  DOSWRITEPROTECT    = 519;
  DOSDRIVENOTREADY   = 521;
  DOSSEEKERROR       = 525;
  DOSWRITEFAULT      = 529;
  DOSREADFAULT       = 530;
  DOSGENERALFAULT    = 531;



  NOTUSED          = -1;

{ Maximum length of error string}
  ERRSTRLEN = 80;

{ Maximum length of board name string}
  BOARDNAMELEN = 25;


{ Status values }
  IDLE             = 0;
  RUNNING          = 1;

{ Option Flags }
  FOREGROUND       = $0000;    { Run in foreground, don't return till done }
  BACKGROUND       = $0001;    { Run in background, return immediately }

  SINGLEEXEC       = $0000;    { One execution }
  CONTINUOUS       = $0002;    { Run continuously until cbstop() called }

  TIMED            = $0000;    { Time conversions with internal clock }
  EXTCLOCK         = $0004;    { Time conversions with external clock }

  NOCONVERTDATA    = $0000;    { Return converted data }
  CONVERTDATA      = $0008;    { Return raw A/D data }

  NODTCONNECT      = $0000;    { Disable DT Connect }
  DTCONNECT        = $0010;    { Enable DT Connect }

  DEFAULTIO        = $0000;    { Use whatever makes sense for board }
  SINGLEIO         = $0020;    { Interrupt per A/D conversion }
  DMAIO            = $0040;    { DMA transfer }
  BLOCKIO          = $0060;    { Interrupt per block of conversions }

  BYTEXFER         = $0000;    { Digital IN/OUT a byte at a time }
  WORDXFER         = $0100;    { Digital IN/OUT a word at a time }

  INDIVIDUAL       = $0000;    { Individual D/A output }
  SIMULTANEOUS     = $0200;    { Simultaneous D/A output }

  FILTER           = $0000;    { Filter the input signal }
  NOFILTER         = $0400;    { Disable input filter }

  NORMMEMORY       = $0000;    { Return data to data array }
  EXTMEMORY        = $0800;    { Send data to memory board via DT-Connect }

  BURSTMODE        = $1000;    { Enable burst mode }

  NOTODINTS        = $2000;    { Disable time of day Interrupts }

  EXTTRIGGER       = $4000;    { A/D is triggered externally }

  NOCALIBRATEDATA  = $8000;    { Return uncalibrated PCM data }
  CALIBRATEDATA    = $0000;    { Return calibrated PCM A/D data }

  ENABLED          = 1;
  DISABLED         = 0;

  CBENABLED	   = 1;
  CBDISABLED       = 0;


{ types of error reporting }
  DONTPRINT        = 0;
  PRINTWARNINGS    = 1;
  PRINTFATAL       = 2;
  PRINTALL         = 3;

{ types of error handling }
  DONTSTOP         = 0;
  STOPFATAL        = 1;
  STOPALL          = 2;

{ Types of digital input ports }
  DIGITALOUT       = 1;
  DIGITALIN        = 2;

{ Types of DT Modes for cbMemSetDTMode() }
  DTIN             = 0;
  DTOUT            = 2;

  FROMHERE        = -1;       { Read/Write from current poistion }
  GETFIRST        = -2;       { Get first item in list }
  GETNEXT         = -3;       { Get next item in list }


{ Temperature scales }
  CELSIUS          = 0;
  FAHRENHEIT       = 1;
  KELVIN           = 2;
  VOLTS            = 4;


{ Types of digital I/O Ports }
  AUXPORT          = 1;
  FIRSTPORTA       = 10;
  FIRSTPORTB       = 11;
  FIRSTPORTCL      = 12;
  FIRSTPORTCH      = 13;
  SECONDPORTA      = 14;
  SECONDPORTB      = 15;
  SECONDPORTCL     = 16;
  SECONDPORTCH     = 17;
  THIRDPORTA       = 18;
  THIRDPORTB       = 19;
  THIRDPORTCL      = 20;
  THIRDPORTCH      = 21;
  FOURTHPORTA      = 22;
  FOURTHPORTB      = 23;
  FOURTHPORTCL     = 24;
  FOURTHPORTCH     = 25;
  FIFTHPORTA       = 26;
  FIFTHPORTB       = 27;
  FIFTHPORTCL      = 28;
  FIFTHPORTCH      = 29;
  SIXTHPORTA       = 30;
  SIXTHPORTB       = 31;
  SIXTHPORTCL      = 32;
  SIXTHPORTCH      = 33;
  SEVENTHPORTA     = 34;
  SEVENTHPORTB     = 35;
  SEVENTHPORTCL    = 36;
  SEVENTHPORTCH    = 37;
  EIGHTHPORTA      = 38;
  EIGHTHPORTB      = 39;
  EIGHTHPORTCL     = 40;
  EIGHTHPORTCH     = 41;


{ Selectable A/D Ranges codes }
  BIP10VOLTS       = 1;               { -10 to +10 Volts }
  BIP5VOLTS        = 0;               { -5 to +5 Volts }
  BIP2PT5VOLTS     = 2;               { -2.5 to +2.5 Volts }
  BIP1PT25VOLTS    = 3;               { -1.25 to +1.25 Volts }
  BIP1VOLTS        = 4;               { -1 to +1 Volts }
  BIPPT625VOLTS    = 5;               { -.625 to +.625 Volts }
  BIPPT5VOLTS      = 6;               { -.5 to +.5 Volts }
  BIPPT1VOLTS      = 7;               { -.1 to +.1 Volts }
  BIPPT05VOLTS     = 8;               { -.05 to +.05 Volts }
  BIPPT01VOLTS     = 9;               { -.01 to +.01 Volts }
  BIPPT005VOLTS    = 10;              { -.005 to +.005 Volts }
  BIP1PT67VOLTS    = 11;              { -.1.67 to + 1.67 Volts }

  UNI10VOLTS       = 100;             { 0 to 10 Volts }
  UNI5VOLTS        = 101;             { 0 to 5 Volts }
  UNI2PT5VOLTS     = 102;             { 0 to 2.5 Volts }
  UNI2VOLTS        = 103;             { 0 to 2 Volts }
  UNI1PT25VOLTS    = 104;             { 0 to 1.25 Volts }
  UNI1VOLTS        = 105;             { 0 to 1 Volts }
  UNIPT1VOLTS      = 106;             { 0 to .1 Volts }
  UNIPT01VOLTS     = 107;             { 0 to .01 Volts }
  UNIPT02VOLTS     = 108;             { 0 to .02 Volts }
  UNI1PT67VOLTS    = 109;             { 0 to 1.67 Volts }

  MA4TO20          = 200;             { 4 to 20 ma }
  MA2TO10          = 201;             { 2 to 10 ma }
  MA1TO5           = 202;             { 1 to 5 ma }
  MAPT5TO2PT5      = 203;             { .5 to 2.5 ma }

  UNIPOLAR         = 300;             { Unipolar range }
  BIPOLAR          = 301;             { Bipolar range }


{ Types of D/A    }
  ADDA1     = 0;
  ADDA2     = 1;

{ 8536 counter output 1 control }
  NOTLINKED           = 0;
  GATECTR2            = 1;
  TRIGCTR2            = 2;
  INCTR2              = 3;

{ Types of 8254 Counter configurations }
  HIGHONLASTCOUNT     = 0;
  ONESHOT             = 1;
  RATEGENERATOR       = 2;
  SQUAREWAVE          = 3;
  SOFTWARESTROBE      = 4;
  HARDWARESTROBE      = 5;

{ Where to reload from for 9513 counters }
  LOADREG         = 0;
  LOADANDHOLDREG  = 1;

{ Counter recycle modes }
  ONETIME         = 0;
  RECYCLE         = 1;

{ Direction of counting for 9513 counters }
  COUNTDOWN       = 0;
  COUNTUP         = 1;

{ Types of count detection for 9513 counters }
  POSITIVEEDGE    = 0;
  NEGATIVEEDGE    = 1;

{ Counter output control }
  ALWAYSLOW       = 0;    { 9513 }
  HIGHPULSEONTC   = 1;    { 9513 and 8536 }
  TOGGLEONTC      = 2;    { 9513 and 8536 }
  DISCONNECTED    = 4;    { 9513 }
  LOWPULSEONTC    = 5;    { 9513 }
  HIGHUNTILTC     = 6;    { 8536 }

{ Counter input sources }
  TCPREVCTR       = 0;
  CTRINPUT1       = 1;
  CTRINPUT2       = 2;
  CTRINPUT3       = 3;
  CTRINPUT4       = 4;
  CTRINPUT5       = 5;
  GATE1           = 6;
  GATE2           = 7;
  GATE3           = 8;
  GATE4           = 9;
  GATE5           = 10;
  FREQ1           = 11;
  FREQ2           = 12;
  FREQ3           = 13;
  FREQ4           = 14;
  FREQ5           = 15;
  CTRINPUT6       = 101;
  CTRINPUT7       = 102;
  CTRINPUT8       = 103;
  CTRINPUT9       = 104;
  CTRINPUT10      = 105;
  GATE6           = 106;
  GATE7           = 107;
  GATE8           = 108;
  GATE9           = 109;
  GATE10          = 110;
  FREQ6           = 111;
  FREQ7           = 112;
  FREQ8           = 113;
  FREQ9           = 114;
  FREQ10          = 115;
  CTRINPUT11       = 201;
  CTRINPUT12       = 202;
  CTRINPUT13       = 203;
  CTRINPUT14       = 204;
  CTRINPUT15       = 205;
  GATE11           = 206;
  GATE12           = 207;
  GATE13           = 208;
  GATE14           = 209;
  GATE15           = 210;
  FREQ11           = 211;
  FREQ12           = 212;
  FREQ13           = 213;
  FREQ14           = 214;
  FREQ15           = 215;
  CTRINPUT16       = 301;
  CTRINPUT17       = 302;
  CTRINPUT18       = 303;
  CTRINPUT19       = 304;
  CTRINPUT20       = 305;
  GATE16           = 306;
  GATE17           = 307;
  GATE18           = 308;
  GATE19           = 309;
  GATE20           = 310;
  FREQ16           = 311;
  FREQ17           = 312;
  FREQ18           = 313;
  FREQ19           = 314;
  FREQ20           = 315;

{ 9513 Counter registers }
  LOADREG1        = 1;
  LOADREG2        = 2;
  LOADREG3        = 3;
  LOADREG4        = 4;
  LOADREG5        = 5;
  LOADREG6        = 6;
  LOADREG7        = 7;
  LOADREG8        = 8;
  LOADREG9        = 9;
  LOADREG10       = 10;
  LOADREG11       = 11;
  LOADREG12       = 12;
  LOADREG13       = 13;
  LOADREG14       = 14;
  LOADREG15       = 15;
  LOADREG16       = 16;
  LOADREG17       = 17;
  LOADREG18       = 18;
  LOADREG19       = 19;
  LOADREG20       = 20;
  HOLDREG1        = 101;
  HOLDREG2        = 102;
  HOLDREG3        = 103;
  HOLDREG4        = 104;
  HOLDREG5        = 105;
  HOLDREG6        = 106;
  HOLDREG7        = 107;
  HOLDREG8        = 108;
  HOLDREG9        = 109;
  HOLDREG10       = 110;
  HOLDREG11       = 111;
  HOLDREG12       = 112;
  HOLDREG13       = 113;
  HOLDREG14       = 114;
  HOLDREG15       = 115;
  HOLDREG16       = 116;
  HOLDREG17       = 117;
  HOLDREG18       = 118;
  HOLDREG19       = 119;
  HOLDREG20       = 120;

  ALARM1CHIP1     = 201;
  ALARM2CHIP1     = 202;
  ALARM1CHIP2     = 301;
  ALARM2CHIP2     = 302;
  ALARM1CHIP3     = 401;
  ALARM2CHIP3     = 402;
  ALARM1CHIP4     = 501;
  ALARM2CHIP4     = 502;

{ LS7266 Counter registers }
  COUNT1 = 601;
  COUNT2 = 602;
  COUNT3 = 603;
  COUNT4 = 604;

  PRESET1 = 701;
  PRESET2 = 702;
  PRESET3 = 703;
  PRESET4 = 704;

  PRESCALER1 = 801;
  PRESCALER2 = 802;
  PRESCALER3 = 803;
  PRESCALER4 = 804;

{  Counter Gate Control }
  NOGATE          = 0;
  AHLTCPREVCTR    = 1;
  AHLNEXTGATE     = 2;
  AHLPREVGATE     = 3;
  AHLGATE         = 4;
  ALLGATE         = 5;
  AHEGATE         = 6;
  ALEGATE         = 7;

{ 7266 Counter Quadrature values }
  NO_QUAD = 0;
  X1_QUAD = 1;
  X2_QUAD = 2;
  X4_QUAD = 4;

{ 7266 Counter Counting Modes }
  NORMAL_MODE = 0;
  RANGE_LIMIT = 1;
  NO_RECYCLE  = 2;
  MODULO_N    = 3;

{ 7266 Counter encodings }
  BCD_ENCODING    = 1;
  BINARY_ENCODING = 2;

{ 7266 Counter Index Modes }
  INDEX_DISABLED = 0;
  LOAD_CTR       = 1;
  LOAD_OUT_LATCH = 2;
  RESET_CTR      = 3;

{ 7266 Counter Flag Pins }
  CARRY_BORROW       = 1;
  COMPARE_BORROW     = 2;
  CARRYBORROW_UPDOWN = 3;
  INDEX_ERROR        = 4;

{ Counter status bits }
  C_UNDERFLOW = $0001;
  C_OVERFLOW  = $0002;
  C_COMPARE   = $0004;
  C_SIGN      = $0008;
  C_ERROR     = $0010;
  C_UP_DOWN   = $0020;
  C_INDEX     = $0040;



{ Types of triggers }
  TRIGABOVE       = 0;
  TRIGBELOW       = 1;
  GATENEGHYS      = 2;
  GATEPOSHYS      = 3;
  GATEABOVE       = 4;
  GATEBELOW       = 5;
  GATEINWINDOW    = 6;
  GATEOUTWINDOW   = 7;
  GATEHIGH        = 8;
  GATELOW         = 9;
  TRIGHIGH        = 10;
  TRIGLOW         = 11;
  TRIGPOSEDGE     = 12;
  TRIGNEGEDGE     = 13;

{ Types of configuration information }
  GLOBALINFO = 1;
  BOARDINFO = 2;
  DIGITALINFO = 3;
  CTRINFO = 4;
  EXPINFO = 5;
  MISCINFO = 6;


{ Types of global configuration information }
  GIVERSION = 36;
  GINUMBOARDS = 38;
  GINUMEXPBOARDS = 40;

{ Types of board configuration information }
  BIBASEADR = 0;
  BIBOARDTYPE = 1;
  BIINTLEVEL = 2;
  BIDMACHAN = 3;
  BIINITIALIZED = 4;
  BICLOCK = 5;
  BIRANGE = 6;
  BINUMADCHANS = 7;
  BIUSESEXPS = 8;
  BIDINUMDEVS = 9;
  BIDIDEVNUM = 10;
  BICINUMDEVS = 11;
  BICIDEVNUM = 12;
  BINUMDACHANS = 13;
  BIWAITSTATE = 14;
  BINUMIOPORTS = 15;
  BIPARENTBOARD = 16;
  BIDTBOARD = 17;

{ Types of digital device information }
  DIBASEADR = 0;
  DIINITIALIZED = 1;
  DIDEVTYPE = 2;
  DIMASK = 3;
  DIREADWRITE = 4;
  DICONFIG = 5;
  DINUMBITS = 6;
  DICURVAL = 7;

{ Types of counter device information }
  CIBASEADR = 0;
  CIINITIALIZED = 1;
  CICTRTYPE = 2;
  CICTRNUM = 3;
  CICONFIGBYTE = 4;

{ Types of expansion board information }
  XIBOARDTYPE = 0;
  XIMUXADCHAN1 = 1;
  XIMUXADCHAN2 = 2;
  XIRANGE1 = 3;
  XIRANGE2 = 4;
  XICJCCHAN = 5;
  XITHERMTYPE = 6;
  XINUMEXPCHANS = 7;
  XIPARENTBOARD = 8;
  XISPARE0 = 9;


var

cbLoadConfig : function(CfgFileName:Pansichar):Integer; stdcall;
cbSaveConfig : function(CfgFileName:Pansichar):Integer; stdcall;
cbAConvertData : function(BoardNum:Integer; NumPoints:Longint; var ADData:Word;
                         var ChanTags:Word):Integer; StdCall;
cbACalibrateData : function(BoardNum:Integer; var NumPoints:Longint;
                           Gain:Integer; var ADData:Word):Integer; StdCall;
cbAConvertPretrigData : function(BoardNum:Integer; PreTrigCount:Longint;
                                TotalCount:Longint; var ADData:Word;
                                var ChanTags:Word):Integer; StdCall;
cbAIn : function(BoardNum:Integer; Chan:Integer; Gain:Integer;
                var DataValue:Word):Integer; StdCall;
cbAInScan : function(BoardNum:Integer; LowChan:Integer; HighChan:Integer;
                    Count:Longint; var Rate:Longint; Gain:Integer;
                    MemHandle:Integer; Options:Integer):Integer; StdCall;
cbALoadQueue : function(BoardNum:Integer; var ChanArray:SmallInt;
                       var GainArray:SmallInt; NumChans:LongInt):Integer; StdCall;
cbAOut : function(BoardNum:Integer; Chan:Integer; Gain:Integer; DataValue:Word)
                 :Integer; StdCall;
cbAOutScan : function(BoardNum:Integer; LowChan:Integer; HighChan:Integer;
                     Count:Longint; var Rate:Longint; Gain:Integer;
                     MemHandle:Integer; Options:Integer):Integer; StdCall;
cbAPretrig : function(BoardNum:Integer; LowChan:Integer; HighChan:Integer;
                     var PreTrigCount:Longint; var TotalCount:Longint;
                     var Rate:Longint; Gain:Integer; MemHandle:Integer;
                     Options:Integer):Integer; StdCall;
cbATrig : function(BoardNum:Integer; Chan:Integer; TrigType:Integer;
                  TrigValue:Word; Gain:Integer; var DataValue:Word)
                  :Integer; StdCall;
cbC7266Config : function(BoardNum:Integer; CounterNum:Integer;
                        Quadrature:Integer; CountingMode:Integer;
                        DataEncoding:Integer; IndexMode:Integer;
                        InvertIndex:Integer; FlagPins:Integer;
                        GateEnable:Integer):Integer; StdCall;
cbC8254Config : function(BoardNum:Integer; CounterNum:Integer; Config:Integer)
                        :Integer; StdCall;
cbC9513Config : function(BoardNum:Integer; CounterNum:Integer;
                        GateControl:Integer; CounterEdge:Integer;
                        CountSource:Integer; SpecialGate:Integer;
                        Reload:Integer; RecycleMode:Integer;
                        BCDMode:Integer; CountDirection:Integer;
                        OutputControl:Integer):Integer; StdCall;
cbC8536Init : function(BoardNum:Integer; ChipNum:Integer; Ctr1Output:Integer)
                      :Integer; StdCall;
cbC8536Config : function(BoardNum:Integer; CounterNum:Integer;
                        OutputControl:Integer; RecycleMode:Integer;
                        Retrigger:Integer):Integer; StdCall;
cbC9513Init : function(BoardNum:Integer; ChipNum:Integer; FOutDivider:Integer;
                      FOutSource:Integer; Compare1:Integer; Compare2:Integer;
                      TimeOfDay:Integer):Integer; StdCall;
cbCFreqIn : function(BoardNum:Integer; SigSource:Integer; GateInterval:Integer;
                    var Count:Word; var Freq:Longint):Integer; StdCall;
cbCIn : function(BoardNum:Integer; CounterNum:Integer; var Count:Word)
                :Integer; StdCall;
cbCIn32 : function(BoardNum:Integer; CounterNum:Integer; var Count:Longint)
                :Integer; StdCall;
cbCLoad : function(BoardNum:Integer; RegNum:Integer; LoadValue:Word)
                  :Integer; StdCall;
cbCLoad32 : function(BoardNum:Integer; RegNum:Integer; LoadValue:Longint)
                  :Integer; StdCall;
cbCStoreOnInt : function(BoardNum:Integer; IntCount:Integer;
                        var CntrControl:SmallInt; MemHandle:Integer)
                        :Integer; StdCall;
cbCStatus : function(BoardNum:Integer; CounterNum:Integer; var StatusBits:Longint)
                    :Integer; StdCall;
cbDBitIn : function(BoardNum:Integer; PortType:Integer; BitNum:Integer;
                   var BitValue:SmallInt):Integer; StdCall;
cbDBitOut : function(BoardNum:Integer; PortType:Integer; BitNum:Integer;
                    BitValue:Integer):Integer; StdCall;
cbDConfigPort : function(Boardnum:Integer; PortNum:Integer; Direction:Integer)
                        :Integer; StdCall;
cbDeclareRevision : function(var RevNum:Single):Integer; StdCall;
cbDIn : function(BoardNum:Integer; PortNum:Integer; var DataValue:Word)
                :Integer; StdCall;
cbDInScan : function(BoardNum:Integer; PortNum:Integer; Count:Longint;
                    var Rate:Longint; MemHandle:Integer; Options:Integer)
                    :Integer; StdCall;
cbDOut : function(BoardNum:Integer; PortNum:Integer; DataValue:Word)
                 :Integer; StdCall;
cbDOutScan : function(BoardNum:Integer; PortNum:Integer; Count:Longint;
                     var Rate:Longint; MemHandle:Integer; Options:Integer)
                     :Integer; StdCall;
cbErrHandling : function(ErrReporting:Integer; ErrHandling:Integer)
                        :Integer; StdCall;
cbFileAInScan : function(BoardNum:Integer; LowChan:Integer; HighChan:Integer;
                        Count:Longint; var Rate:Longint; Gain:Integer;
                        FileName:Pansichar; Options:Integer):Integer; StdCall;
cbFileGetInfo : function(FileName:Pansichar; var LowChan:SmallInt;
                        var HighChan:SmallInt; var PreTrigCount:Longint;
                        var TotalCount:Longint; var Rate:Longint;
                        var Gain:LongInt):Integer; StdCall;
cbFilePretrig : function(BoardNum:Integer; LowChan:Integer; HighChan:Integer;
                        var PreTrigCount:Longint; var TotalCount:Longint;
                        var Rate:Longint; Gain:Integer;
                        FileName:Pansichar; Options:Integer):Integer; StdCall;
cbFileRead : function(FileName:Pansichar; FirstPoint:Longint; var NumPoints:Longint;
                     var DataBuffer:Word):Integer; StdCall;
cbGetErrMsg : function(ErrCode:Integer; ErrMsg:Pansichar):Integer; StdCall;
cbGetRevision : function(var DLLRevNum:Single; var VXDRevNum:Single)
                        :Integer; StdCall;
cbGetStatus : function(BoardNum:Integer; var Status:SmallInt;
                      var CurCount:Longint; var CurIndex:Longint)
                      :Integer; StdCall;
cbRS485 : function(BoardNum:Integer; Transmit:Integer; Receive:Integer)
                  :Integer; StdCall;
cbStopBackground : function(BoardNum:Integer):Integer; StdCall;
cbTIn : function(BoardNum:Integer; Chan:Integer; Scale:Integer;
                var TempValue:Single; Options:Integer):Integer; StdCall;
cbTInScan : function(BoardNum:Integer; LowChan:Integer; HighChan:Integer;
                    Scale:Integer; var DataBuffer:Single; Options:Integer)
                    :Integer; StdCall;
cbMemSetDTMode : function(BoardNum:Integer; Mode:Integer):Integer; StdCall;
cbMemReset : function(BoardNum:Integer):Integer; StdCall;
cbMemRead : function(BoardNum:Integer; var DataBuffer:Word; FirstPoint:Longint;
                    Count:Longint):Integer; StdCall;
cbMemWrite : function(BoardNum:Integer; var DataBuffer:Word; FirstPoint:Longint;
                     Count:Longint):Integer; StdCall;
cbMemReadPretrig : function(BoardNum:Integer; var DataBuffer:Word;
                           FirstPoint:Longint; Count:Longint):Integer; StdCall;
cbInByte : function(BoardNum:Integer; PortNum:Integer):Integer; StdCall;
cbOutByte : function(BoardNum:Integer; PortNum:Integer; PortVal:Integer)
                    :Integer; StdCall;
cbInWord : function(BoardNum:Integer; PortNum:Integer):Integer; StdCall;
cbOutWord : function(BoardNum:Integer; PortNum:Integer; PortVal:Integer)
                    :Integer; StdCall;

{cbGetConfig est diff�rente de la traduction originale dans laquelle ConfigVal
 �tait d�clar�e comme smallint }
cbGetConfig : function(InfoType:Integer; BoardNum:Integer; DevNum:Integer;
                      ConfigItem:Integer; var ConfigVal:integer)
                      :Integer; StdCall;
cbSetConfig : function(InfoType:Integer; BoardNum:Integer; DevNum:Integer;
                      ConfigItem:Integer; ConfigVal:Integer):Integer; StdCall;
cbToEngUnits : function(BoardNum:Integer; Range:Integer; DataVal:Word;
                       var EngUnits:Single):Integer; StdCall;
cbFromEngUnits : function(BoardNum:Integer; Range:Integer; EngUnits:Single;
                         var DataVal:Word):Integer; StdCall;
cbGetBoardName : function(BoardNum:Integer; BoardName:Pansichar):Integer; StdCall;
cbWinBufToArray : function(MemHandle:Integer; var ADData:Word;
                          FirstPoint:Longint; Count:Longint):Integer; StdCall;
cbWinArrayToBuf : function(var ADData:Word; MemHandle:Integer;
                          FirstPoint:Longint; Count:Longint):Integer; StdCall;
cbWinBufAlloc : function(NumPoints:Longint):Integer; StdCall;
cbWinBufFree : function(MemHandle:Integer):Integer; StdCall;
cbSetTrigger : function(BoardNum:Integer; TrigType:Integer; LowThreshold:Integer;
                       HighThreshold:Integer):Integer; StdCall;


function InitCBlib:boolean;

Implementation


const
  hh:integer=0;

function getProc(st:Ansistring):pointer;
begin
  result:=GetProcAddress(hh,Pansichar(st));
  {if result=nil then messageCentral(st+'=nil');}
  { cbMemSetDTMode renvoie NIL }
end;


function InitCBlib:boolean;
begin
  result:=true;
  if hh<>0 then exit;

  hh:=GloadLibrary('CBW32.DLL');
  result:=(hh<>0);

  if not result then exit;

  cbLoadConfig:=getProc('cbLoadConfig');
  cbSaveConfig:=getProc('cbSaveConfig');
  cbAConvertData:=getProc('cbAConvertData');
  cbACalibrateData:=getProc('cbACalibrateData');
  cbAConvertPretrigData:=getProc('cbAConvertPretrigData');
  cbAIn:=getProc('cbAIn');
  cbAInScan:=getProc('cbAInScan');
  cbALoadQueue:=getProc('cbALoadQueue');
  cbAOut:=getProc('cbAOut');
  cbAOutScan:=getProc('cbAOutScan');
  cbAPretrig:=getProc('cbAPretrig');
  cbATrig:=getProc('cbATrig');
  cbC7266Config:=getProc('cbC7266Config');
  cbC8254Config:=getProc('cbC8254Config');
  cbC9513Config:=getProc('cbC9513Config');
  cbC8536Init:=getProc('cbC8536Init');
  cbC8536Config:=getProc('cbC8536Config');
  cbC9513Init:=getProc('cbC9513Init');
  cbCFreqIn:=getProc('cbCFreqIn');
  cbCIn:=getProc('cbCIn');
  cbCIn32:=getProc('cbCIn32');
  cbCLoad:=getProc('cbCLoad');
  cbCLoad32:=getProc('cbCLoad32');
  cbCStatus:=getProc('cbCStatus');
  cbCStoreOnInt:=getProc('cbCStoreOnInt');
  cbDBitIn:=getProc('cbDBitIn');
  cbDBitOut:=getProc('cbDBitOut');
  cbDConfigPort:=getProc('cbDConfigPort');
  cbDeclareRevision:=getProc('cbDeclareRevision');
  cbDIn:=getProc('cbDIn');
  cbDInScan:=getProc('cbDInScan');
  cbDOut:=getProc('cbDOut');
  cbDOutScan:=getProc('cbDOutScan');
  cbErrHandling:=getProc('cbErrHandling');
  cbFileAInScan:=getProc('cbFileAInScan');
  cbFileGetInfo:=getProc('cbFileGetInfo');
  cbFilePretrig:=getProc('cbFilePretrig');
  cbFileRead:=getProc('cbFileRead');
  cbGetErrMsg:=getProc('cbGetErrMsg');
  cbGetStatus:=getProc('cbGetStatus');
  cbRS485:=getProc('cbRS485');
  cbStopBackground:=getProc('cbStopBackground');
  cbTIn:=getProc('cbTIn');
  cbTInScan:=getProc('cbTInScan');
  cbMemSetDTMode:=getProc('cbMemSetDTMode');
  cbMemReset:=getProc('cbMemReset');
  cbMemRead:=getProc('cbMemRead');
  cbMemWrite:=getProc('cbMemWrite');
  cbMemReadPretrig:=getProc('cbMemReadPretrig');
  cbInByte:=getProc('cbInByte');
  cbOutByte:=getProc('cbOutByte');
  cbInWord:=getProc('cbInWord');
  cbOutWord:=getProc('cbOutWord');
  cbGetConfig:=getProc('cbGetConfig');
  cbGetRevision:=getProc('cbGetRevision');
  cbSetConfig:=getProc('cbSetConfig');
  cbToEngUnits:=getProc('cbToEngUnits');
  cbFromEngUnits:=getProc('cbFromEngUnits');
  cbGetBoardName:=getProc('cbGetBoardName');
  cbWinBufToArray:=getProc('cbWinBufToArray');
  cbWinArrayToBuf:=getProc('cbWinArrayToBuf');
  cbWinBufAlloc:=getProc('cbWinBufAlloc');
  cbWinBufFree:=getProc('cbWinBufFree');
  cbSetTrigger:=getProc('cbSetTrigger');
end;

Initialization
AffDebug('Initialization Cbwgs512',0);

finalization
  if hh<>0 then freeLibrary(hh);
end.
