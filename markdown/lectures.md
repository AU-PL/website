---
title: Lectures
toc: false
---

## Schedule

---

- Week 1: 1/06 - 1/11
  - T: [Introduction to the Course](includes/lecture-notes/slides/1-introduction-to-the-course.pdf)
  - R: [Names, Functions, Types](includes/lecture-notes/slides/2-names-functions-and-types.pdf)
    - Read: Chapter 2 in OCaml Book
    - Topics: Syntax design of PLs, basic functions and types in OCaml.

---

- Week 2: 1/13 - 1/17
  - T: [Recursive Functions and their Evaluation](includes/lecture-notes/slides/3-recursive-functions-act-records.pdf)
    - Topics: Evaluation of recursive functions using activation records.
    - Read: Chapter 2 in OCaml Book
  - R: [Performance and Optimization of Recursive
    Functions](includes/lecture-notes/slides/performance-recursive-functions.pdf) 
    - Topics: tail call optimization, which PLs support it, and which don't.
    - Read: Chapter 2 in OCaml Book    

---

- Week 3: 1/20 - 1/24
  - T: No Class (Snow Day)
  - R: No Class (Snow Day)
  
---

- Week 4: 1/27 - 1/31
  - T: [Algebraic Datatypes: A PL Modern Marvel](includes/lecture-notes/slides/5-ADTs.pdf)
    - Topics: ADTs, pattern matching
    - Read: Chapter 10 of OCaml Book
  - R: No Class
    - Homework 1 

---

- Week 5: 2/03 - 2/07
  - T: [Functional Programming: A Brief Introduction](includes/lecture-notes/slides/6-FP.pdf)
    - Topics: lambda-abstractions, higher-order functions, combinators 
    - [Video](https://youtu.be/r1sEN-Mi5Yc)
  - R: Lab Day

---

- Week 6: 2/10 - 2/14
  - T: [OOP in OCaml](includes/lecture-notes/slides/7-OOP.pdf)
  - R: Lab Day
    - Homework 2 

---

- Week 7: 2/17 - 2/21
  - T: No Class (Midterm Exam)  
  - R: No Class (Midterm Exam)  

---

- Week 8: 2/24 - 2/28
  - T: [Concrete Syntax](includes/lecture-notes/slides/8-concrete-syntax.pdf) / [Inductive Definitions: Inference Rules, Deductions, Logic Programming](includes/lecture-notes/slides/9-inductive-defs.pdf)
    - Topics: concrete syntax, abstract syntax, parsing, context-free grammars, ambiguity, parse trees    
    - Topics: The tool we use to specify algorithms used by a PL, and we also introduce Logic Programming.                
  - R: Lab Day
  
---

- Week 9: 3/03 - 3/07
  - T: [Abstract Syntax](includes/lecture-notes/slides/10-abstract-syntax.pdf)
    - Topics: Internal representation of a PL by a compiler.  
  - R: No Class (Spring Pause)

---

- Week 10: 3/10 - 3/14
  - T: [Abstract Syntax](includes/lecture-notes/slides/10-abstract-syntax.pdf)
    - Topics: Internal representation of a PL by a compiler.  
    
  - R: Type Safety: Well Typed Programs Don't Go Wrong!
    - MiniOCaml: Add a small step semantics with arbitrary recursion.
    - Topics: A very important property of a PL.    
    - Homework 3

---

- Week 11: 3/17 - 3/21
  - T: Abstract Machines
    - Topics: Specifying and implementing the evaluation programs.  We will define an abstract machine for miniOCaml.        
  - R: Progress: Characterizing the values of a PL
    - Topics: An important property regarding evaluation of programs.

---

- Week 12: 3/24 - 3/28
  - T: Parametric Polymorphism (Generics)
    - Topics: The definition of polymorphism or commonly called
      generics will be discussed. We will add polymorphism to
      miniOCaml as an example. 
  - R: Data Abstraction: The first step to object orientation.
    - Topics: The use of existential types to hide data in a type safe
      way is discussed.  We will add existential types to miniOCaml as
      an example.  
    - Homework 4
    
---

- Week 13: 3/31 - 4/04
  - T: Organizing Programs using Records: The second step to object orientation.
    - Topics: We move a bit closer to OOP by introducing records.  A
      simple way to organize the structure of programs and data.  We
      will add records to miniOCaml as an example.       
  - R: Mutable Storage: State is the third step to object orientation.
    - Topics: Two types of mutable storage designs are discussed: the
      imperative style where types do not track effects, but the
      evaluation rules have to track storage, and the type-based
      design were types track all effects, but the evaluation remains
      pure.  We add imperative style effects to miniOCaml as an
      example, and show that the other style can also be used in
      miniOCaml.          

---

- Week 14: 11/11 - 11/15
  - T: No Class (Spring Break)
  - R: No Class (Sprint Break)

---

- Week 15: 4/21 - 4/24
  - T: Object Orientation: Part I
    - Topics: We show that the combination of data abstract, records,
      and mutable storage results in the ability to define classes and
      objects.    
  - R: Object Orientation: Part II
    - Topics: We add subtyping to the mix to gain a surprising amount
      of power and expressivity for object-oriented programming.  We
      add subtyping to MiniOCaml as an example. 
    - Homework 5 

---

- Week 16: 4/28 - 5/02
  - T: Resource Typing: A new approach for catching common bugs.
    - Topics: We talk about how advances in type systems can be used
      to catch some of the most common programmer mistakes. These have
      lead to new languages like Rust, Swift, and new additions to
      Java Script. We add resource typing to miniOCaml as an example. 
    - Final Exam Released

  - R: No Class (Work on final exam)
    
---

- Week 17: 5/05 - 5/09
  - Final Due: 5/08 from 11-1

