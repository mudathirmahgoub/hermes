(set-logic QF_UFNRA)
(declare-fun FV9 () Int)
(declare-fun FV10 () Int)
(declare-sort hermes.iml.aadl.Connection_Real 0)
(declare-sort utrc.test1.S1 0)
(declare-sort utrc.test1.S2 0)
(declare-sort utrc.test1.S1__impl 0)
(declare-fun hermes.iml.aadl.Connection_Real.source (hermes.iml.aadl.Connection_Real) Real)
(declare-fun hermes.iml.aadl.Connection_Real.target (hermes.iml.aadl.Connection_Real) Real)
(declare-fun utrc.test1.S1.i1 (utrc.test1.S1) Real)
(declare-fun utrc.test1.S1.i2 (utrc.test1.S1) Real)
(declare-fun utrc.test1.S1.o1 (utrc.test1.S1) Real)
(declare-fun utrc.test1.S1.n (utrc.test1.S1) Int)
(declare-fun utrc.test1.S2.i1 (utrc.test1.S2) Real)
(declare-fun utrc.test1.S2.i2 (utrc.test1.S2) Real)
(declare-fun utrc.test1.S2.o1 (utrc.test1.S2) Real)
(declare-fun utrc.test1.S2.alpha (utrc.test1.S2) Real)
(declare-fun utrc.test1.S1__impl.S2_sub (utrc.test1.S1__impl) utrc.test1.S2)
(declare-fun utrc.test1.S1__impl.base_0 (utrc.test1.S1__impl) utrc.test1.S1)
(declare-fun utrc.test1.S1__impl.i1_TO_A (utrc.test1.S1__impl) hermes.iml.aadl.Connection_Real)
(declare-fun utrc.test1.S1__impl.i2_TO_A (utrc.test1.S1__impl) hermes.iml.aadl.Connection_Real)
(declare-fun utrc.test1.S1__impl.S2_TO_o1 (utrc.test1.S1__impl) hermes.iml.aadl.Connection_Real)
(declare-fun inst () utrc.test1.S1__impl)
(declare-fun bla () hermes.iml.aadl.Connection_Real)
(assert 
;    (and 
;        true
;        (and 
;            (or 
                (not 
                    (= 
                        4
                        (hermes.iml.aadl.Connection_Real.source 
;                            (utrc.test1.S1__impl.i1_TO_A inst)
                            bla                   
                        ) 
;                        (hermes.iml.aadl.Connection_Real.target 
;                            (utrc.test1.S1__impl.i1_TO_A inst)
;                        )
                    )
                ) 
;                true
;            ) 
;            (or 
;                (not true) 
;                (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.i1_TO_A inst)) (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.i1_TO_A inst)))
;            )
;        ) 
;        (and (or (not (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.i2_TO_A inst)) (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.i2_TO_A inst)))) true) (or (not true) (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.i2_TO_A inst)) (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.i2_TO_A inst))))) 
;        (and (or (not (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.S2_TO_o1 inst)) (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.S2_TO_o1 inst)))) true) (or (not true) (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.S2_TO_o1 inst)) (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.S2_TO_o1 inst))))) 
;        (and (or (not (and (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.S2_TO_o1 inst)) (utrc.test1.S2.o1 (utrc.test1.S1__impl.S2_sub inst))) (= (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.S2_TO_o1 inst)) (utrc.test1.S1.o1 (utrc.test1.S1__impl.base_0 inst))))) true) (or (not true) (and (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.S2_TO_o1 inst)) (utrc.test1.S2.o1 (utrc.test1.S1__impl.S2_sub inst))) (= (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.S2_TO_o1 inst)) (utrc.test1.S1.o1 (utrc.test1.S1__impl.base_0 inst)))))) 
;        (and (or (not (and (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.i1_TO_A inst)) (utrc.test1.S1.i1 (utrc.test1.S1__impl.base_0 inst))) (= (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.i1_TO_A inst)) (utrc.test1.S2.i1 (utrc.test1.S1__impl.S2_sub inst))))) true) (or (not true) (and (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.i1_TO_A inst)) (utrc.test1.S1.i1 (utrc.test1.S1__impl.base_0 inst))) (= (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.i1_TO_A inst)) (utrc.test1.S2.i1 (utrc.test1.S1__impl.S2_sub inst)))))) 
;        (and (or (not (and (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.i2_TO_A inst)) (utrc.test1.S1.i2 (utrc.test1.S1__impl.base_0 inst))) (= (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.i2_TO_A inst)) (utrc.test1.S2.i2 (utrc.test1.S1__impl.S2_sub inst))))) true) (or (not true) (and (= (hermes.iml.aadl.Connection_Real.source (utrc.test1.S1__impl.i2_TO_A inst)) (utrc.test1.S1.i2 (utrc.test1.S1__impl.base_0 inst))) (= (hermes.iml.aadl.Connection_Real.target (utrc.test1.S1__impl.i2_TO_A inst)) (utrc.test1.S2.i2 (utrc.test1.S1__impl.S2_sub inst)))))) 
;        (and (or (not (and (or (= (utrc.test1.S2.i1 (utrc.test1.S1__impl.S2_sub inst)) 1.0) (= (utrc.test1.S2.i1 (utrc.test1.S1__impl.S2_sub inst)) (- 1.0))) (or (= (utrc.test1.S2.i2 (utrc.test1.S1__impl.S2_sub inst)) 0.0) (= (utrc.test1.S2.i2 (utrc.test1.S1__impl.S2_sub inst)) 1.0) (= (utrc.test1.S2.i2 (utrc.test1.S1__impl.S2_sub inst)) (- 1.0))))) (= (utrc.test1.S2.o1 (utrc.test1.S1__impl.S2_sub inst)) (+ (* (utrc.test1.S2.i1 (utrc.test1.S1__impl.S2_sub inst)) (/ 6369051672525773 4503599627370496) (utrc.test1.S2.alpha (utrc.test1.S1__impl.S2_sub inst))) (* (utrc.test1.S2.i2 (utrc.test1.S1__impl.S2_sub inst)) (/ 6369051672525773 4503599627370496) (utrc.test1.S2.alpha (utrc.test1.S1__impl.S2_sub inst)))))) (and (<= 1 (utrc.test1.S1.n (utrc.test1.S1__impl.base_0 inst))) (and (and (<= 1 FV10) (<= FV10 (utrc.test1.S1.n (utrc.test1.S1__impl.base_0 inst))) (<= 1 FV9) (<= FV9 (utrc.test1.S1.n (utrc.test1.S1__impl.base_0 inst)))) (and (or (= (utrc.test1.S1.i1 (utrc.test1.S1__impl.base_0 inst)) (* FV9 (utrc.test1.S1.n (utrc.test1.S1__impl.base_0 inst)))) (= (utrc.test1.S1.i1 (utrc.test1.S1__impl.base_0 inst)) (* (- 1) (* FV9 (utrc.test1.S1.n (utrc.test1.S1__impl.base_0 inst)))))) (or (= (utrc.test1.S1.i2 (utrc.test1.S1__impl.base_0 inst)) (* FV10 (utrc.test1.S1.n (utrc.test1.S1__impl.base_0 inst)))) (= (utrc.test1.S1.i2 (utrc.test1.S1__impl.base_0 inst)) (* (- 1) (* FV10 (utrc.test1.S1.n (utrc.test1.S1__impl.base_0 inst))))))))) (not (and (<= (utrc.test1.S1.o1 (utrc.test1.S1__impl.base_0 inst)) 1.0) (<= 1.0 (utrc.test1.S1.o1 (utrc.test1.S1__impl.base_0 inst))))))
;    )
)
(check-sat)

