@IsTest
private class ResultsTest {
    @IsTest
    private static void test() {
        // When
        Results.yield(new Result(false, new Result.Error('something wrong')));

        // Then
        System.assertEquals(
            true,
            Results.hasErrors(),
            'It should indicate that there is an error in the results buffer.'
        );

        // When
        List<Result> resultsList = Results.collect();

        // Then
        System.assertEquals(
            1,
            resultsList.size(),
            'Should contain one result.'
        );
        System.assertEquals(
            false,
            Results.hasErrors(),
            'It should indicate that there are no errors in the results buffer (it has been cleared).'
        );
    }
}
