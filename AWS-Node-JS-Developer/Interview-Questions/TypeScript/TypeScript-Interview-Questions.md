# TypeScript Interview Questions

## 1. What is TypeScript and how is it different from JavaScript?
**Answer:**
TypeScript is a superset of JavaScript that adds static typing. It allows developers to catch errors at compile time rather than runtime. TypeScript code is transpiled to JavaScript for execution.

**Example:**
```typescript
// TypeScript Example
function add(a: number, b: number): number {
  return a + b;
}

console.log(add(2, 3)); // Output: 5
```

## 2. What are interfaces in TypeScript?
**Answer:**
Interfaces define the shape of an object, specifying property names and types. They help enforce structure and type safety.

**Example:**
```typescript
interface User {
  id: number;
  name: string;
}

const user: User = { id: 1, name: "Alice" };
```

## 3. How does TypeScript support classes and inheritance?
**Answer:**
TypeScript supports ES6 classes and inheritance, allowing you to create reusable and extendable code structures.

**Example:**
```typescript
class Animal {
  constructor(public name: string) {}
  speak() {
    console.log(`${this.name} makes a sound.`);
  }
}

class Dog extends Animal {
  speak() {
    console.log(`${this.name} barks.`);
  }
}

const dog = new Dog("Rex");
dog.speak(); // Output: Rex barks.
```

## 4. What are generics in TypeScript?
**Answer:**
Generics allow you to write reusable code components that work with any data type.

**Example:**
```typescript
function identity<T>(arg: T): T {
  return arg;
}

console.log(identity<string>("Hello")); // Output: Hello
console.log(identity<number>(42)); // Output: 42
```

## 5. How do you use enums in TypeScript?
**Answer:**
Enums are a way to define a set of named constants. They make code more readable and maintainable.

**Example:**
```typescript
enum Direction {
  Up,
  Down,
  Left,
  Right
}

let move: Direction = Direction.Up;
console.log(move); // Output: 0
```
