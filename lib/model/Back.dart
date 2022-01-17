import 'main.dart';

class Backend {
  /// Singleton pattern used here.
  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();
  /// Private list of emails. Hardcoded here for testing purposes.
  final mails = [
    Mail(
      id: 631,
      from: 'noreply-maps-timeline@google.com',
      subject: 'Gabucho 14, aquí tienes la actualización de tu cronología del 2021',
      dateTime: '2020-10-03',
      body:
          'Uno de los argumentos más antiguos de los nocoiners (los críticos que nunca comprarían una criptomoneda) era “bitcoin jamás reemplazará a las monedas del mundo.',
    ),
    Mail(
      id: 522,
      from: 'criptoentuidioma@america.p.inversorglobal.com',
      subject: 'Declarative programming',
      dateTime: '2020-10-05',
      body:
          'Many languages that apply this style attempt to minimize or eliminate side effects by describing what the program must accomplish in terms of the problem domain, rather than describe how to accomplish it as a sequence of the programming language primitives (the how being left up to the language\'s implementation). This is in contrast with imperative programming, which implements algorithms in explicit steps.',
    ),
    Mail(
      id: 963,
      from: 'info@america.p.inversorglobal.com',
      subject: 'Imperative programming',
      dateTime: '2020-10-20',
      body:
          'In computer science, imperative programming is a programming paradigm that uses statements that change a program\'s state. In much the same way that the imperative mood in natural languages expresses commands, an imperative program consists of commands for the computer to perform. Imperative programming focuses on describing how a program operates.',
    ),
    Mail(
      id: 164,
      read: true,
      from: 'machine@code.com',
      subject: 'Machine code',
      dateTime: '2020-10-15',
      body:
          'In computer programming, machine code, consisting of machine language instructions, is a low-level programming language used to directly control a computer\'s central processing unit (CPU). Each instruction causes the CPU to perform a very specific task, such as a load, a store, a jump, or an arithmetic logic unit (ALU) operation on one or more units of data in the CPU\'s registers or memory.',
    ),
    Mail(
      id: 835,
      from: 'high-level@programminglanguage.com',
      subject: 'High-level programming language',
      dateTime: '2020-10-28',
      body:
          'In computer science, a high-level programming language is a programming language with strong abstraction from the details of the computer. In contrast to low-level programming languages, it may use natural language elements, be easier to use, or may automate (or even hide entirely) significant areas of computing systems (e.g. memory management), making the process of developing a program simpler and more understandable than when using a lower-level language. The amount of abstraction provided defines how "high-level" a programming language is.',
    ),
    Mail(
      id: 966,
      from: 'lexical@scope.com',
      subject: 'Lexical scope',
      dateTime: '2020-10-03',
      body:
          'For example, Pascal is lexically scoped. Consider the Pascal program fragment at right. The variable I is visible at all points, because it is never hidden by another variable of the same name. The char variable K is visible only in the main program because it is hidden by the real variable K visible in procedure B and C only. Variable L is also visible only in procedure B and C but it does not hide any other variable. Variable M is only visible in procedure C and therefore not accessible either from procedure B or the main program. Also, procedure C is visible only in procedure B and can therefore not be called from the main program.',
    ),
    Mail(
      id: 237,
      from: 'nested@function.com',
      subject: 'Nested function',
      dateTime: '2020-10-23',
      body:
          'In computer programming, a nested function (or nested procedure or subroutine) is a function which is defined within another function, the enclosing function. Due to simple recursive scope rules, a nested function is itself invisible outside of its immediately enclosing function, but can see (access) all local objects (data, functions, types, etc.) of its immediately enclosing function as well as of any function(s) which, in turn, encloses that function. The nesting is theoretically possible to unlimited depth, although only a few levels are normally used in practical programs.',
    ),
    Mail(
      id: 308,
      from: 'dynamic@programminglanguage.com',
      subject: 'Dynamic programming language',
      dateTime: '2020-10-01',
      body:
          'In computer science, a dynamic programming language is a class of high-level programming languages, which at runtime execute many common programming behaviours that static programming languages perform during compilation. These behaviors could include an extension of the program, by adding new code, by extending objects and definitions, or by modifying the type system. Although similar behaviors can be emulated in nearly any language, with varying degrees of difficulty, complexity and performance costs, dynamic languages provide direct tools to make use of them. Many of these features were first implemented as native features in the Lisp programming language.',
    ),
    Mail(
      id: 759,
      from: 'common@lisp.com',
      subject: 'Common Lisp',
      dateTime: '2020-10-06',
      body:
          'The Common Lisp language was developed as a standardized and improved successor of Maclisp. By the early 1980s several groups were already at work on diverse successors to MacLisp: Lisp Machine Lisp (aka ZetaLisp), Spice Lisp, NIL and S-1 Lisp. Common Lisp sought to unify, standardise, and extend the features of these MacLisp dialects. Common Lisp is not an implementation, but rather a language specification.',
    ),
    Mail(
      id: 810,
      from: 'object-oriented@programming.com',
      subject: 'Object-oriented programming',
      dateTime: '2020-10-21',
      body:
          'Object-oriented programming (OOP) is a programming paradigm based on the concept of "objects", which can contain data and code: data in the form of fields (often known as attributes or properties), and code, in the form of procedures (often known as methods).',
    ),
  ];

  ///
  /// Public API starts here :)
  ///

  /// Returns all emails.
  List<Mail> getMails() {
    return mails;
  }

  /// Marks email identified by its id as read.
  void markEmailAsRead(int id) {
    final index = mails.indexWhere((email) => email.id == id);
    mails[index].read = true;
  }

  /// Deletes email identified by its id.
  void deleteEmail(int id) {
    mails.removeWhere((email) => email.id == id);
  }
}
