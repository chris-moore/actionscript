package com.chrisjamesmoore.tools {
	import flash.display.DisplayObject;
	import flash.display.Sprite;
	
	/**
	 *	[MovieClipUtils]
	 * 
	 *	@class			MovieClipUtils
	 *	@author
	 *	@version		1.0.0
	 *	@date			May 24, 2011
	 *	@client				
	 *	@project
	 *	@producer
	 *	@langversion	ActionScript 3.0
	 *	@playerversion	Flash Player 9
	 *
	 *	@history 1.0.0 (May 24, 2011) Created initial version of MovieClipUtils for AS3.
	 */
	public class MovieClipUtils {
	
		//--------------------------------------------------
		// PUBLIC STATIC PROPERTIES
		//--------------------------------------------------
		
		/**
		 *	The fully qualifed class name and path. This can be accessed from the class but the value
		 * 	can also be retrieved from the instance using the getter fullyQualifedClassPath
		 */
		public static var FULLY_QUALIFIED_CLASS_PATH: String = "com.chrisjamesmoore.tools.MovieClipUtils";
		
		//--------------------------------------------------
		// PRIVATE STATIC PROPERTIES
		//--------------------------------------------------
		
		//--------------------------------------------------
		// PUBLIC PROPERTIES
		//--------------------------------------------------
		
		//--------------------------------------------------
		// PRIVATE PROPERTIES
		//--------------------------------------------------
		
		//--------------------------------------------------
		// CONSTRUCTOR
		//--------------------------------------------------
		
		/**
		 *	Constructor
		 */
		public function MovieClipUtils(){ }
		
		//--------------------------------------------------
		// GETTERS / SETTERS
		//--------------------------------------------------
		
		//--------------------------------------------------
		// EVENT HANDLERS
		//--------------------------------------------------
		
		//--------------------------------------------------
		// PUBLIC METHODS
		//--------------------------------------------------
		
		/**
		 *	Create a new Sprite with its content centered at the registration point
		 *	@param target 	(DisplayObject) Object to center. Target's x and y coordinates will be changed.
		 *	@return	Sprite
		 */
		public static function createCenteredSprite(target:DisplayObject):Sprite
		{
			var mc:Sprite = new Sprite();
			
			target.x = -Math.round(target.width/2);
			target.y = -Math.round(target.height/2);
			
			mc.addChild(target);
			
			return mc;
		}
		
		/**
		 *	Removes all children in a DisplayObject
		 *	@param mc 		(Sprite)
		 *	@return	void
		 */
		public static function clearDisplayList(mc:Sprite):void
		{
			while( mc.numChildren > 0 ){ mc.removeChildAt(0); }
		}
		
		/**
		 *	Trace all DisplayObjects within a sprite
		 *	@param mc 		(Sprite) Sprite to trace DisplayObjects from
		 *	@param level 	(int) Debug level to trace
		 *	@return	void
		 */
		public static function traceDisplayList(mc:Sprite, level:int=3):void
		{
			doTrace(mc, level);
		}
		
		//--------------------------------------------------
		// PRIVATE METHODS
		//--------------------------------------------------
		
		/**
		 *	Does the trace work for the traceDisplayList method
		 *	@param mc 		(Sprite) Sprite to be traced
		 *	@param level 	(int) Debug level to trace
		 *	@param parent 	(String) Parent string passed down for each object
		 *	@return	void
		 */
		private static function doTrace(mc:Sprite, level:int=3, parent:String=""):void
		{
			for(var i:int = 0; i < mc.numChildren; i++) {
				trace("[" + FULLY_QUALIFIED_CLASS_PATH + ".traceDisplayList] " + parent + mc.name + " "+mc, level);
				try {
					doTrace(Sprite(mc.getChildAt(i)), level, parent+mc.name+".");
				} catch (e : Error) { 
					trace("[" + FULLY_QUALIFIED_CLASS_PATH + ".traceDisplayList] " + parent+mc.name+"." + mc.getChildAt(i).name + " "+mc.getChildAt(i), level); 
				}
			}
		}
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
	}
}