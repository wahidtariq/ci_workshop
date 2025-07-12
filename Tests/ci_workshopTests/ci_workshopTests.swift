import Testing
@testable import ci_workshop

@Test func shouldFailWhenAgeIsLowerThenAccepted() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let sut = VotingSystem()
    #expect(sut.isEligibleForVote(age: 17) == false)
}

@Test func shouldPassWhenAgeIsGreatorThenAccepted() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let sut = VotingSystem()
    #expect(sut.isEligibleForVote(age: 19) == true)
}

@Test func shouldPassWhenAgeIsEqualToAcceptedAge() async throws {
    // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    let sut = VotingSystem()
    #expect(sut.isEligibleForVote(age: 18) == true)
}
