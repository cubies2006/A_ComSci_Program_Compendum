//**** CSS Drop Down Menu, (c) 2004, OpenCube Inc.,  -  www.opencube.com ****
//
//   DO NOT STOP HERE! - THIS TEMPLATE FILE CONTAINS ACTUAL MENU SETTINGS FOR sample.html
//
//   We recommend deleting the quick tips section below and other comments before 
//   using this template on your web site to help reduce the total file size of your menu.


function cdd_menu0(){//////////////////////////Start Menu Data/////////////////////////////////
/**********************************************************************************************

	Menu 0 - General Settings and Menu Structure

	**See the menu_styles.css file for additional customization options**

***********************************************************************************************/

/*---------------------------------------------
Icon Images
---------------------------------------------*/

//Define two types of unlimited icon images below, associate any image
//with any item using both the 'icon_rel' and 'icon_abs' parameter in the
//sub menu structure section (set to the index number of the icon image)


    //Relative positioned icon images (flow with main menu or sub item text)

	this.rel_icon_image0 = "menu/sample_images/bullet.gif"
	this.rel_icon_rollover0 = "menu/sample_images/bullet_hl.gif"
	this.rel_icon_image_wh0 = "13,8"
	


    //Absolute positioned icon images (coordinate positioned - relative to 
    //right top corner of the menu item displaying the icon.)

	this.abs_icon_image0 = "menu/sample_images/arrow.gif"
	this.abs_icon_rollover0 = "menu/sample_images/arrow.gif"
	this.abs_icon_image_wh0 = "13,10"
	this.abs_icon_image_xy0 = "-15,4"




/*---------------------------------------------
Divider Settings
---------------------------------------------*/


	this.use_divider_caps = false		//cap the top and bottom of each menu group
	this.divider_width = 3			//space between entries on horizontal menus
	this.divider_height = 0			//border width between vertical submenu entries


    //available specific settings

	this.use_divider_capsX = true



/*---------------------------------------------
Menu Orientation and Sizing
---------------------------------------------*/


	this.is_horizontal = false		//false = vertical menus, true = horizontal menus
	this.is_horizontal_main = true

	
	this.menu_width = 200			//applies to vertical menus
	this.menu_width_items = 90		//width of buttons in horizontal menu
	
	

    //available specific settings
	

	this.is_horizontalX = true
	
	this.menu_widthX = 200

	this.menu_width_itemsX = 100
	this.menu_width_itemX_X = 100

	


/*---------------------------------------------
Optional Style Sheet Class Name Association
---------------------------------------------*/

//Use the following section to optionally associate menu groups 
//and menu items with existing CSS classes from your site.



   //global class names

	//this.main_menu_class = "myclassname"
	//this.main_items_class = "myclassname"
	//this.main_items_rollover_class = "myclassname"

	//this.sub_menu_class = "myclassname"
	//this.sub_items_class = "myclassname"
	//this.sub_items_rollover_class = "myclassname"


   //specific menu items

	//this.item_classX_X = "myclassname"
	//this.item_rollover_classX_X = "myclassname"



/*---------------------------------------------
Exposed Menu Events - Custom Script Attachment
---------------------------------------------*/


	this.show_menu = "";
	this.hide_menu = "";


 //available specific settings


	//this.show_menuX = "alert('show id')";
	//this.hide_menuX = "alert('hide id')";



/*------------------------------------------------
Menu Width & Height Adjustments for DOM Browsers
-------------------------------------------------*/

  /*Note: The following settings are optional and are made available
  for tweaking the menu to perfection on all browsers and platforms.
  The menu will function without error regardless of the settings below.

  Opera and other DOM browsers take different approaches
  to how they calculate widths and heights of items which have
  CSS padding and borders defined.  With the settings below
  re-define the total left-right and top-bottom combined border 
  and padding values.  These values are used by DOM browsers
  (ns7, opera, Mozilla, etc.) to correct the menu dimensions.*/



   //Menu Width & Height Adjustments (padding + borders)

	this.pb_width_main_menu = 12;	
	this.pb_width_sub_menus = 16;

	this.pb_height_main_menu = 12;
	this.pb_height_sub_menus = 16;

	
	this.pb_width_menuX = 0;
	this.pb_height_menuX = 0;
	this.pb_width_main_itemsX = 0;
	this.pb_width_sub_itemsX = 0;



   //Item Width Adjustments (padding + borders)

	this.pb_width_main_items = 12;
	this.pb_width_sub_items = 12;



   //Opera 5 & 6 - alternate HTML display (Opera 7 displays menu 100%)

	this.opera_old_display_html = "Please update your opera browser.";



/*---------------------------------------------
Main Menu Group and Items
---------------------------------------------*/


   //Main Menu Group 0

	
	this.item0 = "HISTORY"
	//this.url0 = "myurl.html"	

	this.item1 = "ISSUES"
	//this.url1 = "myurl.html"	
	
	this.item2 = "CREATORS"
	//this.url2 = "myurl.html"	
	
	this.item3 = "FANS"
	//this.url3 = "myurl.html"	
	
	this.item4 = "MERCH"
	//this.url4 = "myurl.html"	
	
	this.item5 = "MEDIA"
	//this.url5 = "myurl.html"	
	
	this.item6 = "ART"
	//this.url6 = "myurl.html"	
	
	this.item7 = "FUN/GAMES"
	//this.url7 = "myurl.html"	
	

/*---------------------------------------------
Sub Menu Group and Items
---------------------------------------------*/

   //Sub Menu 0

	this.menu_xy0 = "-82,17"
	this.menu_width0 = 150

	this.item0_0  = "DD's Origin & Powers"
	this.item0_1  = "Daredevil's Costume"
      this.item0_2  = "Cast Bios"
	this.item0_3  = "Plot Summary"
	this.item0_4  = "Nelson & Murdock"
	this.item0_5  = "Issue Chronology"
	this.item0_6  = "Guest Checklist"
	this.item0_7  = "First Meetings"
	this.item0_8  = "DD & Spidey"
	this.item0_9  = "Other Daredevils"
	this.item0_10 = "Women of DD"
      this.item0_11 = "Sales"

	this.icon_abs0_4 = 0
	this.icon_abs0_8 = 0

	this.url0_0 = 'origin.htm'
	this.url0_1 = 'costume.htm'
	this.url0_2 = 'cast.htm'
	this.url0_3 = 'plot.htm'
	this.url0_4 = ''
	this.url0_5 = 'chrono.htm'
	this.url0_6 = 'guests.htm'
	this.url0_7 = 'firstmeetings.htm'
	this.url0_8 = ''
	this.url0_9 = 'otherdds.htm'
	this.url0_10= 'women.htm'
	this.url0_11= 'spideysales.htm'

   //Sub Menu 0_4

	this.menu_xy0_4 = "-4,2"
	this.menu_width0_4 = 150

	this.item0_4_0 = "The Law Offices of..."
	this.item0_4_1 = "Famous Clients"
	this.item0_4_2 = "Nelson vs. Murdock"
	this.item0_4_3 = "Legal Terms/Definitions"

	this.url0_4_0 = 'legalcareer.htm'
	this.url0_4_1 = 'legalclients.htm'
	this.url0_4_2 = 'legalversus.htm'
	this.url0_4_3 = 'legalterms.htm'


   //Sub Menu 0_8

	this.menu_xy0_8 = "-4,2"
	this.menu_width0_8 = 150

	this.item0_8_0 = "Comparison"
	this.item0_8_1 = "Significant Events"
	this.item0_8_2 = "Appearances Together"
	this.item0_8_3 = "Spider-Man vs. DD"
	this.item0_8_4 = "Saving Each Other"
      this.item0_8_5 = "Sales"

	this.url0_8_0 = 'spideycompare.htm'
	this.url0_8_1 = 'spideyevents.htm'
	this.url0_8_2 = 'spideyappear.htm'
	this.url0_8_3 = 'spideyvsdd.htm'
	this.url0_8_4 = 'spideysaves.htm'
	this.url0_8_5 = 'spideysales.htm'

   //Sub Menu 1
	
	this.menu_xy1 = "-82,17"
	this.menu_width1 = 150
        
	this.item1_0 = "Recommended Reading"
	this.item1_1 = "Volume 1"
	this.item1_2 = "Volume 2"
	this.item1_3 = "Annuals"
	this.item1_4 = "Specials/Mini-Series"	
	this.item1_5 = "Graphic Novels"
	this.item1_6 = "Cross-Appearances"
	this.item1_7 = "International Issues"
	this.item1_8 = "Trade Paperbacks"
	this.item1_9 = "Hardcovers"
	this.item1_10= "Reprints"	
	this.item1_11= "Cybercomics"

	this.icon_abs1_6 = 0
	this.icon_abs1_7 = 0

	this.url1_0 = 'recommended.htm'
	this.url1_1 = 'volume1.htm'
	this.url1_2 = 'volume2.htm'
	this.url1_3 = 'annuals.htm'
	this.url1_4 = 'specials.htm'
	this.url1_5 = 'graphic.htm'
	this.url1_6 = ''
	this.url1_7 = ''
	this.url1_8 = 'tpbs.htm'
	this.url1_9 = 'hardcovers.htm'
	this.url1_10= 'reprints.htm'
	this.url1_11= 'online.htm'

   //Sub Menu 1_6

	this.menu_xy1_6 = "-4,2"
	this.menu_width1_6 = 150

	this.item1_6_0 = "Appearance Checklist"
	this.item1_6_1 = "Major Appearances"
	this.item1_6_2 = "Minor Appearances"
	this.item1_6_3 = "Cameo/Bit Appearances"
	this.item1_6_4 = "Non-Appearances"
	this.item1_6_5 = "Alternate Appearances"
	this.item1_6_6 = "Honorable Mentions"
	this.item1_6_7 = "Parodies/Spoofs"
	this.item1_6_8 = "Pinups"

	this.url1_6_0 = 'appear.htm'
	this.url1_6_1 = 'appmaj.htm'
	this.url1_6_2 = 'appmin.htm'
	this.url1_6_3 = 'appbit.htm'
	this.url1_6_4 = 'appnon.htm'
	this.url1_6_5 = 'appalt.htm'
	this.url1_6_6 = 'mentions.htm'
	this.url1_6_7 = 'parodies.htm'
	this.url1_6_8 = 'artpinup.htm'

   //Sub Menu 1_7

	this.menu_xy1_7 = "-4,2"
	this.menu_width1_7 = 150

	this.item1_7_0 = "Brazil (Brasil)"
	this.item1_7_1 = "Finland (Suomi)"
	this.item1_7_2 = "France"
	this.item1_7_3 = "Germany (Deutschland)"
	this.item1_7_4 = "Italy (Italia)"
	this.item1_7_5 = "Norway (Nörge)"
	this.item1_7_6 = "Spain (España)"
	this.item1_7_7 = "Sweden (Sverige)"
	this.item1_7_8 = "United Kingdom"
	this.item1_7_9 = "Uruguay"

	this.url1_7_0 = 'intl_bra.htm'
	this.url1_7_1 = 'intl_fin.htm'
	this.url1_7_2 = 'intl_fra.htm'
	this.url1_7_3 = 'intl_ger.htm'
	this.url1_7_4 = 'intl_ita.htm'
	this.url1_7_5 = 'intl_nor.htm'
	this.url1_7_6 = 'intl_esp.htm'
	this.url1_7_7 = 'intl_swe.htm'
	this.url1_7_8 = 'intl_uk.htm'
	this.url1_7_9 = 'intl_uru.htm'



    //Sub Menu 2

	this.menu_xy2 = "-82,17"
	this.menu_width2 = 125
	
	this.item2_0 = "Creator Checklist"
	this.item2_1 = "Interviews"
	this.item2_2 = "Creator Bios"
	this.item2_3 = "Guestbook Entries"

	this.url2_0 = 'creators.htm'
	this.url2_1 = 'interviews.htm'
	this.url2_2 = 'creabios.htm'
	this.url2_3 = 'halloffame.htm'



    //Sub Menu 3

	this.menu_xy3 = "-82,17"
	this.menu_width3 = 150
	
	this.item3_0 = "Fan Art"
	this.item3_1 = "Fan Fiction"
	this.item3_2 = "Custom Figures"
	this.item3_3 = "Body Art (Tattoos)"
	this.item3_4 = "Custom Trading Cards"
	this.item3_5 = "Published Fan Letters"
	this.item3_6 = "Fan Parodies"
	this.item3_7 = "Misc. Fan Creations"
	this.item3_8 = "Guestbook"

	this.url3_0 = 'artfan.htm'
	this.url3_1 = 'fanfiction.htm'
	this.url3_2 = 'fanfigs.htm'
	this.url3_3 = 'artbody.htm'
	this.url3_4 = 'fancards.htm'
	this.url3_5 = 'fanletters.htm'
	this.url3_6 = 'fanparodies.htm'
	this.url3_7 = 'fanmisc.htm'
	this.url3_8 = 'http://books.dreambook.com/kevinqhall/ddbook.html'



    //Sub Menu 4

	this.menu_xy4 = "-82,17"
	this.menu_width4 = 180

	this.item4_0 = "For Sale or Trade"
	this.item4_1 = "Cards, Stickers, & Pogs"
	this.item4_2 = "Toys, Games, & Puzzles"
	this.item4_3 = "Action Figures"
	this.item4_4 = "Diecast Vehicles"
	this.item4_5 = "Pins & Patches"
	this.item4_6 = "Stamps & Coins"
	this.item4_7 = "Food & Candy"
	this.item4_8 = "Clothes & Apparel"
	this.item4_9 = "T-Shirts"
	this.item4_10= "Costumes"
	this.item4_11= "Calendars"
	this.item4_12= "Household Items"
	this.item4_13= "Stationery"
	this.item4_14= "Wall Hangings/Window Clings"

	this.icon_abs4_1 = 0

	this.url4_0 = 'mercwant.htm'
	this.url4_1 = 'merccard.htm'
	this.url4_2 = 'merctoys.htm'
	this.url4_3 = 'mercfigs.htm'
	this.url4_4 = 'diecast.htm'
	this.url4_5 = 'mercpins.htm'
	this.url4_6 = 'stamps.htm'
	this.url4_7 = 'mercfood.htm'
	this.url4_8 = 'mercclth.htm'
	this.url4_9 = 'merctees.htm'
	this.url4_10= 'merccost.htm'
	this.url4_11= 'merccal.htm'
	this.url4_12= 'merchous.htm'
	this.url4_13= 'mercstat.htm'
	this.url4_14= 'mercwall.htm'
	
   //Sub Menu 4_1

	this.menu_xy4_1 = "-4,2"
	this.menu_width4_1 = 160

	this.item4_1_0 = "Custom Trading Cards"
	this.item4_1_1 = "Trading Cards: 1960s"
	this.item4_1_2 = "Trading Cards: 1970s"
	this.item4_1_3 = "Trading Cards: 1980s"
	this.item4_1_4 = "Trading Cards: 1990-1992"
	this.item4_1_5 = "Trading Cards: 1993-1995"
	this.item4_1_6 = "Trading Cards: 1996-2000"
	this.item4_1_7 = "Trading Cards: 2001-2003"
	this.item4_1_8 = "Trading Cards: DD Movie"
	this.item4_1_9 = "Phone Cards"
	this.item4_1_10= "Promotional Cards"
	this.item4_1_11= "Collectible Card Games"
	this.item4_1_12= "Stickers"
	this.item4_1_13= "Pogs"

	this.url4_1_0 = 'fancards.htm'
	this.url4_1_1 = 'cards60s.htm'
	this.url4_1_2 = 'cards70s.htm'
	this.url4_1_3 = 'cards80s.htm'
	this.url4_1_4 = 'cards90-92.htm'
	this.url4_1_5 = 'cards93-95.htm'
	this.url4_1_6 = 'cards96-00.htm'
	this.url4_1_7 = 'cards01-03.htm'
	this.url4_1_8 = 'cardsdd.htm'
	this.url4_1_9 = 'cardsphone.htm'
	this.url4_1_10= 'cardspromo.htm'
	this.url4_1_11= 'cardsccg.htm'
	this.url4_1_12= 'stickers.htm'
	this.url4_1_13= 'pogs.htm'




    //Sub Menu 5

	this.menu_xy5 = "-82,17"
	this.menu_width5 = 165

	this.item5_0 = "Books"
	this.item5_1 = "Movies"
	this.item5_2 = "Television"
	this.item5_3 = "Video Games/CyberComics"
	this.item5_4 = "Fanzines"
	this.item5_5 = "Feature Articles"
	this.item5_6 = "Sightings"
	this.item5_7 = "Music"
	this.item5_8 = "Braille"
	this.item5_9 = "Newspaper"

	this.icon_abs5_0 = 0

	this.url5_0 = ''
	this.url5_1 = 'movies.htm'
	this.url5_2 = 'tv.htm'
	this.url5_3 = 'online.htm'
	this.url5_4 = 'fanzines.htm'
	this.url5_5 = 'articles.htm'
	this.url5_6 = 'sightings.htm'
	this.url5_7 = 'music.htm'
	this.url5_8 = 'braille.htm'
	this.url5_9 = 'newspaper.htm'

   //Sub Menu 5_0

	this.menu_xy5_0 = "-4,2"
	this.menu_width5_0 = 145

	this.item5_0_0 = "Pocketbooks/Fiction"
	this.item5_0_1 = "Graphic Novels"
	this.item5_0_2 = "Trade Paperbacks"
	this.item5_0_3 = "Hardcovers"
	this.item5_0_4 = "Miscellaneous Books"
	this.item5_0_5 = "Activity/Coloring Books"

	this.url5_0_0 = 'fiction.htm'
	this.url5_0_1 = 'graphic.htm'
	this.url5_0_2 = 'tpbs.htm'
	this.url5_0_3 = 'hardcovers.htm'
	this.url5_0_4 = 'miscbooks.htm'
	this.url5_0_5 = 'coloring.htm'


    //Sub Menu 6

	this.menu_xy6 = "-82,17"
	this.menu_width6 = 150

	this.item6_0 = "Fan Art"
	this.item6_1 = "Statues & Figures"
	this.item6_2 = "Portfolios, Prints, & Lithographs"
	this.item6_3 = "Posters"
	this.item6_4 = "Sketchagraph Gallery"
	this.item6_5 = "Splash Pages"
	this.item6_6 = "Sketches/Drawings"
	this.item6_7 = "Pinups"
	this.item6_8 = "Authentix Cover Gallery"
	this.item6_9 = "Body Art (Tattoos)"
	this.item6_10= "Preview Art"
	this.item6_11= "Licensed Images"

	this.url6_0 = 'artfan.htm'
	this.url6_1 = 'artsculp.htm'
	this.url6_2 = 'artpro.htm'
	this.url6_3 = 'artpost.htm'
	this.url6_4 = 'artsgrph.htm'
	this.url6_5 = 'artsplsh.htm'
	this.url6_6 = 'artsktch.htm'
	this.url6_7 = 'artpinup.htm'
	this.url6_8 = 'artauth.htm'
	this.url6_9 = 'artbody.htm'
	this.url6_10= 'artpreview.htm'
	this.url6_11= 'artlic.htm'

    //Sub Menu 7

	this.menu_xy7 = "-142,17"
	this.menu_width7 = 160

	this.item7_0 = "Top Ten..."
	this.item7_1 = "Quotes"
	this.item7_2 = "Lawyer Jokes"
	this.item7_3 = "Bloopers"
	this.item7_4 = "Parodies/Spoofs"
	this.item7_5 = "Trivia"
	this.item7_6 = "Online Puzzles/Games"
	this.item7_7 = "Printable Puzzles"

	this.icon_abs7_0 = 0
	this.icon_abs7_6 = 0
	this.icon_abs7_7 = 0

	this.url7_0 = ''
	this.url7_1 = 'quotes.htm'
	this.url7_2 = 'shyster.htm'
	this.url7_3 = 'bloopers.htm'
	this.url7_4 = 'parodies.htm'
	this.url7_5 = 'trivia.htm'
	this.url7_6 = 'puzzles.htm'
	this.url7_7 = ''

   //Sub Menu 7_0

	this.menu_xy7_0 = "-269,3"
	this.menu_width7_0 = 150

	this.item7_0_0 = "Ways to Defeat Stiltman"
	this.item7_0_1 = "Favorite DD Stories"
	this.item7_0_2 = "Toughest Foes"
	this.item7_0_3 = "Favorite DD Story Arcs"
	this.item7_0_4 = "Favorite DD Villains"
	this.item7_0_5 = "Fav. DD Supporting Cast"
	this.item7_0_6 = "Favorite DD Team-Ups"
	this.item7_0_7 = "Underrated DD Creators"
	this.item7_0_8 = "Aerial Moves"

	this.url7_0_0 = 'ttstilts.htm'
	this.url7_0_1 = 'ttissues.htm'
	this.url7_0_2 = 'tttough.htm'
	this.url7_0_3 = 'ttarcs.htm'
	this.url7_0_4 = 'ttbadguy.htm'
	this.url7_0_5 = 'ttsuppor.htm'
	this.url7_0_6 = 'ttteamup.htm'
	this.url7_0_7 = 'ttunder.htm'
	this.url7_0_8 = 'ttdaringmoves.htm'

   //Sub Menu 7_6

	this.menu_xy7_6 = "-299,3"
	this.menu_width7_6 = 180

	this.item7_6_0 = "Concentration: DD Covers"
	this.item7_6_1 = "Concentration: Sketchagraphs"
	this.item7_6_2 = "Word Search: DD Villains"
	this.item7_6_3 = "Word Search: Women of DD"
	this.item7_6_4 = "Word Search: DD Creators"

	this.url7_6_0 = 'puzconcentration1.htm'
	this.url7_6_1 = 'puzconcentration2.htm'
	this.url7_6_2 = 'puzsrch1online.htm'
	this.url7_6_3 = 'puzsrch2online.htm'
	this.url7_6_4 = 'puzsrch3online.htm'

   //Sub Menu 7_7

	this.menu_xy7_7 = "-299,3"
	this.menu_width7_7 = 180

	this.item7_7_0 = "Matching: Marvel Nemeses"
	this.item7_7_1 = "Matching: Marvel Couples"
	this.item7_7_2 = "Matching: Weapons of Choice"
	this.item7_7_3 = "Word Search: DD Villains"
	this.item7_7_4 = "Word Search: Women of DD"
	this.item7_7_5 = "Word Search: DD Creators"

	this.url7_7_0 = 'puzmtch1.htm'
	this.url7_7_1 = 'puzmtch2.htm'
	this.url7_7_2 = 'puzmtch3.htm'
	this.url7_7_3 = 'puzsrch1.htm'
	this.url7_7_4 = 'puzsrch2.htm'
	this.url7_7_5 = 'puzsrch3.htm'



}///////////////////////// END Menu Data /////////////////////////////////////////


