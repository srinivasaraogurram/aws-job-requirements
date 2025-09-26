# Advanced TypeScript Interview Questions

## 1. What are Type Guards in TypeScript?
**Answer:**
Type guards are techniques used to check the type of a variable at runtime, allowing for safer code and better type inference.

**Example:**
```typescript
function isString(value: unknown): value is string {
  return typeof value === 'string';
}

function printValue(value: unknown) {
  if (isString(value)) {
    console.log(value.toUpperCase());
  }
}
```

## 2. What is Declaration Merging?
**Answer:**
Declaration merging is a feature where TypeScript combines multiple declarations with the same name into a single definition.

**Example:**
```typescript
interface User {
  id: number;
}

interface User {
  name: string;
}

const user: User = { id: 1, name: "Alice" };
```

## 3. How do you use Mapped Types?
**Answer:**
Mapped types allow you to create new types by transforming properties of existing types.

**Example:**
```typescript
type ReadonlyUser = {
  readonly [K in keyof User]: User[K];
};
```

## 4. What are Conditional Types?
**Answer:**
Conditional types provide type logic based on conditions, similar to ternary operators for types.

**Example:**
```typescript
type IsString<T> = T extends string ? true : false;
```

## 5. How do you use Utility Types in TypeScript?
**Answer:**
Utility types like `Partial<T>`, `Pick<T, K>`, and `Record<K, T>` help manipulate and transform types easily.

**Example:**
```typescript
interface User {
  id: number;
  name: string;
}

const partialUser: Partial<User> = { name: "Bob" };
```
