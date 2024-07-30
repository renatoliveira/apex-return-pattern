# Result Pattern (in Apex)

This repository contains the base classes for the implementation of the Result Pattern, as seen in some C# examples, such as the [blog post by Milan Jovanović](https://www.milanjovanovic.tech/blog/functional-error-handling-in-dotnet-with-the-result-pattern).

## Usage

Using a Result class allwows you to express the intent that a method could fail and encapsulate an application error inside.

See the `Sample.cls` class:

```java
public static Result checkIfGreaterThan100(Integer n) {
    if (n > 100) {
        return Result.Failure(new Result.Error('It can not be higher than 100!'));
    }

    return Result.Success();
}

public static List<Result> checkifGreaterThan100ForMultipleItems(List<Integer> ns) {
    for (Integer n : ns) {
        Results.yield(checkIfGreaterThan100(n));
    }

    return Results.collect();
}
```
