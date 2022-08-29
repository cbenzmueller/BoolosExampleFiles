%------------------------------------------------------------------------------
% File     : E-SAT---3.0
% Problem  : theBenchmark.p : TPTP v0.0.0. Released v0.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : run_E %s %d THM

% Computer : n006.cluster.edu
% Model    : x86_64 x86_64
% CPU      : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory   : 8042.1875MB
% OS       : Linux 3.10.0-693.el7.x86_64
% CPULimit : 300s
% WCLimit  : 300s
% DateTime : Mon Aug  1 10:14:13 EDT 2022

% Result   : Theorem 0.33s 0.68s
% Output   : CNFRefutation 0.33s
% Verified : 
% SZS Type : Refutation
%            Derivation depth      :   17
%            Number of leaves      :   21
% Syntax   : Number of formulae    :   81 (  28 unt;  13 typ;   0 def)
%            Number of atoms       :  352 (  11 equ;   0 cnn)
%            Maximal formula atoms :  207 (   5 avg)
%            Number of connectives : 1497 ( 238   ~; 323   |; 146   &; 780   @)
%                                         (   2 <=>;   8  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   67 (   7 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :   45 (  45   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   16 (  13 usr;   5 con; 0-3 aty)
%            Number of variables   :   91 (   4   ^  87   !;   0   ?;  91   :)

% Comments : 
%------------------------------------------------------------------------------
thf(decl_22,type,
    e: $i ).

thf(decl_23,type,
    s: $i > $i ).

thf(decl_24,type,
    d: $i > $o ).

thf(decl_25,type,
    f: $i > $i > $i ).

thf(decl_26,type,
    p: $i > $i > $o ).

thf(decl_27,type,
    epred1_1: ( $i > $o ) > $o ).

thf(decl_28,type,
    epred2_2: $i > $i > $i > $o ).

thf(decl_29,type,
    esk1_1: ( $i > $o ) > $i ).

thf(decl_30,type,
    esk2_1: ( $i > $o ) > $i ).

thf(decl_31,type,
    esk3_1: ( $i > $o ) > $i ).

thf(decl_32,type,
    esk4_1: ( $i > $o ) > $i ).

thf(decl_33,type,
    epred3_0: $o ).

thf(decl_34,type,
    epred4_0: $o ).

thf(p_def,axiom,
    ( p
    = ( ^ [X3: $i,X2: $i] :
          ( ^ [X4: $i] :
            ! [X5: $i > $o] :
              ( ( ^ [X6: $i > $o] :
                    ( ( X6 @ e )
                    & ! [X3: $i] :
                        ( ( X6 @ X3 )
                       => ( X6 @ ( s @ X3 ) ) ) )
                @ X5 )
             => ( X5 @ X4 ) )
          @ ( f @ X3 @ X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',p_def) ).

thf(a2,axiom,
    ! [X2: $i] :
      ( ( f @ e @ ( s @ X2 ) )
      = ( s @ ( s @ ( f @ e @ X2 ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',a2) ).

thf(a1,axiom,
    ! [X1: $i] :
      ( ( f @ X1 @ e )
      = ( s @ e ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',a1) ).

thf(conj_0,conjecture,
    d @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',conj_0) ).

thf(a5,axiom,
    ! [X3: $i] :
      ( ( d @ X3 )
     => ( d @ ( s @ X3 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',a5) ).

thf(a4,axiom,
    d @ e,
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',a4) ).

thf(a3,axiom,
    ! [X3: $i,X2: $i] :
      ( ( f @ ( s @ X3 ) @ ( s @ X2 ) )
      = ( f @ X3 @ ( f @ ( s @ X3 ) @ X2 ) ) ),
    file('/export/starexec/sandbox/benchmark/theBenchmark.p',a3) ).

thf(c_0_7,plain,
    ! [X5: $i > $o] :
      ( ( epred1_1 @ X5 )
    <=> ( ( ~ ( X5 @ e )
          | ( ( ~ ! [X12: $i] :
                    ( ( X5 @ X12 )
                   => ( X5 @ ( s @ X12 ) ) )
              | ( $true
                & $true ) )
            & ( ! [X12: $i] :
                  ( ( X5 @ X12 )
                 => ( X5 @ ( s @ X12 ) ) )
              | ( $true
                & $false ) ) ) )
        & ( ( X5 @ e )
          | ( ( ~ ! [X12: $i] :
                    ( ( X5 @ X12 )
                   => ( X5 @ ( s @ X12 ) ) )
              | ( $false
                & $true ) )
            & ( ! [X12: $i] :
                  ( ( X5 @ X12 )
                 => ( X5 @ ( s @ X12 ) ) )
              | ( $false
                & $false ) ) ) ) ) ),
    introduced(definition) ).

thf(c_0_8,plain,
    ! [X25: $i > $o,X27: $i,X29: $i,X30: $i > $o,X31: $i,X33: $i] :
      ( ( ( X25 @ ( esk1_1 @ X25 ) )
        | ( $true
          & $true )
        | ~ ( X25 @ e )
        | ~ ( epred1_1 @ X25 ) )
      & ( ~ ( X25 @ ( s @ ( esk1_1 @ X25 ) ) )
        | ( $true
          & $true )
        | ~ ( X25 @ e )
        | ~ ( epred1_1 @ X25 ) )
      & ( ~ ( X25 @ X27 )
        | ( X25 @ ( s @ X27 ) )
        | ( $true
          & $false )
        | ~ ( X25 @ e )
        | ~ ( epred1_1 @ X25 ) )
      & ( ( X25 @ ( esk2_1 @ X25 ) )
        | ( $false
          & $true )
        | ( X25 @ e )
        | ~ ( epred1_1 @ X25 ) )
      & ( ~ ( X25 @ ( s @ ( esk2_1 @ X25 ) ) )
        | ( $false
          & $true )
        | ( X25 @ e )
        | ~ ( epred1_1 @ X25 ) )
      & ( ~ ( X25 @ X29 )
        | ( X25 @ ( s @ X29 ) )
        | ( $false
          & $false )
        | ( X25 @ e )
        | ~ ( epred1_1 @ X25 ) )
      & ( ~ ( X30 @ e )
        | ( X30 @ e )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ( X30 @ e )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ( X30 @ e )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ( X30 @ e )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( $false
            & $true )
        | ( X30 @ e )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( $false
            & $true )
        | ( X30 @ e )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( $false
            & $true )
        | ( X30 @ e )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ e )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( $false
            & $true )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( $false
            & $true )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( $false
            & $true )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ e )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( $false
            & $true )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( $false
            & $true )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( $false
            & $true )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ e )
        | ~ ( $true
            & $false )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( $true
            & $false )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( $true
            & $false )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( $true
            & $false )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( $false
            & $true )
        | ~ ( $true
            & $false )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( $false
            & $true )
        | ~ ( $true
            & $false )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( $false
            & $true )
        | ~ ( $true
            & $false )
        | ~ ( X30 @ X31 )
        | ( X30 @ ( s @ X31 ) )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ e )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( $false
            & $true )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( $false
            & $true )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( $false
            & $true )
        | ( X30 @ ( esk3_1 @ X30 ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ e )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( $false
            & $true )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( $false
            & $true )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( $false
            & $true )
        | ~ ( X30 @ ( s @ ( esk3_1 @ X30 ) ) )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ e )
        | ~ ( $true
            & $false )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( $true
            & $false )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( $true
            & $false )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( X30 @ X33 )
        | ( X30 @ ( s @ X33 ) )
        | ~ ( $true
            & $false )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ( X30 @ ( esk4_1 @ X30 ) )
        | ~ ( $false
            & $true )
        | ~ ( $true
            & $false )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( X30 @ ( s @ ( esk4_1 @ X30 ) ) )
        | ~ ( $false
            & $true )
        | ~ ( $true
            & $false )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) )
      & ( ~ ( $false
            & $false )
        | ~ ( $false
            & $true )
        | ~ ( $true
            & $false )
        | ~ ( $true
            & $true )
        | ( epred1_1 @ X30 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_7])])])])])]) ).

thf(c_0_9,plain,
    ! [X1: $i,X5: $i > $o] :
      ( ( X5 @ ( s @ X1 ) )
      | ( $true
        & ~ $true )
      | ~ ( X5 @ X1 )
      | ~ ( X5 @ e )
      | ~ ( epred1_1 @ X5 ) ),
    inference(split_conjunct,[status(thm)],[c_0_8]) ).

thf(c_0_10,plain,
    ! [X5: $i > $o] :
      ( ( ~ $true
        & $true )
      | ( X5 @ e )
      | ~ ( X5 @ ( s @ ( esk2_1 @ X5 ) ) )
      | ~ ( epred1_1 @ X5 ) ),
    inference(split_conjunct,[status(thm)],[c_0_8]) ).

thf(c_0_11,plain,
    ! [X1: $i,X5: $i > $o] :
      ( ( X5 @ ( s @ X1 ) )
      | ( ~ $true
        & ~ $true )
      | ( X5 @ e )
      | ~ ( X5 @ X1 )
      | ~ ( epred1_1 @ X5 ) ),
    inference(split_conjunct,[status(thm)],[c_0_8]) ).

thf(c_0_12,plain,
    ! [X5: $i > $o,X1: $i] :
      ( ( X5 @ ( s @ X1 ) )
      | ~ ( epred1_1 @ X5 )
      | ~ ( X5 @ e )
      | ~ ( X5 @ X1 ) ),
    inference(cn,[status(thm)],[inference(cn,[status(thm)],[c_0_9])]) ).

thf(c_0_13,plain,
    ! [X12: $i,X13: $i] :
      ( ( p @ X12 @ X13 )
    <=> ! [X5: $i > $o] :
          ( ( epred1_1 @ X5 )
         => ( X5 @ ( f @ X12 @ X13 ) ) ) ),
    inference(apply_def,[status(thm)],[inference(fool_unroll,[status(thm)],[inference(fof_simplification,[status(thm)],[inference(fof_simplification,[status(thm)],[p_def])])]),c_0_7]) ).

thf(c_0_14,plain,
    ! [X15: $i] :
      ( ( f @ e @ ( s @ X15 ) )
      = ( s @ ( s @ ( f @ e @ X15 ) ) ) ),
    inference(variable_rename,[status(thm)],[a2]) ).

thf(c_0_15,plain,
    ! [X14: $i] :
      ( ( f @ X14 @ e )
      = ( s @ e ) ),
    inference(variable_rename,[status(thm)],[a1]) ).

thf(c_0_16,plain,
    ! [X5: $i > $o] :
      ( ( X5 @ ( esk2_1 @ X5 ) )
      | ( ~ $true
        & $true )
      | ( X5 @ e )
      | ~ ( epred1_1 @ X5 ) ),
    inference(split_conjunct,[status(thm)],[c_0_8]) ).

thf(c_0_17,plain,
    ! [X5: $i > $o] :
      ( ( X5 @ e )
      | ~ ( X5 @ ( s @ ( esk2_1 @ X5 ) ) )
      | ~ ( epred1_1 @ X5 ) ),
    inference(cn,[status(thm)],[inference(cn,[status(thm)],[c_0_10])]) ).

thf(c_0_18,plain,
    ! [X5: $i > $o,X1: $i] :
      ( ( X5 @ ( s @ X1 ) )
      | ~ ( epred1_1 @ X5 )
      | ~ ( X5 @ X1 ) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(cn,[status(thm)],[c_0_11])]),c_0_12]) ).

thf(c_0_19,negated_conjecture,
    ~ ( d @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ),
    inference(fof_simplification,[status(thm)],[inference(assume_negation,[status(cth)],[conj_0])]) ).

thf(c_0_20,plain,
    ! [X19: $i,X20: $i,X21: $i > $o,X22: $i,X23: $i] :
      ( ( ~ ( p @ X19 @ X20 )
        | ~ ( epred1_1 @ X21 )
        | ( X21 @ ( f @ X19 @ X20 ) ) )
      & ( ( epred1_1 @ ( epred2_2 @ X22 @ X23 ) )
        | ( p @ X22 @ X23 ) )
      & ( ~ ( epred2_2 @ X22 @ X23 @ ( f @ X22 @ X23 ) )
        | ( p @ X22 @ X23 ) ) ),
    inference(distribute,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(skolemize,[status(esa)],[inference(variable_rename,[status(thm)],[inference(shift_quantors,[status(thm)],[inference(fof_nnf,[status(thm)],[c_0_13])])])])])]) ).

thf(c_0_21,plain,
    ! [X1: $i] :
      ( ( f @ e @ ( s @ X1 ) )
      = ( s @ ( s @ ( f @ e @ X1 ) ) ) ),
    inference(split_conjunct,[status(thm)],[c_0_14]) ).

thf(c_0_22,plain,
    ! [X1: $i] :
      ( ( f @ X1 @ e )
      = ( s @ e ) ),
    inference(split_conjunct,[status(thm)],[c_0_15]) ).

thf(c_0_23,plain,
    ! [X5: $i > $o] :
      ( ( epred1_1 @ X5 )
      | ~ ( X5 @ e )
      | ~ ( X5 @ ( s @ ( esk3_1 @ X5 ) ) )
      | ~ ( $true
          & $true ) ),
    inference(split_conjunct,[status(thm)],[c_0_8]) ).

thf(c_0_24,plain,
    ! [X18: $i] :
      ( ~ ( d @ X18 )
      | ( d @ ( s @ X18 ) ) ),
    inference(variable_rename,[status(thm)],[inference(fof_nnf,[status(thm)],[a5])]) ).

thf(c_0_25,plain,
    ! [X5: $i > $o] :
      ( ( X5 @ ( esk2_1 @ X5 ) )
      | ( X5 @ e )
      | ~ ( epred1_1 @ X5 ) ),
    inference(cn,[status(thm)],[inference(cn,[status(thm)],[c_0_16])]) ).

thf(c_0_26,plain,
    ! [X5: $i > $o] :
      ( ( X5 @ e )
      | ~ ( X5 @ ( esk2_1 @ X5 ) )
      | ~ ( epred1_1 @ X5 ) ),
    inference(spm,[status(thm)],[c_0_17,c_0_18]) ).

thf(c_0_27,negated_conjecture,
    ~ ( d @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ),
    inference(split_conjunct,[status(thm)],[c_0_19]) ).

thf(c_0_28,plain,
    ! [X1: $i,X2: $i,X5: $i > $o] :
      ( ( X5 @ ( f @ X1 @ X2 ) )
      | ~ ( p @ X1 @ X2 )
      | ~ ( epred1_1 @ X5 ) ),
    inference(split_conjunct,[status(thm)],[c_0_20]) ).

thf(c_0_29,plain,
    ( ( s @ ( s @ ( s @ e ) ) )
    = ( f @ e @ ( s @ e ) ) ),
    inference(spm,[status(thm)],[c_0_21,c_0_22]) ).

thf(c_0_30,plain,
    ! [X5: $i > $o] :
      ( ( X5 @ ( esk3_1 @ X5 ) )
      | ( epred1_1 @ X5 )
      | ~ ( X5 @ e )
      | ~ ( $true
          & $true ) ),
    inference(split_conjunct,[status(thm)],[c_0_8]) ).

thf(c_0_31,plain,
    ! [X5: $i > $o] :
      ( ( epred1_1 @ X5 )
      | ~ ( X5 @ ( s @ ( esk3_1 @ X5 ) ) )
      | ~ ( X5 @ e ) ),
    inference(cn,[status(thm)],[inference(cn,[status(thm)],[c_0_23])]) ).

thf(c_0_32,plain,
    ! [X1: $i] :
      ( ( d @ ( s @ X1 ) )
      | ~ ( d @ X1 ) ),
    inference(split_conjunct,[status(thm)],[c_0_24]) ).

thf(c_0_33,plain,
    d @ e,
    inference(split_conjunct,[status(thm)],[a4]) ).

thf(c_0_34,plain,
    ! [X1: $i,X2: $i] :
      ( ( epred1_1 @ ( epred2_2 @ X1 @ X2 ) )
      | ( p @ X1 @ X2 ) ),
    inference(split_conjunct,[status(thm)],[c_0_20]) ).

thf(c_0_35,plain,
    ! [X5: $i > $o] :
      ( ( X5 @ e )
      | ~ ( epred1_1 @ X5 ) ),
    inference(csr,[status(thm)],[c_0_25,c_0_26]) ).

thf(c_0_36,negated_conjecture,
    ( ~ ( p @ ( s @ ( f @ e @ ( s @ e ) ) ) @ ( s @ ( f @ e @ ( s @ e ) ) ) )
    | ~ ( epred1_1 @ d ) ),
    inference(rw,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_27,c_0_28]),c_0_29]),c_0_29]) ).

