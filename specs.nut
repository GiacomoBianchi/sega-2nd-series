// Giacomo Bianchi 03/11/2018
//
// this class returns text.msg according to the list.name
// technical specifications are split in 12 different data each system
// if your system does not match any array element you can add it
// example of usage:
// specs( text_name, 12, "UPPERCASE" );

class specs {
	
	// lista array aggiornata al 18/10/2018
	
	p3do = [ "3do", "panasonic 3do" ];
	n3ds = [ "3ds", "nintendo 3ds" ];
	at2 = [ "atari2600", "atari 2600", "2600" ];
	at7 = [ "atari7800", "atari 7800", "7800" ];
	atj = [ "atarijaguar", "atari jaguar", "jaguar" ];
	atl = [ "atarilynx", "atari lynx", "lynx" ];
	col = [ "colecovision", "coleco vision" ];
	drc = [ "dreamcast", "dreamcast_cdi","sega dreamcast" ];
	fds = [ "fds", "nintendo fds", "nintendo famicom disk system", "famicom disk system" ];
	gg = [ "gamegear", "gg", "game gear", "sega gamegear" ];
	gb = [ "gb", "gameboy", "game boy" ];
	gba = [ "gba", "gameboy advance" ];
	gbc = [ "gbc", "gameboy color" ];
	gc = [ "gc", "gamecube", "nintendo gamecube" ];
	gen = [ "genesis", "sega genesis", "megadrive", "sega megadrive" ];
	sms = [ "mastersystem", "sms", "sega mastersystem" ];
	n64 = [ "n64", "nintendo 64" ];
	nds = [ "nds", "nintendo ds" ];
	aes = [ "neogeoaes", "aes", "neogeo aes", "neo geo aes" ];
	ncd = [ "neogeocd", "ncd", "neogeo cd", "neo geo cd" ];
	nes = [ "nes", "nintendo entertainment system" ];
	ngp = [ "ngp", "neogeo pocket", "neo geo pocket" ];
	ngpc = [ "ngpc", "neogeo pocket color", "neo geo pocket color" ];
	od2 = [ "odyseey2", "odyssey 2" ];
	pce = [ "pcengine", "pc engine", "turbografx-16", "turbografx" ];
	ps2 = [ "ps2", "playstation2", "playstation 2" ];
	ps3 = [ "ps3", "playstation3", "playstation 3" ];
	psp = [ "psp", "playstation portable" ];
	psx = [ "psx", "playstation", "sony playstation" ];
	sat = [ "saturn", "sega saturn" ];
	s32x = [ "sega32x", "32x", "sega 32x", "mega drive 32x", "sega mega drive 32x", "sega super 32x", "genesis 32x", "sega genesis 32x" ];
	scd = [ "segacd", "sega cd", "sega-cd", "sega megacd", "sega mega cd", "megacd", "mega-cd", "cdx" ];
	cd32x = [ "segacd32x", "sega-cd 32x" ];
	sg1 = [ "sg1000", "sg-1000", "sega sg-1000" ];
	snes = [ "snes", "super nintendo" ];
	vec = [ "vectrex" ];
	vrb = [ "virtualboy", "nintendo virtualboy" ];
	wii = [ "wii", "nintendo wii" ];
	wiiu = [ "wiiu", "nintendo wiiu" ];
	wsw = [ "wonderswan" ];
	wsc = [ "wonderswancolor", "wonderswan color" ];
	zxs = [ "zxspectrum" ];

	
	name = null;
	number = null;
	upper = null;
	
	
	constructor( text_name, specs_number, text_upper  )
	{
		name = text_name;
		number = specs_number;
		upper = text_upper;
		fe.add_transition_callback( this, "specs" );
	}
	
	
	function specs( ttype, var, ttime ) 
	{
		if ( ttype == Transition.ToNewList  ) {
			
			local system = fe.list.name.tolower();
			local text = null;
			
			switch ( number ) {
				case 1:		text = "System not found"; break;
				case 2:		text = "Manufacturer:   no data"; break;
				case 3:		text = "Generation:   no data"; break;
				case 4:		text = "Retail:   no data"; break;
				case 5:		text = "Units sold:   no data"; break;
				case 6:		text = "Media:   no data"; break;
				case 7:		text = "CPU:   no data"; break;
				case 8:		text = "GPU:   no data"; break;
				case 9:		text = "RAM:   no data"; break;
				case 10:	text = "Display:   no data"; break;
				case 11:	text = "Colors:   no data"; break;
				case 12:	text = "Sound:   no data"; break;	
			}
			if ( p3do.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "3DO"; break;
					case 2:		text = "Manufacturer: The 3DO Company"; break;
					case 3:		text = "Generation: 5th"; break;
					case 4:		text = "Retail: 1993-1996"; break;
					case 5:		text = "Units sold: 2 million worldwide"; break;
					case 6:		text = "Media: CD-ROM (2x 300KB/s)"; break;
					case 7:		text = "CPU: 32-bit Risc ARM60 @12.5MHz"; break;
					case 8:		text = "GPU: Clio, Madam"; break;
					case 9:		text = "RAM: 2MB work ram, 1MB VRAM"; break;
					case 10:	text = "Display: 320x240 60Hz NTSC, 384x288 50Hz PAL"; break;
					case 11:	text = "Colors: 24-bit color depth"; break;
					case 12:	text = "Sound: 16-bit stereo"; break;	
				}
			}
			else if ( n3ds.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "3DS"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 8th"; break;
					case 4:		text = "Retail: 2011-Present"; break;
					case 5:		text = "Units sold: 72 million worldwide"; break;
					case 6:		text = "Media: Nintendo 3DS Game Card (1GB to 4GB)"; break;
					case 7:		text = "CPU: 2x 32-bit ARM11 45nm @268MHz, ARM9 60nm backward comp."; break;
					case 8:		text = "GPU: PICA200 65nm @268MHz"; break;
					case 9:		text = "RAM: 128MB FCRAM main, 6MB VRAM"; break;
					case 10:	text = "Display: autostereoscopic LCD 800x240, touchscreen 320×240"; break;
					case 11:	text = "Colors: 24-bit color depth"; break;
					case 12:	text = "Sound: Stereo speakers, microphone"; break;
				}
			}
			else if ( at2.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Atari 2600 / VCS"; break;
					case 2:		text = "Manufacturer: Atari Inc."; break;
					case 3:		text = "Generation: 2nd"; break;
					case 4:		text = "Retail: 1977-1992"; break;
					case 5:		text = "Units sold: 30 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (4KB to 32KB)"; break;
					case 7:		text = "CPU: 8-bit MOS Technology 6507 @1.19MHz"; break;
					case 8:		text = "GPU: ---"; break;
					case 9:		text = "RAM: 128 bytes work ram"; break;
					case 10:	text = "Display: 160x192 pixel"; break;
					case 11:	text = "Colors: 128 color palette on screen"; break;
					case 12:	text = "Sound: 2 channels mono"; break;
				}
			}
			else if ( at7.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Atari 7800 Prosystem"; break;
					case 2:		text = "Manufacturer: Atari Inc."; break;
					case 3:		text = "Generation: 3rd"; break;
					case 4:		text = "Retail: 1986-1992"; break;
					case 5:		text = "Units sold: 3.7 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (4KB to 48KB)"; break;
					case 7:		text = "CPU: 8-bit Sally MOS Technology 6502 @1.79MHz"; break;
					case 8:		text = "GPU: GCC Maria chip @7.16MHz"; break;
					case 9:		text = "RAM: 4KB, 4KB rom bios"; break;
					case 10:	text = "Display: 160x240, 320x240 pixel"; break;
					case 11:	text = "Colors: 256 color palette, 25 on screen"; break;
					case 12:	text = "Sound: 2 channels mono"; break;
				}
			}
			else if ( atj.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Atari Jaguar"; break;
					case 2:		text = "Manufacturer: Atari Corporation"; break;
					case 3:		text = "Generation: 5th"; break;
					case 4:		text = "Retail: 1993-1996"; break;
					case 5:		text = "Units sold: 250,000 worldwide worldwide"; break;
					case 6:		text = "Media: ROM cartridge (up to 6MB), CD-ROM"; break;
					case 7:		text = "CPU: 32-bit Tom chip @26.59MHz"; break;
					case 8:		text = "GPU: 32-bit Jerry chip @26.59MHz"; break;
					case 9:		text = "RAM: 2MB"; break;
					case 10:	text = "Display: 320x240, 480i, 576i"; break;
					case 11:	text = "Colors: 24-bit true color"; break;
					case 12:	text = "Sound: 16-bit CD quality sound"; break;
				}
			}
			else if ( atl.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Atari Lynx"; break;
					case 2:		text = "Manufacturer: Atari Corporation"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1989-1995"; break;
					case 5:		text = "Units sold: 3 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (128KB to 512KB), CD-ROM"; break;
					case 7:		text = "CPU: 8-bit WDC 65SC02 @4MHz"; break;
					case 8:		text = "GPU: 16-bit Mikey @16MHz"; break;
					case 9:		text = "RAM: 64KB DRAM"; break;
					case 10:	text = "Display: LCD 3.5 160x102 pixel"; break;
					case 11:	text = "Colors: 4096 color palette, 16 on screen"; break;
					case 12:	text = "Sound: 4 channels mono"; break;
				}
			}
			else if ( col.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "ColecoVision"; break;
					case 2:		text = "Manufacturer: Coleco"; break;
					case 3:		text = "Generation: 2nd"; break;
					case 4:		text = "Retail: 1982-1985"; break;
					case 5:		text = "Units sold: 2 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (8KB to 32KB)"; break;
					case 7:		text = "CPU: 8-bit NEC D780C-1 @3.58MHz"; break;
					case 8:		text = "GPU: Texas Instruments TMS9928A"; break;
					case 9:		text = "RAM: 1KB work ram, 16KB vram"; break;
					case 10:	text = "Display: 256x192 pixel"; break;
					case 11:	text = "Colors: 16 colors palette on screen"; break;
					case 12:	text = "Sound: Mono"; break;
				}
			}
			else if ( drc.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Dreamcast"; break;
					case 2:		text = "Manufacturer: Sega"; break;
					case 3:		text = "Generation: 6th"; break;
					case 4:		text = "Retail: 1998-2001"; break;
					case 5:		text = "Units sold: 9 million worldwide"; break;
					case 6:		text = "Media: GD-ROM (1 GB) @12x"; break;
					case 7:		text = "CPU: 64-bit Hitachi SH-4 0.35µm @200MHz"; break;
					case 8:		text = "GPU: 64-bit NEC PowerVR2 @100MHz"; break;
					case 9:		text = "RAM: 16 MB main, 8MB VRAM, 2 MB Audio"; break;
					case 10:	text = "Display: 800x608 to 320x240 60Hz NTSC 50Hz PAL"; break;
					case 11:	text = "Colors: 16.77 million colors palette on screen"; break;
					case 12:	text = "Sound: 16-bit Yamaha AICA PCM a 64 channel stereo"; break;
				}
			}
			else if ( fds.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Famicom Disk System"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 3rd"; break;
					case 4:		text = "Retail: 1986-2003"; break;
					case 5:		text = "Units sold: 4.5 million worldwide"; break;
					case 6:		text = "Media: Disk Card (Floppy Disk 128KB)"; break;
					case 7:		text = "CPU: 8-bit Ricoh 2A03 8µm @1,79MHz"; break;
					case 8:		text = "GPU: ---"; break;
					case 9:		text = "RAM: 32KB main, 8KB VRAM"; break;
					case 10:	text = "Display: 256x224 60Hz NTSC, 256x224 50Hz PAL"; break;
					case 11:	text = "Colors: 52 colors palette, 24 on screen"; break;
					case 12:	text = "Sound: FM synthesis chip"; break;
				}
			}
			else if ( gg.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Game Gear"; break;
					case 2:		text = "Manufacturer: Sega"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1990-1996"; break;
					case 5:		text = "Units sold: 10.6 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (128KB to 1MB)"; break;
					case 7:		text = "CPU: 8-bit Zilog Z80 @3.5MHz"; break;
					case 8:		text = "GPU: ---"; break;
					case 9:		text = "RAM: 8KB main, 16KB VRAM"; break;
					case 10:	text = "Display: LCD 160x145 pixels 3.2 inches"; break;
					case 11:	text = "Colors: 4096 colors palette 32 colors on screen"; break;
					case 12:	text = "Sound: Texas Instruments SN76489 Mono speaker"; break;
				}
			}
			else if ( gb.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Game Boy"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1989-2003"; break;
					case 5:		text = "Units sold: 118 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (32KB to 1MB)"; break;
					case 7:		text = "CPU: 8-bit Sharp LR35902 @4.19MHz"; break;
					case 8:		text = "GPU: ---"; break;
					case 9:		text = "RAM: 8KB main, 8KB VRAM"; break;
					case 10:	text = "Display: STN LCD 160x144 pixels 47x43mm."; break;
					case 11:	text = "Colors: 2-bit (4 shades of gray)"; break;
					case 12:	text = "Sound: One speaker, headphones stereo"; break;
				}
			}
			else if ( gba.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Game Boy Advance"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 6th"; break;
					case 4:		text = "Retail: 2001-2010"; break;
					case 5:		text = "Units sold: 81.5 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (4MB to 32MB)"; break;
					case 7:		text = "CPU: 32-bit ARM7TDMI 90nm @16.78MHz"; break;
					case 8:		text = "CPU2: 8MHz 8-bit Z80 backward compatibility"; break;
					case 9:		text = "RAM: 32KB main, 96KB VRAM, 256KB DRAM"; break;
					case 10:	text = "Display: TFT LCD 240x160 pixels 40.8x61.2mm."; break;
					case 11:	text = "Colors: 32,768 palette 512 colors on screen"; break;
					case 12:	text = "Sound: Dual 8-bit DAC for stereo sound"; break;
				}
			}
			else if ( gbc.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Game Boy Color"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 5th"; break;
					case 4:		text = "Retail: 1998-2003"; break;
					case 5:		text = "Units sold: 118 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (32KB to 8MB)"; break;
					case 7:		text = "CPU: 8-bit Sharp Corporation LR35902 @ 8.388MHz"; break;
					case 8:		text = "GPU: ---"; break;
					case 9:		text = "RAM: 32KB main, 16KB VRAM"; break;
					case 10:	text = "Display: LCD 160x144 pixels 44x40mm. "; break;
					case 11:	text = "Colors: 32,768 palette 56 colors on screen"; break;
					case 12:	text = "Sound: mono speaker, headphones stereo"; break;
				}
			}
			else if ( gc.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Gamecube"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 6th"; break;
					case 4:		text = "Retail: 2000-2007"; break;
					case 5:		text = "Units sold: 21 million worldwide"; break;
					case 6:		text = "Media: Nintendo Optical Disc (8cm 1.5 GB)"; break;
					case 7:		text = "CPU: 64-bit IBM PowerPC Gekko 180nm @485 MHz"; break;
					case 8:		text = "GPU: 64-bit ATI Flipper 120nm @162MHz"; break;
					case 9:		text = "RAM: 24MB RAM main, 16MB SDRAM, 3MB SRAM-embedded"; break;
					case 10:	text = "Display: 640x480p 60Hz NTSC, 768×576i 50Hz PAL"; break;
					case 11:	text = "Colors: 24-bit RGB, 32-bit RGBA"; break;
					case 12:	text = "Sound: 16-bit Macronix DSP stereo"; break;
				}
			}
			else if ( gen.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Sega Genesis / Mega Drive"; break;
					case 2:		text = "Manufacturer: Sega"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1988-1997"; break;
					case 5:		text = "Units sold: 30 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (512KB to 8MB)"; break;
					case 7:		text = "CPU: 16-bit Motorola 68000 3µm @7.67MHz"; break;
					case 8:		text = "GPU: 16-bit Sega 315-5313 VDP @13.4MHz"; break;
					case 9:		text = "RAM: 64KB main, 64KB VRAM, 8KB Audio"; break;
					case 10:	text = "Display: 320x224 60Hz NTSC, 320x240 50Hz PAL"; break;
					case 11:	text = "Colors: 512 colors palette, 64 on screen"; break;
					case 12:	text = "Sound: 8-bit Yamaha YM2612 6 channel stereo"; break;
				}
			}
			else if ( sms.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Sega Mastersystem / Sega Mark III"; break;
					case 2:		text = "Manufacturer: Sega"; break;
					case 3:		text = "Generation: 3rd"; break;
					case 4:		text = "Retail: 1985-1996"; break;
					case 5:		text = "Units sold: 13 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (8KB to 4MB)"; break;
					case 7:		text = "CPU: 8-bit Zilog Z80A 5µm @4.57MHz"; break;
					case 8:		text = "GPU: 16-bit Sega VDP @10MHz"; break;
					case 9:		text = "RAM: 8KB main, 16KB VRAM"; break;
					case 10:	text = "Display: 256x192 60Hz NTSC, 50Hz PAL"; break;
					case 11:	text = "Colors: 64 colors palette, 32 on screen"; break;
					case 12:	text = "Sound: 8-bit Sega PSG 4 channel mono"; break;
				}
			}
			else if ( n64.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Nintendo 64"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 5th"; break;
					case 4:		text = "Retail: 1996-2003"; break;
					case 5:		text = "Units sold: 33 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (16MB to 64MB)"; break;
					case 7:		text = "CPU: 64-bit NEC VR4300 0.35µm @93.75MHz"; break;
					case 8:		text = "GPU: 64-bit SGI RCP @62.5MHz"; break;
					case 9:		text = "RAM: 4MB RDRAM + 4MB Expansion Pak"; break;
					case 10:	text = "Display: 640x480 320x240 60Hz NTSC 50Hz PAL"; break;
					case 11:	text = "Colors: 16.8 million colors palette, 32768 on screen"; break;
					case 12:	text = "Sound: 64-bit DSP 100 channel stereo"; break;
				}
			}
			else if ( nds.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Nintendo DS"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 7th"; break;
					case 4:		text = "Retail: 2004-2014"; break;
					case 5:		text = "Units sold: 154 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (8MB to 512MB)"; break;
					case 7:		text = "CPU: 32-bit ARM946E-S 90nm @67MHz"; break;
					case 8:		text = "CPU2: 32-bit ARM7TDMI 90nm @33MHz"; break;
					case 9:		text = "RAM: 4MB PSRAM"; break;
					case 10:	text = "Display: 2x TFT LCD 256x192 pixels 62.8x46mm."; break;
					case 11:	text = "Colors: 262,144 colors"; break;
					case 12:	text = "Sound: Stereo speakers"; break;
				}
			}
			else if ( aes.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Neo Geo AES"; break;
					case 2:		text = "Manufacturer: SNK"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1990-2004"; break;
					case 5:		text = "Units sold: 1 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (110 to 330 megabits)"; break;
					case 7:		text = "CPU: 16-bit Motorola 68000 3µm @12MHz"; break;
					case 8:		text = "GPU: 24-bit SNK LSPC2-A2 @24MHz"; break;
					case 9:		text = "RAM: 64KB main, 84KB VRAM, 2KB Audio"; break;
					case 10:	text = "Display: 320x224 60Hz NTSC, 320x240 50Hz PAL"; break;
					case 11:	text = "Colors: 65536 colors palette, 4096 on screen"; break;
					case 12:	text = "Sound: 8-bit Yamaha YM2610 15 channel stereo"; break;
				}
			}
			else if ( ncd.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Neo Geo CD"; break;
					case 2:		text = "Manufacturer: SNK"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1994-1997"; break;
					case 5:		text = "Units sold: 570,000 worldwide"; break;
					case 6:		text = "Media: CD-ROM (700MB) @1x 150KB/s"; break;
					case 7:		text = "CPU: 16-bit Motorola 68000 3µm @12MHz"; break;
					case 8:		text = "GPU: 24-bit SNK LSPC2-A2 @24MHz"; break;
					case 9:		text = "RAM: 2MB DRAM main, 4MB VRAM, 1 MB Audio"; break;
					case 10:	text = "Display: 320x224 60Hz NTSC, 320x240 50Hz PAL"; break;
					case 11:	text = "Colors: 65536 colors palette, 4096 on screen"; break;
					case 12:	text = "Sound: 8-bit Yamaha YM2610 15 channel stereo"; break;
				}
			}
			else if ( nes.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Nintendo Entertainment System"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 3rd"; break;
					case 4:		text = "Retail: 1983-1995"; break;
					case 5:		text = "Units sold: 62 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (16KB to 500KB)"; break;
					case 7:		text = "CPU: 8-bit Ricoh 2A03/2A07 8µm @1,79MHz"; break;
					case 8:		text = "GPU: 8-bit RP2C02/RP2C07 @5,37MHz"; break;
					case 9:		text = "RAM: 2KB main, 2KB VRAM, 64KB Audio"; break;
					case 10:	text = "Display: 256x224 60Hz NTSC, 256x224 50Hz PAL"; break;
					case 11:	text = "Colors: 52 colors palette, 24 on screen"; break;
					case 12:	text = "Sound: 5 channel mono"; break;
				}
			}
			else if ( ngp.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Neo Geo Pocket"; break;
					case 2:		text = "Manufacturer: SNK"; break;
					case 3:		text = "Generation: 5th"; break;
					case 4:		text = "Retail: 1998-1999"; break;
					case 5:		text = "Units sold: 2 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (64KB to 256KB)"; break;
					case 7:		text = "CPU: 16-bit Toshiba TLCS-900h @6.144MHz"; break;
					case 8:		text = "GPU: 8-bit Z80 for sound @3.072MHz"; break;
					case 9:		text = "RAM: 12KB for core processor, 4KB for Z80 processor"; break;
					case 10:	text = "Display: Monochrome LCD 160x152 pixel"; break;
					case 11:	text = "Colors: 48 palettes, 8 colors on screen"; break;
					case 12:	text = "Sound: 12 bit DAC & 6 psg tone simultaneous output"; break;
				}
			}
			else if ( ngpc.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Neo Geo Pocket Color"; break;
					case 2:		text = "Manufacturer: SNK"; break;
					case 3:		text = "Generation: 6th"; break;
					case 4:		text = "Retail: 1999-2001"; break;
					case 5:		text = "Units sold: 2 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (64KB to 512KB)"; break;
					case 7:		text = "CPU: 16-bit Toshiba TLCS-900h @6.144MHz"; break;
					case 8:		text = "GPU: 8-bit Z80 for sound @3.072MHz"; break;
					case 9:		text = "RAM: 12KB for core processor, 4KB for Z80 processor"; break;
					case 10:	text = "Display: LCD 2.7 160x152 pixel"; break;
					case 11:	text = "Colors: 4096 palette, 146 colors on screen"; break;
					case 12:	text = "Sound: PSG 6 tone simultaneous output, stereo sound"; break;
				}
			}
			else if ( od2.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Magnavox odyssey2 / Philips Videopac G7000"; break;
					case 2:		text = "Manufacturer: Magnavox, Philips"; break;
					case 3:		text = "Generation: 2nd"; break;
					case 4:		text = "Retail: 1978-1984"; break;
					case 5:		text = "Units sold: 2 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (2KB to 8KB)"; break;
					case 7:		text = "CPU: 8-bit Intel 8048 @1.79MHz"; break;
					case 8:		text = "GPU: Intel 8244 for audio and video"; break;
					case 9:		text = "RAM: 64 bytes main ram, 128 bytes audio/video ram"; break;
					case 10:	text = "Display: 160x200 pixel"; break;
					case 11:	text = "Colors: 16 color palette, 8 on screen"; break;
					case 12:	text = "Sound: Mono"; break;
				}
			}
			else if ( pce.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "PC Engine / TurbograFX-16"; break;
					case 2:		text = "Manufacturer: NEC, Hudson Soft"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1989-1994"; break;
					case 5:		text = "Units sold: 5.8 million worldwide"; break;
					case 6:		text = "Media: HUcard (2MB to 20KB), CD-ROM"; break;
					case 7:		text = "CPU: 8-bit Hudson Soft HUC6280 @7.16MHz"; break;
					case 8:		text = "GPU: 16-bit HUC6260, 16-bit HUC6270A"; break;
					case 9:		text = "RAM: 8KB work ram, 64KB VRAM"; break;
					case 10:	text = "Display: 256x239, 565x242 pixel"; break;
					case 11:	text = "Colors: 512 color palette, 482 colors on screen"; break;
					case 12:	text = "Sound: CD-DA sound"; break;
				}
			}
			else if ( ps2.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Playstation 2"; break;
					case 2:		text = "Manufacturer: Sony"; break;
					case 3:		text = "Generation: 6th"; break;
					case 4:		text = "Retail: 2000-2012"; break;
					case 5:		text = "Units sold: 157 million worldwide"; break;
					case 6:		text = "Media: DVD-ROM 8.54GB @4x, CD-ROM 700MB @24x"; break;
					case 7:		text = "CPU: 64-bit Emotion Engine-64 250nm @299MHz"; break;
					case 8:		text = "GPU: 64-bit Graphic Synthetizer 279nm @147MHz"; break;
					case 9:		text = "RAM: 32MB RDRAM PC800 @400MHz main, 2MB Audio"; break;
					case 10:	text = "Display: 480i 480p 576p 720p 1080i"; break;
					case 11:	text = "Colors: 32-bit RGBA color depth"; break;
					case 12:	text = "Sound: Dolby Digital 5.1 Surround, DTS"; break;
				}
			}
			else if ( ps3.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Playstation 3"; break;
					case 2:		text = "Manufacturer: Sony"; break;
					case 3:		text = "Generation: 7th"; break;
					case 4:		text = "Retail: 2005-2017"; break;
					case 5:		text = "Units sold: 87 million worldwide"; break;
					case 6:		text = "Media: Blu-ray Disc @2x, DVD-ROM @8x, CD-ROM @24x"; break;
					case 7:		text = "CPU: 64-bit Cell Engine-64 90nm @299MHz"; break;
					case 8:		text = "GPU: 64-bit Reality Synthetizer 90nm @550MHz"; break;
					case 9:		text = "RAM: 256MB XDR RAM @3.2GHz main, 256MB GDDR3 VRAM @700MHz"; break;
					case 10:	text = "Display: 480p to 1080p"; break;
					case 11:	text = "Colors: 24-bit color depth"; break;
					case 12:	text = "Sound: Dolby Digital 5.1, Dolby TrueHD, DTS-HD"; break;
				}
			}
			else if ( psp.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Playstation Portable"; break;
					case 2:		text = "Manufacturer: Sony"; break;
					case 3:		text = "Generation: 7th"; break;
					case 4:		text = "Retail: 2004-2014"; break;
					case 5:		text = "Units sold: 80 million worldwide"; break;
					case 6:		text = "Media: UMD (1.8GB), Memory Stick (32GB)"; break;
					case 7:		text = "CPU: 32-bit Allegrex MIPS R4000 @333MHz"; break;
					case 8:		text = "GPU: 32-bit Sony CXD2962GG @166MHz"; break;
					case 9:		text = "RAM: 32MB 333MHz SDRAM, 2MB DRAM VRAM"; break;
					case 10:	text = "Display: TFT LCD 480x272 pixel"; break;
					case 11:	text = "Colors: 24-bit color depth"; break;
					case 12:	text = "Sound: Stereo speakers, microphone"; break;
				}
			}
			else if ( psx.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Playstation"; break;
					case 2:		text = "Manufacturer: Sony"; break;
					case 3:		text = "Generation: 5th"; break;
					case 4:		text = "Retail: 1995-2006"; break;
					case 5:		text = "Units sold: 102 million worldwide"; break;
					case 6:		text = "Media: CD-ROM (660MB) @2x 300KB/s"; break;
					case 7:		text = "CPU: 32-bit RISC 0.6µm @33.86MHz"; break;
					case 8:		text = "GPU: 32-bit GTE @53.69MHz"; break;
					case 9:		text = "RAM: 2MB main, 1MB VRAM, 512 KB Audio"; break;
					case 10:	text = "Display: 640x480 256x224 60Hz NTSC 50Hz PAL"; break;
					case 11:	text = "Colors: 16.7 million colors palette 57344 on screen"; break;
					case 12:	text = "Sound: 16-bit 24 channel ADPCM"; break;
				}
			}
			else if ( sat.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Sega Saturn"; break;
					case 2:		text = "Manufacturer: Sega"; break;
					case 3:		text = "Generation: 5th"; break;
					case 4:		text = "Retail: 1994-2000"; break;
					case 5:		text = "Units sold: 9 million worldwide"; break;
					case 6:		text = "Media: CD-ROM (4MB to 8MB) @2x 300kB/s"; break;
					case 7:		text = "CPU: 32-bit 2x Hitachi SH-2 0.8µm @28.63MHz"; break;
					case 8:		text = "GPU: 32-bit 2x VDP @28.63MHz"; break;
					case 9:		text = "RAM: 2MB main, 1.5MB VRAM, 512KB Audio"; break;
					case 10:	text = "Display: 704x480 to 320x224 60Hz NTSC 50Hz PAL"; break;
					case 11:	text = "Colors: 16.77 million colors palette on screen"; break;
					case 12:	text = "Sound: 16-bit Yamaha FH1 32 channel stereo"; break;
				}
			}
			else if ( s32x.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Sega 32x"; break;
					case 2:		text = "Manufacturer: Sega"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1994-1995"; break;
					case 5:		text = "Units sold: 665,000 worldwide"; break;
					case 6:		text = "Media: ROM cartridge (4MB to 8MB)"; break;
					case 7:		text = "CPU: 32-bit 2x Hitachi SH-2 0.8µm @23MHz"; break;
					case 8:		text = "GPU: 32-bit Sega VDP @23MHz"; break;
					case 9:		text = "RAM: 256KB SDRAM main, 256KB DRAM VRAM"; break;
					case 10:	text = "Display: 320x240 60Hz NTSC 50Hz PAL"; break;
					case 11:	text = "Colors: 32768 colors palette, 32768 on screen"; break;
					case 12:	text = "Sound: 11-bit QSound PWM +2 channel stereo"; break;
				}
			}
			else if ( scd.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Sega CD / Sega Mega-CD"; break;
					case 2:		text = "Manufacturer: Sega"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1991-1996"; break;
					case 5:		text = "Units sold: 2.2 million worldwide"; break;
					case 6:		text = "Media: CD-ROM (500MB) @1x 150KB/s"; break;
					case 7:		text = "CPU: 16-bit Motorola 68000 3µm @12.5MHz"; break;
					case 8:		text = "GPU: 16-bit Sega 315-5548 VDP @6.25MHz"; break;
					case 9:		text = "RAM: 512KB main, 256KB VRAM, 64KB Audio"; break;
					case 10:	text = "Display: 320x224 60Hz NTSC, 320x240 50Hz PAL"; break;
					case 11:	text = "Colors: 512 colors palette, 64 on screen"; break;
					case 12:	text = "Sound: 8-bit Ricoh RF5C164 2 channel stereo"; break;
				}
			}
			else if ( cd32x.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Sega CD 32X / Sega Mega-CD 32X"; break;
					case 2:		text = "Manufacturer: Sega"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1994-1996"; break;
					case 5:		text = "Units sold: less than 665,000 worldwide"; break;
					case 6:		text = "Media: CD-ROM (500MB) @1x 150KB/s"; break;
					case 7:		text = "CPU: 32-bit 2x Hitachi SH-2 0.8µm @23MHz"; break;
					case 8:		text = "GPU: 32-bit Sega VDP @23MHz"; break;
					case 9:		text = "RAM: 512KB main, 256KB VRAM, 64KB Audio"; break;
					case 10:	text = "Display: 320x240 60Hz NTSC 50Hz PAL"; break;
					case 11:	text = "Colors: 32,768 colors palette, 32768 on screen"; break;
					case 12:	text = "Sound: 11-bit QSound PWM +2 channel stereo"; break;
				}
			}
			else if ( sg1.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Sega SG-1000"; break;
					case 2:		text = "Manufacturer: Sega"; break;
					case 3:		text = "Generation: 3rd"; break;
					case 4:		text = "Retail: 1983-1985"; break;
					case 5:		text = "Units sold: 2 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (up to 128KB)"; break;
					case 7:		text = "CPU: 8-bit Zilog Z80A 5µm @3.58MHz"; break;
					case 8:		text = "GPU: 8-bit Texas Instruments TMS9918A @10MHz"; break;
					case 9:		text = "RAM: 1KB main, 16KB VRAM"; break;
					case 10:	text = "Display: 256x192 60Hz NTSC, 50Hz PAL"; break;
					case 11:	text = "Colors: 16 colors palette all on screen"; break;
					case 12:	text = "Sound: Texas Instruments SN76489A 4 channel mono"; break;
				}
			}
			else if ( snes.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Super Nintendo Entertainment System"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 4th"; break;
					case 4:		text = "Retail: 1990-2003"; break;
					case 5:		text = "Units sold: 49 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (250KB to 6MB)"; break;
					case 7:		text = "CPU: 16-bit Ricoh 5A22 @21MHz"; break;
					case 8:		text = "GPU: 16-bit Sega 315-5313 VDP @3.58MHz"; break;
					case 9:		text = "RAM: 128KB main, 64KB VRAM, 64KB Audio"; break;
					case 10:	text = "Display: 256x224 60Hz NTSC, 50Hz PAL"; break;
					case 11:	text = "Colors: 32,768 colors palette, 256 on screen"; break;
					case 12:	text = "Sound: 8-bit Sony SPC700, 8 channel stereo"; break;
				}
			}
			else if ( vec.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Vectrex"; break;
					case 2:		text = "Manufacturer: General Consumer Electronics"; break;
					case 3:		text = "Generation: 2nd"; break;
					case 4:		text = "Retail: 1982-1984"; break;
					case 5:		text = "Units sold: Unknown"; break;
					case 6:		text = "Media: ROM cartridge (32KB)"; break;
					case 7:		text = "CPU: 8-bit Motorola MC6809 @1.5MHz"; break;
					case 8:		text = "GPU: ---"; break;
					case 9:		text = "RAM: 1KB work ram"; break;
					case 10:	text = "Display: CRT 9x11inch 330x410 pixel"; break;
					case 11:	text = "Colors: Monocrome"; break;
					case 12:	text = "Sound: 3 channel mono"; break;
				}
			}
			else if ( vrb.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Virtualboy"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 5th"; break;
					case 4:		text = "Retail: 1965-1996"; break;
					case 5:		text = "Units sold: 770,000 worldwide"; break;
					case 6:		text = "Media: ROM cartridge (500KB to 2MB)"; break;
					case 7:		text = "CPU: 32-bit NEC V810 @20MHz"; break;
					case 8:		text = "GPU: ---"; break;
					case 9:		text = "RAM: 64KB WRAM, 128KB DRAM, 128KB VRAM"; break;
					case 10:	text = "Display: monochromatic red LED display 384x224 pixel"; break;
					case 11:	text = "Colors: 4 shades per 4-pixel column"; break;
					case 12:	text = "Sound: 10-bit stereo output"; break;
				}
			}
			else if ( wii.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Wii"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 7th"; break;
					case 4:		text = "Retail: 2006-2013"; break;
					case 5:		text = "Units sold: 101 million worldwide"; break;
					case 6:		text = "Media: Nintendo Optical Disc (12cm 8.54GB)"; break;
					case 7:		text = "CPU: 64-bit IBM Broadway 90nm @729MHz"; break;
					case 8:		text = "GPU: 64-bit ATI Hollywood 90nm @243MHz"; break;
					case 9:		text = "RAM: 24MB RAM main, 64MB GDDR3 SDRAM, 3MB embedded"; break;
					case 10:	text = "Display: 480p 60Hz NTSC, 576i 50Hz PAL"; break;
					case 11:	text = "Colors: 32-bit RGBA color depth"; break;
					case 12:	text = "Sound: DSP Stereo, Dolby Pro Logic II"; break;
				}
			}
			else if ( wiiu.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "WiiU"; break;
					case 2:		text = "Manufacturer: Nintendo"; break;
					case 3:		text = "Generation: 8th"; break;
					case 4:		text = "Retail: 2012-2017"; break;
					case 5:		text = "Units sold: 13 million worldwide"; break;
					case 6:		text = "Media: Nintendo Optical Disc (12cm 25GB)"; break;
					case 7:		text = "CPU: 64-bit IBM PowerPC 750 45nm @1.24GHz"; break;
					case 8:		text = "GPU: 64-bit AMD Latte 40nm @800MHz"; break;
					case 9:		text = "RAM: 2GB DDR3L RAM main, 32MB eDRAM"; break;
					case 10:	text = "Display: 1080p to 480p"; break;
					case 11:	text = "Colors: 32-bit RGBA color depth"; break;
					case 12:	text = "Sound: Six-channel 5.1 linear PCM surround or stereo"; break;
				}
			}
			else if ( wsw.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Wonderswan"; break;
					case 2:		text = "Manufacturer: Bandai"; break;
					case 3:		text = "Generation: 5th"; break;
					case 4:		text = "Retail: 1999-2003"; break;
					case 5:		text = "Units sold: 1.55 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (64KB to 512KB)"; break;
					case 7:		text = "CPU: 16-bit NEC V30 MZ @3.072MHz"; break;
					case 8:		text = "GPU: ---"; break;
					case 9:		text = "RAM: 512kbit shared WRAM/VRAM"; break;
					case 10:	text = "Display: LCD 224x144 pixels 2.49 inches"; break;
					case 11:	text = "Colors: 8 shades of gray"; break;
					case 12:	text = "Sound: 4 PCM channels, 4-bit sounds"; break;
				}
			}
			else if ( wsc.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "Wonderswan Color"; break;
					case 2:		text = "Manufacturer: Bandai"; break;
					case 3:		text = "Generation: 5th"; break;
					case 4:		text = "Retail: 2000-2003"; break;
					case 5:		text = "Units sold: 1.1 million worldwide"; break;
					case 6:		text = "Media: ROM cartridge (128KB to 1MB)"; break;
					case 7:		text = "CPU: 16-bit NEC V30 MZ @3.072MHz"; break;
					case 8:		text = "GPU: ---"; break;
					case 9:		text = "RAM: 512kbit shared WRAM/VRAM"; break;
					case 10:	text = "Display: FSTN reflective LCD 224x144 pixels 2.9in"; break;
					case 11:	text = "Colors: 4096 palette, 241 colors on screen"; break;
					case 12:	text = "Sound: 4 PCM channels, 4-bit sounds"; break;
				}
			}
			else if ( zxs.find(system) > -1 ) {
				switch ( number ) {
					case 1:		text = "ZX Spectrum"; break;
					case 2:		text = "Manufacturer: Sinclair Research"; break;
					case 3:		text = "Generation: Home Computer"; break;
					case 4:		text = "Retail: 1982-1992"; break;
					case 5:		text = "Units sold: 5 million worldwide"; break;
					case 6:		text = "Media: Cassette Tape, 3-Inch Floppy Disk"; break;
					case 7:		text = "CPU: 8-bit Z80 @3.5MHz"; break;
					case 8:		text = "GPU: ---"; break;
					case 9:		text = "RAM: 16KB work ram, 48KB exp ram"; break;
					case 10:	text = "Display: 256x192 pixel"; break;
					case 11:	text = "Colors: 8 colors palette on screen"; break;
					case 12:	text = "Sound: Buzzer"; break;
				}
			}
		
			if ( upper == "UPPERCASE" ) name.msg = text.toupper();
			else name.msg = text;
		}
	}
}