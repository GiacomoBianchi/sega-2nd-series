////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
//                                              SEGA 2nd SERIES 1.0.1 layout for Attract-Mode 2.6.0
//                                                      Giacomo Bianchi 10/11/2019
//
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
local o = 0;
local num100 = "DEFAULT,100,99,98,97,96,95,94,93,92,91,90,89,88,87,86,85,84,83,82,81,80,79,78,77,76,75,74,73,72,71,70,69,68,67,66,65,64,63,62,61,60,59,58,57,56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0";
local num5000 = "DEFAULT,5000,4000,3000,2800,2600,2400,2200,2000,1800,1600,1400,1200,1000,900,800,700,600,500,400,300,200,100,1";
local num200 = "DEFAULT,200,190,180,170,160,150,140,130,120,110,100,90,80,70,60,50";
local color = "DEFAULT,WHITE,BLACK,GREY 95%,GREY 90%,GREY 80%,GREY 70%,GREY 60%,GREY 50%,GREY 40%,GREY 30%,GREY 20%,GREY 10%,YELLOW,YELLOW ORANGE,ORANGE,RED ORANGE,RED,RED VIOLET,VIOLET,BLUE VIOLET,BLUE,BLUE GREEN,GREEN,YELLOW GREEN,LEMON,BANANA,AMBER,MANGO,TANGERINE,PEAR,APPLE,LIME ZEST,WASABI,EMERALD,JADE,CUCUMBER,DOS,TERMINAL,GRAPEFRUIT,APRICOT,MAHOGANY,SAPPHIRE,COBALT,DENIM,AMETHYST,VERY LIGHT BLUE,LIGHT BLUE,MEDIUM BLUE,DARK BLUE,BLACKBERRY,BORDEAUX,EGGPLANT,RASPBERRY,RUBY,SALMON,PLUM,AUBERGINE,FUCHSIA,MAGENTA,RAPHAEL,MICHELANGELO,LEONARDO,DONATELLO,TMNT,RICHARD PETTY,FERRARI";
class UserConfig {
	</ label="snap", help="choose artwork (DEFAULT VIDEO)", options="VIDEO,SCREENSHOT", order=o++ /> bac_opt="VIDEO";
	</ label="snap size", help="snap size (DEFAULT FULL SCREEN)", options="KEEP ASPECT,FULL SCREEN,FULL SCREEN KEEP ASPECT", order=o++ /> bgs_opt="FULL SCREEN KEEP ASPECT";
	</ label="snap audio", help="enable snap audio (DEFAULT YES)", options="YES,NO", order=o++ /> bga_opt="YES";
	</ label="scanlines", help="enable scanlines (DEFAULT BY SYSTEM)", options="BY SYSTEM,ALWAYS,NO", order=o++ /> sca_opt="BY SYSTEM";
	</ label="artwork", help="select art type (DEFAULT WHEEL)", options="BOX,3D-BOX,WHEEL,CART,FLYER,NO", order=o++ /> art_opt="WHEEL";
	</ label="title", help="select title type (DEFAULT TITLE)", options="TITLE,ROMNAME CUTTED,ROMNAME", order=o++ /> tit_opt="TITLE";
	</ label="extra", help="select extra or overview (DEFAULT EXTRA)", options="EXTRA,OVERVIEW,NO", order=o++ /> ext_opt="EXTRA";
	</ label="text color", help="text color (DEFAULT WHITE)", options=color, order=o++ /> tic_opt="DEFAULT";
	</ label="specs", help="enable specs (DEFAULT YES)", options="YES,NO", order=o++ /> spe_opt="YES";
	</ label="selection sound", help="selection sound (DEFAULT YES)", options="YES,NO", order=o++ /> sou_opt="YES";
	</ label="intro sound", help="intro sound (DEFAULT YES)", options="YES,NO", order=o++ /> int_opt="YES";