thf(c_0_37,plain,
    ! [X5: $i > $o] :
      ( ( X5 @ ( esk3_1 @ X5 ) )
      | ( epred1_1 @ X5 )
      | ~ ( X5 @ e ) ),
    inference(cn,[status(thm)],[inference(cn,[status(thm)],[c_0_30])]) ).

thf(c_0_38,plain,
    ( ( epred1_1 @ d )
    | ~ ( d @ ( esk3_1 @ d ) ) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_32]),c_0_33])]) ).

thf(c_0_39,plain,
    ! [X1: $i,X2: $i] :
      ( ( p @ X1 @ X2 )
      | ~ ( epred2_2 @ X1 @ X2 @ ( f @ X1 @ X2 ) ) ),
    inference(split_conjunct,[status(thm)],[c_0_20]) ).

thf(c_0_40,plain,
    ! [X1: $i,X2: $i,X3: $i] :
      ( ( epred2_2 @ X1 @ X2 @ ( s @ X3 ) )
      | ( p @ X1 @ X2 )
      | ~ ( epred2_2 @ X1 @ X2 @ X3 ) ),
    inference(spm,[status(thm)],[c_0_18,c_0_34]) ).

thf(c_0_41,plain,
    ! [X1: $i,X2: $i] :
      ( ( epred2_2 @ X1 @ X2 @ e )
      | ( p @ X1 @ X2 ) ),
    inference(spm,[status(thm)],[c_0_35,c_0_34]) ).

