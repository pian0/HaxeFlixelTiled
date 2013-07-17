package;

class Test
{
    static function main()
    {
        var runner = new haxe.unit.TestRunner();

        // runner.add(new TestCase())
        runner.add(new TestTmxMap());
        
        runner.run();
    }
}
