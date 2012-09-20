package com.chrisjamesmoore.tools {
	/**
	 *	[StringUtils]
	 * 
	 *	@author			Chris Moore
	 *	@author			Jason Cook
	 *	@version		1.0.6
	 *	@date			Nov 19, 2009
	 *	@client				
	 *	@project
	 *	@producer
	 *	@langversion	ActionScript 3.0
	 *	@playerversion	Flash Player 9
	 *
	 *	@history 1.0.6 (2009.11.18) Refactored for AS3 framework.
	 *	@history 1.0.5 (2008.10.24) Ported to ActionScript 3.
	 *  @history 1.0.4 (2007.04.26) Added createNoCacheString method.
	 *  @history 1.0.3 (2007.04.26) Added truncate method.
	 *  @history 1.0.2 (2007.02.08) Ported class to com.tuesday.package.
	 *  @history 1.0.1 (2007.07.07) Modified class to match other classes in com.tuesday.tools package.
	 *  @history 1.0.0 (2006.09.25) Wrote initial version of StringUtils.
	 */
	
	//--------------------------------------------------
	// IMPORT STATEMENTS
	//--------------------------------------------------
	
	public class StringUtils {
	
		//--------------------------------------------------
		// PUBLIC STATIC PROPERTIES
		//--------------------------------------------------
		
		/**
		 *	The fully qualifed class name and path. This can be accessed from the class but the value
		 * 	can also be retrieved from the instance using the getter fullyQualifedClassPath
		 */
		public static var FULLY_QUALIFIED_CLASS_PATH: String = "com.chrisjamesmoore.tools.StringUtils";
		
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
		 * Private empty constructor. This class cannot be instantiated.
		 */
		public function StringUtils() {};
		
		//--------------------------------------------------
		// GETTERS / SETTERS
		//--------------------------------------------------
		
		/**
		 *	Returns the fully qualified class path which includes the class package and class name as a string
		 *	@return	-	String representing the full class path.
		 *						For example: com.chrisjamesmoore.tools.StringUtils
		 */
		public function get fullyQualifiedClassPath(): String
		{
			return  StringUtils.FULLY_QUALIFIED_CLASS_PATH;
		}
		
		//--------------------------------------------------
		// EVENT HANDLERS
		//--------------------------------------------------
		
		//--------------------------------------------------
		// PUBLIC METHODS
		//--------------------------------------------------
		
		/**
		 * Search through a string and replace all occurances of one string with another.
		 * @param	searchString	(String) The string to search through.
		 * @param	find			(String) The string to find in the searchString.
		 * @param	replace			(String) The string to replace the find string with.
		 * @return (String) A string with the search string replaced with the replacement string.
		 */
		public static function searchAndReplace(searchString:String, find:String, replace:String):String 
		{
			
			var tempArray:Array = searchString.split(find);
			return tempArray.join(replace);
		}
		
		/**
		 * Truncate a string to a certain number of characters and ad an optional character (like an ellepsis �) to the end.
		 * @param	s				(String) The string to truncate.
		 * @param	length			(Number) The number of characters the return string should have.
		 * @param	extension		(String) The string to append to the end of the return string (like �). Optional.
		 * @return (String) A truncated version of the original string.
		 */
		public static function truncate(s:String, length:Number, extension:String=null):String 
		{
			s = String(s);
			
			if (length >= s.length) {
				return s;
			}
	
			if (extension == null) 
			{
				extension = "";
			}
	
			if (s.substring(length - 1, length) == " ") 
			{
				return s.substr(0, length - 1) + extension;
			} else {
				return s.substr(0, length) + extension;
			}
		}
		
		/**
		 *	Validates an email string
		 *	@param 	 email	(String) string to be evaluated
		 *	@return	(Boolean)
		 */
		public static function validateEmail(email:String):Boolean 
		{
			var emailExpression:RegExp = /^[a-z][\w.-]+@\w[\w.-]+\.[\w.-]*[a-z][a-z]$/i;
			return emailExpression.test(email);
		}
		
		/**
		 * Check a string for boolean value true or false.
		 * @param s (String) a boolean value in string format.
		 * @return (Boolean) 
		 */
		public static function checkBoolean(s:String):Boolean 
		{
			if(s.toUpperCase() == "TRUE") {
				return true; 
			} else {
				return false;
			}
		}
		
		/**
		 * Create a random string to be used in defeating caches.
		 * @return (String) A a random string to be used is defeating caches.
		 */
		public static function createNoCacheString():String 
		{
			var d:Date = new Date();
			return d.getFullYear().toString()+d.getMonth().toString()+d.getDate().toString()+d.getHours().toString()+d.getMinutes().toString()+d.getSeconds().toString()+d.getMilliseconds().toString()+Math.round(Math.random()*1000).toString();
		}
		
		/**
		 * Adds characters to the beginning of a string.
		 * @return (String) A string representation of this instance.
		 */
		public static function addPrefix(s:String, add:String, limit:int):String 
		{
			var new_string:String = s;
			
			while(new_string.length < limit) {
				new_string = add + new_string;
			}
			
			return new_string;
		}
	}
}