thf(c_0_42,plain,
    ! [X16: $i,X17: $i] :
      ( ( f @ ( s @ X16 ) @ ( s @ X17 ) )
      = ( f @ X16 @ ( f @ ( s @ X16 ) @ X17 ) ) ),
    inference(variable_rename,[status(thm)],[a3]) ).

thf(c_0_43,negated_conjecture,
    ( ~ ( p @ ( s @ ( f @ e @ ( s @ e ) ) ) @ ( f @ e @ ( s @ e ) ) )
    | ~ ( epred1_1 @ ( p @ ( s @ ( f @ e @ ( s @ e ) ) ) ) )
    | ~ ( epred1_1 @ d ) ),
    inference(spm,[status(thm)],[c_0_36,c_0_18]) ).

thf(c_0_44,plain,
    epred1_1 @ d,
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_37,c_0_33]),c_0_38]) ).

thf(c_0_45,plain,
    ! [X1: $i] :
      ( ( p @ X1 @ e )
      | ~ ( epred2_2 @ X1 @ e @ ( s @ e ) ) ),
    inference(spm,[status(thm)],[c_0_39,c_0_22]) ).

thf(c_0_46,plain,
    ! [X1: $i,X2: $i] :
      ( ( epred2_2 @ X1 @ X2 @ ( s @ e ) )
      | ( p @ X1 @ X2 ) ),
    inference(spm,[status(thm)],[c_0_40,c_0_41]) ).

