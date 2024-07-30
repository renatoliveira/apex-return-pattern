/**
 * Represents a result of some code execution in your code.
 */
public class Result {
    private Boolean isSuccess;
    private Error error;

    /**
     * The constructor receives a boolean value to represent its success and
     * an error, if the result represents one.
     */
    public Result(Boolean isSuccess, Result.Error error) {
        // Check if the two parameters are coherent.
        if ((isSuccess && error != null) || (!isSuccess && error == null)) {
            throw new IllegalArgumentException('Invalid error: ' + error);
        }

        // Assign the values to the internal variables and finish.
        this.isSuccess = isSuccess;
        this.error = error;
    }

    public Boolean isSuccess() {
        return this.isSuccess;
    }

    public Boolean isFailure() {
        return !this.isSuccess;
    }

    /**
     * Creates a Failure result.
     */
    @SuppressWarnings('PMD.MethodNamingConventions')
    public static Result Failure(Error err) {
        return new Result(false, err);
    }

    /**
     * Creates a Success result.
     */
    @SuppressWarnings('PMD.MethodNamingConventions')
    public static Result Success() {
        return new Result(true, null);
    }

    /**
     * Base error class, with an optional message.
     */
    public class Error {
        private String message;

        public Error() {
            this.message = '';
        }

        public Error(String message) {
            this.message = message;
        }
    }
}
