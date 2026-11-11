public with sharing class GreetingService {
  @AuraEnabled(cacheable=true)
  public static String getGreeting(String name) {
    String who = String.isBlank(name) ? 'World' : name;
    return 'Hello, ' + who + '!';
  }
}