thf(c_0_47,plain,
    ! [X1: $i,X2: $i,X3: $i,X5: $i > $o] :
      ( ( X5 @ ( f @ X1 @ ( f @ X2 @ X3 ) ) )
      | ~ ( epred1_1 @ ( p @ X1 ) )
      | ~ ( p @ X2 @ X3 )
      | ~ ( epred1_1 @ X5 ) ),
    inference(spm,[status(thm)],[c_0_28,c_0_28]) ).

thf(c_0_48,plain,
    ! [X1: $i,X2: $i] :
      ( ( f @ ( s @ X1 ) @ ( s @ X2 ) )
      = ( f @ X1 @ ( f @ ( s @ X1 ) @ X2 ) ) ),
    inference(split_conjunct,[status(thm)],[c_0_42]) ).

thf(c_0_49,negated_conjecture,
    ( ~ ( p @ ( s @ ( f @ e @ ( s @ e ) ) ) @ ( f @ e @ ( s @ e ) ) )
    | ~ ( epred1_1 @ ( p @ ( s @ ( f @ e @ ( s @ e ) ) ) ) ) ),
    inference(cn,[status(thm)],[inference(rw,[status(thm)],[c_0_43,c_0_44])]) ).

thf(c_0_50,plain,
    ! [X1: $i,X5: $i > $o] :
      ( ( X5 @ ( f @ e @ ( s @ X1 ) ) )
      | ~ ( X5 @ ( s @ ( f @ e @ X1 ) ) )
      | ~ ( epred1_1 @ X5 ) ),
    inference(spm,[status(thm)],[c_0_18,c_0_21]) ).

