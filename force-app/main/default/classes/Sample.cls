public class Sample {
    public static Result checkIfGreaterThan100(Integer n) {
        if (n > 100) {
            return Result.Failure(
                new Result.Error('It can not be higher than 100!')
            );
        }

        return Result.Success();
    }

    public static List<Result> checkifGreaterThan100ForMultipleItems(
        List<Integer> ns
    ) {
        for (Integer n : ns) {
            Results.yield(checkIfGreaterThan100(n));
        }

        return Results.collect();
    }
}
