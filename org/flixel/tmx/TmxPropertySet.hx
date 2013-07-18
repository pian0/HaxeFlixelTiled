/*******************************************************************************
 * Copyright (c) 2012 by Adrien Fischer (original by Matt Tuttle based on Thomas Jahn's )
 * This content is released under the MIT License.
 * For questions mail me at adrien@revolugame.com
 ******************************************************************************/
package org.flixel.tmx;

import haxe.ds.StringMap;
import haxe.xml.Fast;

class TmxPropertySet extends StringMap<String>
{
	
	public function new()
	{
        super();
	}
	
	public function extend(source:Fast)
	{
		var prop:Fast;
		for (prop in source.nodes.property)
		{
			set(prop.att.name, prop.att.value);
		}
	}
}
