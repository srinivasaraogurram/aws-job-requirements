# TypeScript Tutorial & Hands-On Practice

## 1. Introduction to TypeScript
TypeScript is a statically typed superset of JavaScript that compiles to plain JavaScript. It helps catch errors early and improves code maintainability.

---

## 2. Basic Types Tutorial
```typescript
let age: number = 30;
let name: string = "Alice";
let isActive: boolean = true;
```
**Explanation:**
- Declares variables with explicit types.

---

## 3. Interfaces Tutorial
```typescript
interface User {
  id: number;
  name: string;
}
const user: User = { id: 1, name: "Alice" };
```
**Explanation:**
- Defines the shape of an object.

---

## 4. Classes & Inheritance Tutorial
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
dog.speak();
```
**Explanation:**
- Shows class inheritance and method overriding.

---

## 5. Generics Tutorial
```typescript
function identity<T>(arg: T): T {
  return arg;
}
console.log(identity<string>("Hello"));
console.log(identity<number>(42));
```
**Explanation:**
- Generic functions work with any type.

---

## Practice Exercise
1. Create an interface for a product.
2. Write a class that implements the interface.
3. Use generics to write a reusable function.
4. Try type guards to check variable types.

Practice these examples in a TypeScript environment to master the concepts!
