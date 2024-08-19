---
title: Lectures
toc: false
---

## Schedule

---

- Week 1: 8/12 - 8/16
  - M: No Class
  - W: [Introduction to the Course](includes/lecture-notes/slides/1-introduction-to-the-course.pdf)

---

- Week 2: 8/19 - 8/23
  - M: [Names, Functions, Types](includes/lecture-notes/slides/2-names-functions-and-types.pdf)
    - Read: Chapter 2 in OCaml Book
    - Topics: Syntax design of PLs, basic functions and types in OCaml.
  - W: Recursive Functions and their Evaluation
    - Topics: Evaluation of recursive functions using activation records.
    - Read: Chapter 2 in OCaml Book
    
---

- Week 3: 8/26 - 8/30
  - M: [Performance and Optimization of Recursive
    Functions](includes/lecture-notes/slides/performance-recursive-functions.pdf) 
    - Topics: tail call optimization, which PLs support it, and which don't.
    - Read: Chapter 2 in OCaml Book
  - W: Algebraic Datatypes: A PL Modern Marvel
    - Topics: ADTs, pattern matching
    - Read: Chapter 10 of OCaml Book
  - Homework 1  
  
---

- Week 4: 9/2 - 9/6
  - M: No Class (Labor Day)
  - W: Functional Programming: A Brief Introduction
    - Topics: lambda-abstractions, higher-order functions, combinators
  - Homework 2: TBA

---

- Week 5: 9/9 - 9/13
  - M: Concrete Syntax: The UI for PLs
    - Topics: concrete syntax, abstract syntax, parsing, context-free grammars, ambiguity, parse trees
  - W: Inductive Definitions: Inference Rules, Deductions, Logic Programming
    - Topics: The tool we use to specify algorithms used by a PL, and we also introduce Logic Programming.  

---

- Week 6: 9/16 - 9/20
  - M: Abstract Syntax
    - Topics: Internal representation of a PL by a compiler.    
  - W: Static and Dynamic Semantics: Analysis and Evaluation of Programs
    - Topics: Type checking and running programs.  
  - Homework 3: TBA

---

- Week 7: 9/23 - 9/27
  - M: Introducing a small PL: miniOCaml
    - Topics: miniOCaml is a small PL we will define and implement together.  
  - W: Introducing a small PL: miniOCaml
    - Topics: miniOCaml is a small PL we will define and implement together.  
    
---

- Week 8: Midterm: 9/30 - 10/4
  - M: Midterm Exam.
  - W: Midterm Exam.
  - Midterm: TBA
  
---

- Week 9: 10/7 - 10/11
  - M: Type Safety: Well Typed Programs Don't Go Wrong!
    - MiniOCaml: Add a small step semantics with arbitrary recursion.
    - Topics: A very important property of a PL.    
  - W: Abstract Machines
    - Topics: Specifying and implementing the evaluation programs.  We will define an abstract machine for miniOCaml.    
- Project: Start Date
    - Schedule Project Meeting

---

- Week 10: 10/14 - 10/18
  - M: Adding new structure to a PL.
    - Topics: We will discuss how adding new structures to a PL is
      done and how it ripples through the design.  As an example we
      will add some new types to miniOCaml.
  - W: Progress: Characterizing the values of a PL
    - Topics: An important property regarding evaluation of programs.
  - Homework 4: TBA

---

- Week 11: 10/21 - 10/25
  - M: Parametric Polymorphism (Generics)
    - Topics: The definition of polymorphism or commonly called
      generics will be discussed. We will add polymorphism to
      miniOCaml as an example. 
  - W: Data Abstraction: The first step to object orientation.
    - Topics: The use of existential types to hide data in a type safe
      way is discussed.  We will add existential types to miniOCaml as
      an example.  
  - Project: Meeting Due Date

---

- Week 12: 10/28 - 11/01
  - M: Organizing Programs using Records: The second step to object orientation.
    - Topics: We move a bit closer to OOP by introducing records.  A
      simple way to organize the structure of programs and data.  We
      will add records to miniOCaml as an example.       
  - W: Mutable Storage: State is the third step to object orientation.
    - Topics: Two types of mutable storage designs are discussed: the
      imperative style where types do not track effects, but the
      evaluation rules have to track storage, and the type-based
      design were types track all effects, but the evaluation remains
      pure.  We add imperative style effects to miniOCaml as an
      example, and show that the other style can also be used in
      miniOCaml.  
    
---

- Week 13: 11/4 - 11/8
  - M: Object Orientation: Part I
    - Topics: We show that the combination of data abstract, records,
      and mutable storage results in the ability to define classes and
      objects.            
  - W: Object Orientation: Part II
    - Topics: We add subtyping to the mix to gain a surprising amount
      of power and expressivity for object-oriented programming.  We
      add subtyping to MiniOCaml as an example.  

---

- Week 14: 11/11 - 11/15
  - M: Storage Management and Garbage Collection
    - Topics: We discuss two important parts of many modern
      programming languages: storage management and garbage
collection.
  - W: Evaluation Orders and Futures
    - Topics: We discuss the various evaluation orders, introduce
      call-by-need, and then futures.  We show how we would modify
miniOCaml to support call-by-need.
  - Project: Midpoint Report Due
  
---

- Week 15: 11/18 - 11/22
  - M: Resource Typing: A new approach for catching common bugs.
    - Topics: We talk about how advances in type systems can be used
      to catch some of the most common programmer mistakes. These have
      lead to new languages like Rust, Swift, and new additions to
      Java Script. We add resource typing to miniOCaml as an example. 
  - W: Resource Typing: A new approach for catching common bugs.
    - Topics: We talk about how advances in type systems can be used
      to catch some of the most common programmer mistakes. These have
      lead to new languages like Rust, Swift, and new additions to
      Java Script. We add resource typing to miniOCaml as an example. 

---

- Week 16: 11/25 - 11/29
  - M: Resource Typing: A new approach for catching common bugs.
    - Topics: We talk about how advances in type systems can be used
      to catch some of the most common programmer mistakes. These have
      lead to new languages like Rust, Swift, and new additions to
      Java Script. We add resource typing to miniOCaml as an example. 
  - W: No Class (Thanksgiving Break)
    
---

- Week 17: 12/2 - 12/6
  - M: No Class (Project Week)
  - W: No Class (Project Week)
  
---

- Week 18: 12/9 - 12/13
  - T (12/10): Project Presentations (Final Exam)

