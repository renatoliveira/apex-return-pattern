@IsTest
private class SampleTest {
    @IsTest
    static void test() {
        Result r = Sample.checkIfGreaterThan100(100);

        System.assertEquals(
            r.isSuccess(),
            true,
            'Should have been a success result.'
        );

        r = Sample.checkIfGreaterThan100(101);

        System.assertEquals(
            r.isFailure(),
            true,
            'Should have been a failure result.'
        );

        List<Result> rs = Sample.checkifGreaterThan100ForMultipleItems(
            new List<Integer>{ 100, 101 }
        );

        System.assertEquals(
            rs[0].isSuccess(),
            true,
            'Should have been a success result.'
        );
        System.assertEquals(
            rs[1].isFailure(),
            true,
            'Should have been a success result.'
        );

        System.assertEquals(
            Results.hasErrors(),
            true,
            'Should know that the collection has errors.'
        );
    }
}