thf(c_0_51,plain,
    ! [X1: $i] : ( p @ X1 @ e ),
    inference(spm,[status(thm)],[c_0_45,c_0_46]) ).

thf(c_0_52,plain,
    ! [X1: $i,X2: $i,X5: $i > $o] :
      ( ( X5 @ ( f @ ( s @ X1 ) @ ( s @ X2 ) ) )
      | ~ ( p @ ( s @ X1 ) @ X2 )
      | ~ ( epred1_1 @ ( p @ X1 ) )
      | ~ ( epred1_1 @ X5 ) ),
    inference(spm,[status(thm)],[c_0_47,c_0_48]) ).

thf(c_0_53,negated_conjecture,
    ( ~ ( p @ ( s @ ( f @ e @ ( s @ e ) ) ) @ ( s @ ( s @ e ) ) )
    | ~ ( epred1_1 @ ( p @ ( s @ ( f @ e @ ( s @ e ) ) ) ) ) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_49,c_0_50]),c_0_22]) ).

thf(c_0_54,plain,
    ! [X5: $i > $o] :
      ( ( X5 @ ( s @ e ) )
      | ~ ( epred1_1 @ X5 ) ),
    inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_28,c_0_51]),c_0_22]) ).

thf(c_0_55,plain,
    ! [X2: $i,X1: $i] :
      ( ( p @ ( s @ X1 ) @ ( s @ X2 ) )
      | ~ ( p @ ( s @ X1 ) @ X2 )
      | ~ ( epred1_1 @ ( p @ X1 ) ) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_52]),c_0_34]) ).

