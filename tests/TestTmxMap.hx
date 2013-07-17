package;

import org.flixel.tmx.TmxMap;

class TestTmxMap extends haxe.unit.TestCase
{
    private var mMap : TmxMap;
    
    override public function setup()
    {
        mMap = new TmxMap("<?xml version='1.0' encoding='UTF-8'?><map version='1.0' orientation='orthogonal' width='4' height='6' tilewidth='2' tileheight='1'/>",
                          "assets/test/map.tmx");
    }

    public function testRelativePath()
    {
        assertEquals(mMap.relativePath("tiles.tsx"),
                     "assets/test/tiles.tsx");
        assertEquals(mMap.relativePath("../tiles/tiles.png"),
                     "assets/tiles/tiles.png");
    }
}
