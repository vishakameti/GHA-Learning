@IsTest
private class GreetingServiceTest {
  @IsTest
  static void returnsNamedGreeting() {
    System.assertEquals(
      'Hello, Vishaka!',
      GreetingService.getGreeting('Vishaka')
    );
  }

  @IsTest
  static void returnsDefaultGreetingWhenNameBlank() {
    System.assertEquals('Hello, World!', GreetingService.getGreeting(''));
  }
}
