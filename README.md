# portsmouth_handicap
Portsmouth Handicap Data is used by the sailboat racing community to allow sailboats of various sizes and classes to race together and have a fair outcome. These races are typically called 'Handicap' races and the Portsmouth DPN (handicap) is used to adjust the time/score. For example, a DPN of a sailboat that is 80 means that on an ideal course with ideal crew and conditions the sailboat would finish the course is 80 minutes. A DPN of 99 for a different type of sailboat would mean that under the same ideal conditions with an ideal crew on the same course this boat would finish in 99 minutes. So if the first sailboat finished in 80 minutes and the second sailboat finished in 98 minutes the second sailboat would be the winner even though the second sailboat would have been 18 minutes slower on the race course.

This app provides the Portsmouth data set in an app form and has a search feature allowing a user to quickly find their boat DPN. Currently the Portsmouth data, before this app, is only available as a PDF file and must be manually searched.

## Bloc Architecture 
- Cubit
- State
- Repository can access data either remote API or local storage.
  - Data: remote API using the DIO package GET feature.
  - Data: local using JSON data file.
### Packages used:
- flutter_bloc: ^8.1.3 https://bloclibrary.dev/#/
- equatable: ^2.0.0
  - A Dart package that helps to implement value based equality without needing to explicitly override == and hashCode.
- dio: ^5.3.3 
  - A powerful HTTP networking package, supports Interceptors, Aborting and canceling a request, Custom adapters, Transformers, etc.
- mocktail: ^1.0.1 
  - A Dart mock library which simplifies mocking with null safety support and no manual mocks or code generation.
- go_router: ^11.1.4
  - A declarative router for Flutter based on Navigation 2 supporting deep linking, data-driven routes and more