	</ label=" ", help="", order=o++ /> space1=" ";
	</ label=" ", help="", order=o++ /> space2=" ";
	</ label="------------ EXPERT ZONE ------------", help="These options change theme appearance", order=o++ /> empty1=" ";
	</ label="top panel height", help="top panel height (DEFAULT 15)", options=num100, order=o++ /> pth_opt="DEFAULT";
	</ label="bottom panel height", help="bottom panel height (DEFAULT 22)", options=num100, order=o++ /> pbh_opt="DEFAULT";
	</ label="artwork height", help="artwork height (DEFAULT 7)", options=num100, order=o++ /> arh_opt="DEFAULT";
	</ label="stripes number", help="stripes number (DEFAULT 32)", options=num100, order=o++ /> stn_opt="DEFAULT";
	</ label="extra charsize", help="extra charsize (DEFAULT 26)", options=num100, order=o++ /> exc_opt="DEFAULT";
	</ label="extra delay", help="extra delay (DEFAULT 4 seconds)", options=num100, order=o++ /> exd_opt="DEFAULT";
	</ label="specs charsize", help="specs charsize (DEFAULT 20)", options=num100, order=o++ /> spc_opt="DEFAULT";
	</ label="history charsize", help="history charsize (DEFAULT 28)", options=num100, order=o++ /> hic_opt="DEFAULT";
	</ label="animation time", help="animation time (DEFAULT 300 milliseconds)", options=num5000, order=o++ /> ant_opt="DEFAULT";
	</ label="stripes animation time", help="animation time (DEFAULT 15 seconds)", options=num100, order=o++ /> sta_opt="DEFAULT";
	</ label="text background", help="text background (DEFAULT NO)", options="YES,NO,DEFAULT", order=o++ /> tbg_opt="DEFAULT";	
}
local my_config = fe.get_config();

fe.load_module("animate");
fe.do_nut("art_by_system.nut");
fe.do_nut("colors.nut");
fe.do_nut("colors_by_system.nut");
fe.do_nut("intro_sound_by_system.nut");
fe.do_nut("scanlines_by_system.nut");
fe.do_nut("specs.nut");
fe.do_nut("system_history.nut");

fe.layout.font = "BarlowCondensed-SemiBold";
local fco = "coprgtb";

local flw = fe.layout.width;
local flh = fe.layout.height;
local pth = 0.12;		//  panel_top height
local pbh = 0.18;		//  panel_below height
local ant = 300;		//  animation time
local sta = 25000;		//  stripes animation speed
local stn = 32;			//  stripes number (1/2 on screen)
local stc = 0;			//  stripes first color
local exd = 4000;		//  extra animation delay
local sha = 400000;		//  system history animation
local spx = 12;			//  space between artworks on x axis
local spy = 12;			//  space between artworks on y axis
local tik = 0.090;		//  title charsize
local tih = 0.15;		//  title height
local tic = "WHITE"		//  title color
local arw = 0.18;		//  art width
local arh = 0.10;		//  art height
local inc = 0.045;		//  info charsize
local ins = 10.0;		//  info space
local yex = 0.10;		//  year x
local yew = 0.30;		//  year width
local maw = 0.30;		//  manufacturer width
local gex = 0.60;		//  genre x
local gew = 0.30;		//  genre width
local plw = 0.30;		//  players width
local exw = 0.50;		//  extra width
local exc = 0.026;		//  extra charsize
local hic = 0.028;		//  history charsize
local hih = 0.035;		//  history height
local ssh = 0.017;		//  specs height
local spc = 0.017;		//  specs charsize
local sps = 0.005;		//  specs space y axis
local spw = 0.35;		//  specs width
if ( my_config["tic_opt"] != "DEFAULT") tic = my_config["tic_opt"].tostring();			// title color
if ( my_config["pth_opt"] != "DEFAULT") pth = my_config["pth_opt"].tofloat()*0.01		// panels_t height
if ( my_config["pbh_opt"] != "DEFAULT") pbh = my_config["pbh_opt"].tofloat()*0.01		// panels_b height
if ( my_config["stn_opt"] != "DEFAULT") stn = my_config["stn_opt"].tointeger();			// stripes number
if ( my_config["ant_opt"] != "DEFAULT") ant = my_config["ant_opt"].tointeger();			// animation time
if ( my_config["sta_opt"] != "DEFAULT") sta = my_config["sta_opt"].tointeger()*1000;	// stripes animation time
if ( my_config["exc_opt"] != "DEFAULT") exc = my_config["exc_opt"].tofloat()*0.001;		// extra charsize
if ( my_config["exd_opt"] != "DEFAULT") exd = my_config["exd_opt"].tointeger()*1000;	// extra delay
if ( my_config["spc_opt"] != "DEFAULT") spc = my_config["spc_opt"].tofloat()*0.001;		// specs charsize
if ( my_config["hic_opt"] != "DEFAULT") hic = my_config["hic_opt"].tofloat()*0.001;		// history charsize
if ( my_config["arh_opt"] != "DEFAULT") arh = my_config["arh_opt"].tofloat()*0.01;		// art height
local exh = flh-flh*pth-flh*tih-flh*arh-flh*pbh-spx*4;	// extra_surface height


