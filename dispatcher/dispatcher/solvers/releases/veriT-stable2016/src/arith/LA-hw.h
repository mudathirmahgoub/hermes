/* -*- mode: C -*- */

/**
   \file LA-hw.h.tpl

   \brief Main entry point for linear arithmetics reasoning

   \details The implementation is based on the Simplex and follows the Technical
   Report SRI-CSL-06-01 by Bruno Dutertre and Leonardo de Moura.

   The module is backtracking and uses the global "undo" stack to synchronize
   its state with that of the rest of the reasoning engine.

   A typical usage scenario for this module is the following

   - LA_hw_init

   - One or several calls to LA_hw_notify_formula

   - A single call to LA_hw_simp realizes some simplifications that cannot be
   later backtracked.

   - One or several calls to LA_hw_assert, LA_hw_assert_eq, LA_hw_assert_neq

   - LA_hw_solve

   - Optionally, LA_hw_solve_z

   - LA_hw_conflict if the current set of constraints is unsatisfiable.

   - LA_hw_repair must be called to bring the module to a safe state, before
   asserting new constraints, and after a resolution step has led to
   unsatisfiability, and conflicting constraints have been removed.

   - LA_hw_model_eq if the current set of constraints is satisfiable.

   - LA_hw_done.

 */

#ifndef LA_HW_H
#define LA_HW_H

#include "literal.h"
#ifdef PROOF
#include "proof.h"
#endif
#include "LA.h"

/**
   \brief initializes the module
   \remarks must be called before any other function of the module */
extern void     LA_hw_init(void);

/**
   \brief releases the module */
extern void     LA_hw_done(void);

/**
   \brief notifies the module that atoms from this DAG may be asserted
   positively or negatively, and equalities between arithmetic-relevant
   terms are to be given
   \param DAG a formula */
extern void     LA_hw_notify_formula(TDAG DAG);

/**
   \brief Finds entailment relationships between arithmetic lemmas.
   \remark The found lemmas are stacked onto veriT_lemmas.
   \remark The number of lemmas is bounded linearly by the number
   of literals.
*/
extern void     LA_hw_unate_propagation(void);

/**
   \brief asserts a literal
   \param lit a literal */
extern Tstatus  LA_hw_assert(Tlit lit);

/**
   \brief asserts an equality between two terms
   \param DAG1 a term
   \param DAG2 a term */
extern Tstatus  LA_hw_assert_eq(TDAG DAG1, TDAG DAG2);

/**
   \brief asserts the negation of an equality between two terms
   such that DAG1 != DAG2 is in the original formula
   \param DAG1 a term
   \param DAG2 a term */
extern Tstatus  LA_hw_assert_neq(TDAG DAG1, TDAG DAG2);

/**
   \brief check satisfiability of the set of given constraints in
   the theory of real numbers
   \return status of satisfiability after the check */
extern Tstatus  LA_hw_solve_r(void);

/**
   \brief check satisfiability of the set of given constraints in
   the theory of integers
   \return status of satisfiability after the check */
extern Tstatus  LA_hw_solve_z(void);

/**
   \brief simplifies the set of "facts", assuming the constraints already given
   will never be backtracked */
extern void     LA_hw_simp(void);

/**
   \brief puts the module back in a normal state
   \remark should be call on backtrack from an UNDEF or UNSAT state
   before any assert */
extern void     LA_hw_repair(void);

/**
   \brief Add to veriT_conflict the set of lits that led to the conflict
   \pre LA_status() yields UNSAT
   \return proof_id The proof of the conflict set */
extern void     LA_hw_conflict(void);
#ifdef PROOF
extern Tproof   LA_hw_conflict_proof(void);
#endif

/**
   \brief Add to veriT_conflict the set of lits that led to the conflict
   \pre LA_status() yields UNSAT
   \return proof_id The proof of the conflict set */
extern void     LA_hw_conflict_z(void);
#ifdef PROOF
extern Tproof   LA_hw_conflict_proof_z(void);
#endif

/**
   \brief Finds model equalities between shared variables
   \remark enqueue in xqueue the equalities
   \return true iff there has been equalities enqueued */
extern bool LA_hw_model_eq(void);

extern void LA_hw_hint_explain(Tlit);

extern int LA_hw_lit_satisfied(Tlit lit);

#endif /* LA_HW_H */
