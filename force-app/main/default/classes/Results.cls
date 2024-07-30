/**
 * Represents a collection of results in a transaction.
 */
public class Results {
    private static List<Result> results = new List<Result>();
    private static Boolean hasErrors = false;

    /**
     * Whenever the results are collected, we clear up the
     * buffer so new results can be collected and analyzed
     * further by the implementation.
     */
    public static List<Result> collect() {
        List<Result> temp = results;

        clear();

        return temp;
    }

    /**
     * Clear results.
     */
    private static void clear() {
        hasErrors = false;
        results = new List<Result>();
    }

    /**
     * Equivalent to "add" in a list, for the results.
     * Replaces the name to make code reading easier.
     */
    public static void yield(Result r) {
        if (!hasErrors && r.isFailure()) {
            hasErrors = true;
        }

        results.add(r);
    }

    /**
     * Quick access to a "do we have errors in this collection of resuilts?"
     * type of question. Returns a boolean.
     */
    public static Boolean hasErrors() {
        return hasErrors;
    }
}