////////////// BACKGROUND
local background = fe.add_artwork( "snap", 0, 0, flw, flh );
if ( my_config["bgs_opt"] == "FULL SCREEN KEEP ASPECT" ) {
	background.y = -flh*0.50;
	background.height = flh*2.00;
}
if ( my_config["bga_opt"] == "NO" ) background.video_flags = Vid.NoAudio;
if ( my_config["bgs_opt"] == "KEEP ASPECT") background.preserve_aspect_ratio = true;
else if ( my_config["bgs_opt"] == "FULL SCREEN") background.preserve_aspect_ratio = false;
else if ( my_config["bgs_opt"] == "FULL SCREEN KEEP ASPECT") background.preserve_aspect_ratio = true;
if ( my_config["bac_opt"] == "SCREENSHOT" ) background.video_flags = Vid.ImagesOnly;
animation.add( PropertyAnimation( background, { when=Transition.ToNewList, property="alpha", start=0, end=255, time=ant*2 }));

switch ( my_config["sca_opt"] ) {
	case "ALWAYS":
		local scanlines = fe.add_image( "assets/scanlines.png", 0, 0, flw, flh );
		break;
	case "BY SYSTEM":
		local scanlines = fe.add_image( "assets/scanlines.png", 0, 0, flw, flh );
		scanlines_by_system( scanlines );
		break;
}


////////////// INFO
function title( index_offset ) {
	switch ( my_config["tit_opt"] ) {
		case "ROMNAME CUTTED":
			local text = split( fe.game_info( Info.Name, index_offset ), "(/[" );
			if ( text.len() > 0 ) return text[0].toupper();
		case "ROMNAME":
			local text = fe.game_info(Info.Name, index_offset);
			return text.toupper();
		case "TITLE":
			local text = fe.game_info(Info.Title, index_offset);
			if ( text.len() > 0 ) return text.toupper();	// se il numero di caratteri di test è maggiore di 0 allora
			return "MISSING TITLE";	// se viene eseguito il return precedente, esce dal ciclo e di conseguenza salta questa riga
	}
}
local title = fe.add_text ( "[!title]", spy, flh*pth+spx, flw-spy*2, flh*tih );
colors( title, tic, 0 );
title.align = Align.TopCentre;
title.charsize = flh*tik;
title.word_wrap = true;
title.margin = 0;
title.line_spacing = 0.70;
if ( my_config["tbg_opt"] == "YES" ) colors( title, "blue", 2 );
animation.add( PropertyAnimation( title, { when=Transition.ToNewList, property="alpha", start=0, end=255, time=ant*4 }));
animation.add( PropertyAnimation( title, { when=Transition.ToNewSelection, property="y", start=flh*pth-title.height, end=title.y, time=ant*3, tween=Tween.Circle }));

local art = null;
switch ( my_config["art_opt"] ) {
	case "BOX": art = "boxart"; break;
	case "3D-BOX": art = "3d-boxart"; break;
	case "CART": art = "cartart"; break;
	case "WHEEL": art = "wheel"; break;
	case "FLYER": art = "flyer"; break;
}
local art = fe.add_artwork( art, flw*0.50-flw*arw*0.50, flh-flh*pbh-spx-flh*arh, flw*arw, flh*arh );
art.preserve_aspect_ratio = true;
animation.add( PropertyAnimation( art, { when=Transition.ToNewList, property="alpha", start=0, end=255, time=ant*4 }));
animation.add( PropertyAnimation( art, { when=Transition.ToNewSelection, property="y", start=flh-flh*pbh*0.50, end=flh-flh*pbh-spx-flh*arh, time=ant*3, tween=Tween.Circle }));

