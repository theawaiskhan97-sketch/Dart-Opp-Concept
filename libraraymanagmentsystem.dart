// ==========================
// Library Management System
// ==========================

// Book Class
class Book {
  String title;
  String author;
  bool isAvailable;

  // Constructor
  Book(this.title, this.author, this.isAvailable);

  // Display Book Information
  void displayBook() {
    print("Title: $title");
    print("Author: $author");
    print("Available: $isAvailable");
    print("-------------------");
  }
}

// Library Class
class Library {
  List<Book> books = [];

  // Add Book
  void addBook(Book book) {
    books.add(book);
    print("${book.title} added to library.\n");
  }

  // Display All Books
  void showBooks() {
    print("===== Library Books =====");

    for (var book in books) {
      book.displayBook();
    }
  }

  // Borrow Book
  void borrowBook(String title) {
    for (var book in books) {
      if (book.title == title && book.isAvailable) {
        book.isAvailable = false;
        print("$title borrowed successfully.\n");
        return;
      }
    }

    print("$title is not available.\n");
  }

  // Return Book
  void returnBook(String title) {
    for (var book in books) {
      if (book.title == title) {
        book.isAvailable = true;
        print("$title returned successfully.\n");
        return;
      }
    }

    print("Book not found.\n");
  }
}

void main() {
  // Create Library Object
  Library library = Library();

  // Create Books
  Book book1 = Book("Flutter for Beginners", "John Smith", true);

  Book book2 = Book("Dart Programming", "Awais Khan", true);

  Book book3 = Book("OOP Concepts", "Ali Ahmad", true);

  // Add Books to Library
  library.addBook(book1);
  library.addBook(book2);
  library.addBook(book3);

  // Show All Books
  library.showBooks();

  // Borrow Book
  library.borrowBook("Dart Programming");

  // Show Books Again
  library.showBooks();

  // Return Book
  library.returnBook("Dart Programming");

  // Show Books Again
  library.showBooks();
}