thf(c_0_56,plain,
    ! [X1: $i] :
      ( ( p @ X1 @ ( esk3_1 @ ( p @ X1 ) ) )
      | ( epred1_1 @ ( p @ X1 ) ) ),
    inference(spm,[status(thm)],[c_0_37,c_0_51]) ).

thf(c_0_57,plain,
    ~ ( epred1_1 @ ( p @ ( s @ ( f @ e @ ( s @ e ) ) ) ) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_53,c_0_18]),c_0_54]) ).

thf(c_0_58,plain,
    ! [X1: $i] :
      ( ( epred1_1 @ ( p @ ( s @ X1 ) ) )
      | ~ ( epred1_1 @ ( p @ X1 ) ) ),
    inference(csr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_55]),c_0_51])]),c_0_56]) ).

thf(c_0_59,plain,
    ~ ( epred1_1 @ ( p @ ( f @ e @ ( s @ e ) ) ) ),
    inference(spm,[status(thm)],[c_0_57,c_0_58]) ).

thf(c_0_60,plain,
    ! [X1: $i] :
      ( ( p @ e @ ( s @ X1 ) )
      | ~ ( epred2_2 @ e @ ( s @ X1 ) @ ( s @ ( f @ e @ X1 ) ) ) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_39,c_0_50]),c_0_34]) ).

thf(c_0_61,plain,
    ~ ( epred1_1 @ ( p @ ( s @ ( s @ e ) ) ) ),
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_58,c_0_29]),c_0_59]) ).

thf(c_0_62,plain,
    ! [X1: $i] :
      ( ( p @ e @ ( s @ X1 ) )
      | ~ ( epred2_2 @ e @ ( s @ X1 ) @ ( f @ e @ X1 ) ) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_60,c_0_18]),c_0_34]) ).

thf(c_0_63,plain,
    ~ ( epred1_1 @ ( p @ ( s @ e ) ) ),
    inference(spm,[status(thm)],[c_0_61,c_0_58]) ).

thf(c_0_64,plain,
    ! [X1: $i] :
      ( ( p @ e @ ( s @ X1 ) )
      | ~ ( p @ e @ X1 ) ),
    inference(csr,[status(thm)],[inference(spm,[status(thm)],[c_0_62,c_0_28]),c_0_34]) ).

thf(c_0_65,plain,
    ~ ( epred1_1 @ ( p @ e ) ),
    inference(spm,[status(thm)],[c_0_63,c_0_58]) ).

thf(c_0_66,plain,
    ~ ( p @ e @ ( esk3_1 @ ( p @ e ) ) ),
    inference(sr,[status(thm)],[inference(cn,[status(thm)],[inference(rw,[status(thm)],[inference(spm,[status(thm)],[c_0_31,c_0_64]),c_0_51])]),c_0_65]) ).