local info_left_surface = fe.add_surface( flw*yew, flh*arh );
info_left_surface.x = flw*yex;
info_left_surface.y = flh-flh*pbh-spx-flh*arh;

function year( index_offset, var ) {
	local text = fe.game_info(Info.Year, 0);
	if (text != "") return text;
	else return "MISSING YEAR";
}
local year = info_left_surface.add_text ( "[!year]", 0, 0, flw*yew, flh*arh*0.50-ins );
colors( year, tic, 0 );
year.align = Align.BottomRight;
year.charsize = flh*inc;
year.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( year, "blue", 2 );
animation.add( PropertyAnimation( year, { when=Transition.ToNewList, property="alpha", start=0, end=255, time=ant*4 }));
animation.add( PropertyAnimation( year, { when=Transition.ToNewSelection, property="x", start=year.x+year.width, end=year.x, time=ant*3, tween=Tween.Expo }));

function manufacturer( index_offset ) {
	local text = fe.game_info(Info.Manufacturer, 0);
	if (text != "") return text.toupper();
	else return "MISSING DEVELOPER";
}
local manufacturer = info_left_surface.add_text ( "[!manufacturer]", 0, year.height+spx, flw*maw, year.height );
colors( manufacturer, tic, 0 );
manufacturer.align = Align.BottomRight;
manufacturer.charsize = flh*inc;
manufacturer.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( manufacturer, "blue", 2 );
animation.add( PropertyAnimation( manufacturer, { when=Transition.ToNewList, property="alpha", start=0, end=255, time=ant*4 }));
animation.add( PropertyAnimation( manufacturer, { when=Transition.ToNewSelection, property="x", start=manufacturer.x+manufacturer.width, end=year.x, time=ant*3, tween=Tween.Expo }));

local info_right_surface = fe.add_surface( flw*yew, flh*arh );
info_right_surface.x = flw*gex;
info_right_surface.y = flh-flh*pbh-spx-flh*arh;

function genre( index_offset ) {
	local text = fe.game_info(Info.Category, 0);
	if (text != "") return text.toupper();
	else return "MISSING GENRE";
}
local genre = info_right_surface.add_text ( "[!genre]", 0, 0, flw*gew, year.height );
colors( genre, tic, 0 );
genre.align = Align.BottomLeft;
genre.charsize = flh*inc;
genre.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( genre, "blue", 2 );
animation.add( PropertyAnimation( genre, { when=Transition.ToNewList, property="alpha", start=0, end=255, time=ant*4 }));
animation.add( PropertyAnimation( genre, { when=Transition.ToNewSelection, property="x", start=genre.x-genre.width, end=year.x, time=ant*3, tween=Tween.Expo }));

function players( index_offset ) {
	local text = fe.game_info(Info.Players,0);
	if (text == "1") return text + " PLAYER";
	else if (text == "")  return "MISSING PLAYERS";
	else return text + " PLAYERS";
}
local players = info_right_surface.add_text ( "[!players]", 0, manufacturer.y, flw*plw, year.height );
colors( players, tic, 0 );
players.align = Align.BottomLeft;
players.charsize = flh*inc;
players.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( players, "blue", 2 );
animation.add( PropertyAnimation( players, { when=Transition.ToNewList, property="alpha", start=0, end=255, time=ant*4 }));
animation.add( PropertyAnimation( players, { when=Transition.ToNewSelection, property="x", start=players.x-players.width, end=year.x, time=ant*3, tween=Tween.Expo }));


