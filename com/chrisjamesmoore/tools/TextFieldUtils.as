package com.chrisjamesmoore.tools {
	import flash.text.TextFieldType;
	import flash.text.TextFieldAutoSize;
	import flash.text.TextFormatAlign;
	import flash.text.AntiAliasType;
	import flash.text.TextFormat;
	import flash.text.TextField;
	
	/**
	 * [TextFieldUtils]
	 * 
	 * @author			Chris Moore
	 * @version		1.0.0
	 * @date			Apr 18, 2011
	 * @client				
	 * @project
	 * @producer
	 * @langversion	ActionScript 3.0
	 * @playerversion	Flash Player 10
	 *
	 * @history 1.0.0 (2011.04.18) Wrote initial version of TextFieldUtils.
	 */
	public class TextFieldUtils {
	
		//--------------------------------------------------
		// PUBLIC STATIC PROPERTIES
		//--------------------------------------------------
		
		/**
		 * The fully qualifed class name and path. This can be accessed from the class but the value
		 * can also be retrieved from the instance using the getter fullyQualifedClassPath
		 */
		public static var FULLY_QUALIFIED_CLASS_PATH: String = "com.chrisjamesmoore.tools.TextFieldUtils";
		
		//--------------------------------------------------
		// PRIVATE STATIC PROPERTIES
		//--------------------------------------------------
		
		/**
		 * A boolean flag indicating 
		 */
		private static var _embed_fonts:Boolean = true;
		
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
		public function TextFieldUtils() {};
		
		//--------------------------------------------------
		// GETTERS / SETTERS
		//--------------------------------------------------
		
		/**
		 *	Returns the fully qualified class path which includes the class package and class name as a string
		 *	@return	-	String representing the full class path.
		 *						For example: com.chrisjamesmoore.tools.TextFieldUtils
		 */
		public function get fullyQualifiedClassPath(): String
		{
			return  TextFieldUtils.FULLY_QUALIFIED_CLASS_PATH;
		}
		
		public static function set embed_fonts(b:Boolean) : void
		{
			_embed_fonts = b;
		}
		
		//--------------------------------------------------
		// EVENT HANDLERS
		//--------------------------------------------------
		
		//--------------------------------------------------
		// PUBLIC METHODS
		//--------------------------------------------------
		
		// TODO: use object to pass parameters, check SoundManager.playSound for reference
		
		/**
		 * Create a dynamic TextField with the following properties
		 * @param 	args			(Object) Refers to the following parameters: 
		 * 			font			(String) The fontName of an existing font in the library, default 'Arial'
		 * 			size			(int) Font size, default 12
		 * 			color			(int) Text color, default 0x000000
		 * 			maxChars		(int) Maximum characters allowed, used with input. default 0 
		 * 			autoSize		(String) Auto size property, default TextFieldAutoSize.LEFT
		 * 			type			(String) TextField type, default TextFieldType.DYNAMIC
		 * 			width			(int) Width of field, default 100
		 * 			height			(int) Height of field, default 20
		 * 			input			(Boolean) Input TextField, default false
		 * 			leading			(Number) Leading amount, default 0
		 * 			letterSpacing	(Number) Letter spacing amount, kerning. default 0 
		 * 			multiline		(Boolean) Multiline TextField, default false
		 * 			wrap			(Boolean) Text wrap, default false
		 * 			selectable		(Boolean) Selectable text, default false
		 * 			bold			(Boolean) Bold text, default false
		 * 			align			(String) Text alignment
		 * @return 					(TextField) A formatted a TextField
		 */
		public static function createDynamicTextField(args:Object=null):TextField 
		{
			// create local variables for text definitions
			var tf:TextField = new TextField();
			var tfm:TextFormat = new TextFormat();
			var font:String = "Arial";
			var size:int = 12;
			var color:int = 0x000000;
			var autoSize:String = TextFieldAutoSize.LEFT;
			var align:String = TextFormatAlign.LEFT;
			var width:int = 100;
			var height:int = 20;
			var input:Boolean = false;
			var leading:Number = 0;
			var letterSpacing:Number = 0;
			var multiline:Boolean = false;
			var wrap:Boolean = false;
			var selectable:Boolean = false;
			var bold:Object = null;
			var type:String = TextFieldType.DYNAMIC;
			var maxChars:int = 0;
			
			// override initial variables if specified in args object
			if(args != null) {
				if((typeof args["font"]) == "string") font = args["font"];
				if((typeof args["size"]) == "number") size = args["size"];
				if((typeof args["color"]) == "number") color = args["color"];
				if((typeof args["maxChars"]) == "number") maxChars = args["maxChars"];
				if((typeof args["autoSize"]) == "string") autoSize = args["autoSize"];
				if((typeof args["align"]) == "string") align = args["align"];
				if((typeof args["type"]) == "string") type = args["type"];
				if((typeof args["width"]) == "number") width = args["width"];
				if((typeof args["height"]) == "number") height = args["height"];
				if((typeof args["leading"]) == "number") leading = args["leading"];
				if((typeof args["letterSpacing"]) == "number") letterSpacing = args["letterSpacing"];
				if(args["input"] != null) input = args["input"];
				if(args["wrap"] != null) wrap = args["wrap"];
				if(args["selectable"] != null) selectable = args["selectable"];
				if(args["bold"] != null) bold = args["bold"];
				if(args["multiline"] != null) multiline = args["multiline"];
			}
			
			// define TextFormat
			tfm.font = font;
			tfm.size = size;
			tfm.color = color;
			tfm.align = align;
			tfm.leading = leading;
			tfm.letterSpacing = letterSpacing;
			tfm.bold = bold;
			
			// define TextField
			tf.defaultTextFormat = tfm;
			tf.maxChars = maxChars;
			tf.type = type;
			tf.embedFonts = _embed_fonts;
			tf.width = width;
			tf.height = height;
			tf.multiline = multiline;
			tf.wordWrap = wrap;
			tf.selectable = selectable;
			tf.autoSize = autoSize;
			tf.antiAliasType = AntiAliasType.ADVANCED;
			
			return tf;
		}
		
		//--------------------------------------------------
		// PRIVATE METHODS
		//--------------------------------------------------
		
		
		
		
		
		
		
		
		
		
	}
}