thf(c_0_67,plain,
    $false,
    inference(sr,[status(thm)],[inference(spm,[status(thm)],[c_0_66,c_0_56]),c_0_65]),
    [proof] ).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.10/0.23  % Problem    : theBenchmark.p : TPTP v0.0.0. Released v0.0.0.
% 0.10/0.24  % Command    : run_E %s %d THM
% 0.13/0.47  % Computer : n006.cluster.edu
% 0.13/0.47  % Model    : x86_64 x86_64
% 0.13/0.47  % CPU      : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.13/0.47  % Memory   : 8042.1875MB
% 0.13/0.47  % OS       : Linux 3.10.0-693.el7.x86_64
% 0.13/0.47  % CPULimit   : 300
% 0.13/0.47  % WCLimit    : 300
% 0.13/0.47  % DateTime   : Mon Aug  1 10:26:01 EDT 2022
% 0.13/0.47  % CPUTime    : 
% 0.32/0.61  Running higher-order on 8 cores model finding
% 0.32/0.61  Running: /export/starexec/sandbox/solver/bin/eprover-ho --delete-bad-limit=2000000000 --definitional-cnf=24 -s --print-statistics -R --print-version --proof-object --satauto-schedule=8 --cpu-limit=300 /export/starexec/sandbox/benchmark/theBenchmark.p
% 0.32/0.61  # Version: 3.0pre003-ho
% 0.33/0.68  # partial match(1): HSMSSMSSSSSNFFN
% 0.33/0.68  # Preprocessing class: HSMSSMSSSSSNHFN.
% 0.33/0.68  # Scheduled 4 strats onto 8 cores with 300 seconds (2400 total)
% 0.33/0.68  # Starting new_ho_10 with 1500s (5) cores
% 0.33/0.68  # Starting new_bool_1 with 300s (1) cores
% 0.33/0.68  # Starting full_lambda_5 with 300s (1) cores
% 0.33/0.68  # Starting new_ho_10_unif with 300s (1) cores
% 0.33/0.68  # new_ho_10 with pid 7481 completed with status 0
% 0.33/0.68  # Result found by new_ho_10
% 0.33/0.68  # partial match(1): HSMSSMSSSSSNFFN
% 0.33/0.68  # Preprocessing class: HSMSSMSSSSSNHFN.
% 0.33/0.68  # Scheduled 4 strats onto 8 cores with 300 seconds (2400 total)
% 0.33/0.68  # Starting new_ho_10 with 1500s (5) cores
% 0.33/0.68  # No SInE strategy applied
% 0.33/0.68  # Search class: HGUSS-FFMF21-MHFFFMBN
% 0.33/0.68  # partial match(3): HGUSS-FFMF31-MHFMMMBN
% 0.33/0.68  # Scheduled 6 strats onto 5 cores with 1500 seconds (1500 total)
% 0.33/0.68  # Starting new_ho_10_cnf2 with 811s (1) cores
% 0.33/0.68  # Starting new_ho_10 with 151s (1) cores
% 0.33/0.68  # Starting post_as_ho1 with 136s (1) cores
% 0.33/0.68  # Starting new_ho_9 with 136s (1) cores
% 0.33/0.68  # Starting sh5l with 136s (1) cores
% 0.33/0.68  # new_ho_9 with pid 7493 completed with status 0
% 0.33/0.68  # Result found by new_ho_9
% 0.33/0.68  # partial match(1): HSMSSMSSSSSNFFN
% 0.33/0.68  # Preprocessing class: HSMSSMSSSSSNHFN.
% 0.33/0.68  # Scheduled 4 strats onto 8 cores with 300 seconds (2400 total)
% 0.33/0.68  # Starting new_ho_10 with 1500s (5) cores
% 0.33/0.68  # No SInE strategy applied
% 0.33/0.68  # Search class: HGUSS-FFMF21-MHFFFMBN
% 0.33/0.68  # partial match(3): HGUSS-FFMF31-MHFMMMBN
% 0.33/0.68  # Scheduled 6 strats onto 5 cores with 1500 seconds (1500 total)
% 0.33/0.68  # Starting new_ho_10_cnf2 with 811s (1) cores
% 0.33/0.68  # Starting new_ho_10 with 151s (1) cores
% 0.33/0.68  # Starting post_as_ho1 with 136s (1) cores
% 0.33/0.68  # Starting new_ho_9 with 136s (1) cores
% 0.33/0.68  # Preprocessing time       : 0.002 s
% 0.33/0.68  # Presaturation interreduction done
% 0.33/0.68  
% 0.33/0.68  # Proof found!
% 0.33/0.68  # SZS status Theorem
% 0.33/0.68  # SZS output start CNFRefutation
% See solution above
% 0.33/0.68  # Parsed axioms                        : 12
% 0.33/0.68  # Removed by relevancy pruning/SinE    : 0
% 0.33/0.68  # Initial clauses                      : 69
% 0.33/0.68  # Removed in clause preprocessing      : 6
% 0.33/0.68  # Initial clauses in saturation        : 63
% 0.33/0.68  # Processed clauses                    : 405
% 0.33/0.68  # ...of these trivial                  : 37
% 0.33/0.68  # ...subsumed                          : 155
% 0.33/0.68  # ...remaining for further processing  : 213
% 0.33/0.68  # Other redundant clauses eliminated   : 0
% 0.33/0.68  # Clauses deleted for lack of memory   : 0
% 0.33/0.68  # Backward-subsumed                    : 14
% 0.33/0.68  # Backward-rewritten                   : 14
% 0.33/0.68  # Generated clauses                    : 1266
% 0.33/0.68  # ...of the previous two non-redundant : 1198
% 0.33/0.68  # ...aggressively subsumed             : 0
% 0.33/0.68  # Contextual simplify-reflections      : 27
% 0.33/0.68  # Paramodulations                      : 1262
% 0.33/0.68  # Factorizations                       : 0
% 0.33/0.68  # NegExts                              : 0
% 0.33/0.68  # Equation resolutions                 : 0
% 0.33/0.68  # Propositional unsat checks           : 0
% 0.33/0.68  #    Propositional check models        : 0
% 0.33/0.68  #    Propositional check unsatisfiable : 0
% 0.33/0.68  #    Propositional clauses             : 0
% 0.33/0.68  #    Propositional clauses after purity: 0
% 0.33/0.68  #    Propositional unsat core size     : 0
% 0.33/0.68  #    Propositional preprocessing time  : 0.000
% 0.33/0.68  #    Propositional encoding time       : 0.000
% 0.33/0.68  #    Propositional solver time         : 0.000
% 0.33/0.68  #    Success case prop preproc time    : 0.000
% 0.33/0.68  #    Success case prop encoding time   : 0.000
% 0.33/0.68  #    Success case prop solver time     : 0.000
% 0.33/0.68  # Current number of processed clauses  : 163
% 0.33/0.68  #    Positive orientable unit clauses  : 33
% 0.33/0.68  #    Positive unorientable unit clauses: 1
% 0.33/0.68  #    Negative unit clauses             : 10
% 0.33/0.68  #    Non-unit-clauses                  : 119
% 0.33/0.68  # Current number of unprocessed clauses: 870
% 0.33/0.68  # ...number of literals in the above   : 2807
% 0.33/0.68  # Current number of archived formulas  : 0
% 0.33/0.68  # Current number of archived clauses   : 49
% 0.33/0.68  # Clause-clause subsumption calls (NU) : 5182
% 0.33/0.68  # Rec. Clause-clause subsumption calls : 4575
% 0.33/0.68  # Non-unit clause-clause subsumptions  : 171
% 0.33/0.68  # Unit Clause-clause subsumption calls : 451
% 0.33/0.68  # Rewrite failures with RHS unbound    : 0
% 0.33/0.68  # BW rewrite match attempts            : 54
% 0.33/0.68  # BW rewrite match successes           : 10
% 0.33/0.68  # Condensation attempts                : 405
% 0.33/0.68  # Condensation successes               : 0
% 0.33/0.68  # Termbank termtop insertions          : 36309
% 0.33/0.68  
% 0.33/0.68  # -------------------------------------------------
% 0.33/0.68  # User time                : 0.062 s
% 0.33/0.68  # System time              : 0.005 s
% 0.33/0.68  # Total time               : 0.067 s
% 0.33/0.68  # Maximum resident set size: 1988 pages
% 0.33/0.68  
% 0.33/0.68  # -------------------------------------------------
% 0.33/0.68  # User time                : 0.294 s
% 0.33/0.68  # System time              : 0.023 s
% 0.33/0.68  # Total time               : 0.317 s
% 0.33/0.68  # Maximum resident set size: 1720 pages
%------------------------------------------------------------------------------