////////////// TOP PANEL
local surface_t = fe.add_surface( flw*2.00, flh*pth );
surface_t.x = 0;
surface_t.y = 0;
stc = 0;
local stripe_t = [];
stripe_t.resize(stn+1)		// ho messo +1 perchè le strisce sono inclinate e ce ne vuole una in piu per riempire in larghezza la superfice
for ( local i=0 ; i<stn+1 ; i++ ) {
	if ( stc == 8 ) stc = 0;		// quando arriva all'ottavo colore ricomincia dal primo
	stc++;
	stripe_t[i] = surface_t.add_image( "assets/white.png", surface_t.width/stn*i, 0, surface_t.width/stn+1, flh*pth );
	colors_by_system( stripe_t[i], stc, 0, 0, 0 );
	stripe_t[i].skew_x = -surface_t.width/stn;
}
animation.add( PropertyAnimation( surface_t, { when=Transition.ToNewList, property="alpha", start=0, end=255, time=ant }));
animation.add( PropertyAnimation( surface_t, { when=Transition.ToNewList, property="x", start=surface_t.x, end=surface_t.x-surface_t.width*0.50, time=sta, loop=true }));

local system_logo = fe.add_image( "", 0, spx, flw, flh*pth-spx*2.00 );
system_logo.preserve_aspect_ratio = true;
art_by_system( "assets/system logo/", system_logo );
animation.add( PropertyAnimation( system_logo, { when=Transition.ToNewList, property="y", start=-flh*pth-spx*2.00, end=spx, time=ant*1.50 }));	


////////////// BOTTOM PANEL
local surface_b = fe.add_surface( flw*2.00, flh*pbh );
surface_b.x = 0;
surface_b.y = flh-flh*pbh;
local stripe_b = [];
stripe_b.resize(stn+1)
for ( local i=0 ; i<stn+1 ; i++ ) {
	if ( stc == 8 ) stc = 0;
	stc++;
	stripe_b[i] = surface_b.add_image( "assets/white.png", surface_b.width/stn*i, 0, surface_b.width/stn+1, flh*pbh );
	colors_by_system( stripe_b[i], stc, 0, 0, 0 );
	stripe_b[i].skew_x = -surface_b.width/stn;
}
animation.add( PropertyAnimation( surface_b, { when=Transition.ToNewList, property="alpha", start=0, end=255, time=ant }));
animation.add( PropertyAnimation( surface_b, { when=Transition.ToNewList, property="x", start=surface_b.x, end=surface_b.x-surface_b.width*0.50, time=sta, loop=true }));

local history = fe.add_text ( "", 0, flh-flh*hic, flw*40, flh*hic );
system_history( history, "UPPERCASE" );
colors_by_system( history, 9, 0, 0, 0 );
history.align = Align.Left;
history.font = fco;
history.charsize = flh*hic;
history.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( history, "blue", 2 );
animation.add( PropertyAnimation( history, { when=Transition.ToNewList, property="x", start=flw, end=-history.width, time=sha, loop=true }));

if ( my_config["spe_opt"] == "YES") {
	local specs_text = [0,1,2,3,4,5,6,7,8,9,10,11];
	for ( local i=0 ; i<6 ; i++ ) {
		specs_text[i] = fe.add_text( "", spy, flh-flh*pbh+spx+((flh*ssh+flh*sps)*i), flw*spw, flh*ssh );
		specs( specs_text[i], i+1, "UPPERCASE" );
		colors_by_system( specs_text[i], 9, 0, 0, 0 );
		specs_text[i].font = fco;
		specs_text[i].align = Align.TopLeft;
		specs_text[i].charsize = flh*spc;
		specs_text[i].margin = 0;
		if ( my_config["tbg_opt"] == "YES" ) colors( specs_text[i], "blue", 2 );
		animation.add( PropertyAnimation( specs_text[i], { when=Transition.ToNewList, property="x", end=-specs_text[i].width, time=1 }));
		animation.add( PropertyAnimation( specs_text[i], { when=Transition.ToNewList, property="x", start=-specs_text[i].width, end=specs_text[i].x, time=ant*2, delay=ant*1.50*i*2, tween=Tween.Expo }));
	}
	for ( local i=6 ; i<12 ; i++ ) {
		specs_text[i] = fe.add_text( "", flw-spy-flw*spw, flh-flh*pbh+spx+((flh*ssh+flh*sps)*(i-6)), flw*spw, flh*ssh );
		specs( specs_text[i], i+1, "UPPERCASE" );
		colors_by_system( specs_text[i], 9, 0, 0, 0 );
		specs_text[i].font = fco;
		specs_text[i].align = Align.TopRight;
		specs_text[i].charsize = flh*spc;
		specs_text[i].margin = 0;
		if ( my_config["tbg_opt"] == "YES" ) colors( specs_text[i], "blue", 2 );animation.add( PropertyAnimation( specs_text[i], { when=Transition.ToNewList, property="x", end=flw, time=1 }));
		animation.add( PropertyAnimation( specs_text[i], { when=Transition.ToNewList, property="x", start=flw, end=specs_text[i].x, time=ant*2, delay=ant*1.50*(i-6)*2, tween=Tween.Expo }));
	}
}

