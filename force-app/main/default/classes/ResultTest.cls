@IsTest
private class ResultTest {
    @IsTest
    static void test() {
        Result re1 = Result.Success();
        Result re2 = Result.Failure(new Result.Error('something'));

        System.assertEquals(
            true,
            re1.isSuccess(),
            'Should indicate the true result outcome.'
        );
        System.assertEquals(
            false,
            re1.isFailure(),
            'Should indicate the true result outcome.'
        );
        System.assertEquals(
            false,
            re2.isSuccess(),
            'Should indicate the true result outcome.'
        );
        System.assertEquals(
            true,
            re2.isFailure(),
            'Should indicate the true result outcome.'
        );
    }
}