local system_photo = fe.add_image( "", 0, flh, flw, flh*pbh-spx );
system_photo.preserve_aspect_ratio = true;
art_by_system( "assets/system photo/", system_photo );
animation.add( PropertyAnimation( system_photo, { when=Transition.ToNewList, property="y", start=flh, end=flh-(flh*pbh-spx), time=ant*1.50 }));


////////////// EXTRA
local ext = "";
if ( my_config["ext_opt"] == "EXTRA" ) ext = "[!extra_text]";
else ext = "[Overview]";
function extra_text( index_offset, var ) {
	local text = fe.game_info(Info.Extra, 0);
	if (text != "") return text.toupper();
	else return "MISSING EXTRA";
}
local extra = fe.add_text ( ext, flw*0.50-flw*exw*0.50, title.y+title.height+spx, flw*exw, exh );
colors( extra, tic, 0 );
extra.alpha = 0;
extra.align = Align.MiddleCentre;
extra.charsize = flh*exc;
extra.word_wrap = true;
extra.margin = 0;
if ( my_config["tbg_opt"] == "YES" ) colors( extra, "blue", 2 );
animation.add( PropertyAnimation( extra, { when=Transition.ToNewList, property="alpha", start=0, end=0, time=1 }));
animation.add( PropertyAnimation( extra, { when=Transition.ToNewSelection, property="alpha", end=0, time=1 }));
animation.add( PropertyAnimation( extra, { when=Transition.ToNewSelection, property="alpha", start=0, end=255, time=ant*2, delay=exd }));


////////////// INTRO SOUND
local intro_sound = fe.add_sound( "" );
intro_sound_by_system( "assets/system sound/", intro_sound );
fe.add_transition_callback( "intro" );
function intro( ttype, var, ttime ) {
	if ( ttype == Transition.ToNewList ) 
		if ( my_config["int_opt"] == "YES") intro_sound.playing=true;
}


////////////// SELECTION SOUNDS
local click = fe.add_sound("");
fe.add_transition_callback( "click" );
function click( ttype, var, ttime ) {
	if ( ttype == Transition.ToNewSelection ) {
		local path = null;
		if (fe.get_input_state("Up") == true) {
			if ( my_config["bg_opt"] == "SCREENSHOT") path = fe.get_art( "snap", -1 , 0 , Art.Default | Art.ImagesOnly );
			else if ( my_config["bg_opt"] == "VIDEO") path = fe.get_art( "snap", -1 , 0 , Art.Default );	
			if ( path != "" ) {
				click.file_name = "assets/click.wav";
				if ( my_config["sou_opt"] == "YES") click.playing = true;
			}
			else {
				click.file_name = "assets/error.wav";
				if ( my_config["sou_opt"] == "YES") click.playing = true;
			}
		}
		else if (fe.get_input_state("Down") == true) {
			if ( my_config["bg_opt"] == "SCREENSHOT") path = fe.get_art( "snap", 1 , 0 , Art.Default | Art.ImagesOnly );
			else if ( my_config["bg_opt"] == "VIDEO") path = fe.get_art( "snap", 1 , 0 , Art.Default );	
			if ( path != "" ) {
				click.file_name = "assets/click.wav";
				if ( my_config["sou_opt"] == "YES") click.playing = true;
			}
			else {
				click.file_name = "assets/error.wav";
				if ( my_config["sou_opt"] == "YES") click.playing = true;
			}
		}
	}
}