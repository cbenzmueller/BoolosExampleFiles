%------------------------------------------------------------------------------
% File     : Leo-III---1.7.0
% Problem  : theBenchmark.p : TPTP v0.0.0. Released v0.0.0.
% Transfm  : none
% Format   : tptp:raw
% Command  : run_Leo-III %s %d

% Computer : n029.cluster.edu
% Model    : x86_64 x86_64
% CPU      : Intel(R) Xeon(R) CPU E5-2620 v4 2.10GHz
% Memory   : 8042.1875MB
% OS       : Linux 3.10.0-693.el7.x86_64
% CPULimit : 300s
% WCLimit  : 300s
% DateTime : Mon Aug  1 10:14:13 EDT 2022

% Result   : Theorem 215.77s 43.10s
% Output   : Refutation 216.28s
% Verified : 
% SZS Type : Refutation
%            Derivation depth      :   37
%            Number of leaves      :   32
% Syntax   : Number of formulae    :  465 ( 156 unt;  24 typ;   0 def)
%            Number of atoms       : 1946 ( 527 equ;   0 cnn)
%            Maximal formula atoms :    5 (   4 avg)
%            Number of connectives : 5118 ( 485   ~; 352   |;  51   &;3946   @)
%                                         (   0 <=>; 284  =>;   0  <=;   0 <~>)
%            Maximal formula depth :   15 (   4 avg)
%            Number of types       :    2 (   0 usr)
%            Number of type conns  :  247 ( 247   >;   0   *;   0   +;   0  <<)
%            Number of symbols     :   27 (  24 usr;  16 con; 0-3 aty)
%            Number of variables   :  917 ( 373   ^ 544   !;   0   ?; 917   :)

% Comments : 
%------------------------------------------------------------------------------
thf(e_type,type,
    e: $i ).

thf(s_type,type,
    s: $i > $i ).

thf(d_type,type,
    d: $i > $o ).

thf(f_type,type,
    f: $i > $i > $i ).

thf(ind_type,type,
    ind: ( $i > $o ) > $o ).

thf(p_type,type,
    p: $i > $i > $o ).

thf(sk1_type,type,
    sk1: $i > $i > $i > $o ).

thf(sk2_type,type,
    sk2: $i > $i > $o ).

thf(sk3_type,type,
    sk3: ( $i > $o ) > $i ).

thf(sk4_type,type,
    sk4: $i ).

thf(sk5_type,type,
    sk5: $i ).

thf(sk6_type,type,
    sk6: $i ).

thf(sk11_type,type,
    sk11: $i ).

thf(sk14_type,type,
    sk14: $i ).

thf(sk16_type,type,
    sk16: $i ).

thf(sk30_type,type,
    sk30: $i ).

thf(sk38_type,type,
    sk38: $i > $o ).

thf(sk53_type,type,
    sk53: $i ).

thf(sk64_type,type,
    sk64: $i > $o ).

thf(sk94_type,type,
    sk94: $i ).

thf(sk283_type,type,
    sk283: $i ).

thf(sk295_type,type,
    sk295: $i ).

thf(sk296_type,type,
    sk296: $i ).

thf(sk404_type,type,
    sk404: $i ).

thf(8,axiom,
    d @ e,
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',a4) ).

thf(26,plain,
    d @ e,
    inference(defexp_and_simp_and_etaexpand,[status(thm)],[8]) ).

thf(9,axiom,
    ! [A: $i] :
      ( ( d @ A )
     => ( d @ ( s @ A ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',a5) ).

thf(27,plain,
    ! [A: $i] :
      ( ( d @ A )
     => ( d @ ( s @ A ) ) ),
    inference(defexp_and_simp_and_etaexpand,[status(thm)],[9]) ).

thf(28,plain,
    ! [A: $i] :
      ( ~ ( d @ A )
      | ( d @ ( s @ A ) ) ),
    inference(cnf,[status(esa)],[27]) ).

thf(4,axiom,
    ! [A: $i > $o] :
      ( ( ind @ A )
      = ( ( A @ e )
        & ! [B: $i] :
            ( ( A @ B )
           => ( A @ ( s @ B ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',ind_def) ).

thf(14,plain,
    ! [A: $i > $o] :
      ( ( ind @ A )
      = ( ( A @ e )
        & ! [B: $i] :
            ( ( A @ B )
           => ( A @ ( s @ B ) ) ) ) ),
    inference(defexp_and_simp_and_etaexpand,[status(thm)],[4]) ).

thf(15,plain,
    ! [A: $i > $o] :
      ( ( ind @ A )
      = ( ( A @ e )
        & ! [B: $i] :
            ( ( A @ B )
           => ( A @ ( s @ B ) ) ) ) ),
    inference(cnf,[status(esa)],[14]) ).

thf(16,plain,
    ! [A: $i > $o] :
      ( ( ( A @ e )
        & ! [B: $i] :
            ( ( A @ B )
           => ( A @ ( s @ B ) ) ) )
      = ( ind @ A ) ),
    inference(lifteq,[status(thm)],[15]) ).

thf(90,plain,
    ! [A: $i > $o] :
      ( ( ( ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( d @ e )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,16]) ).

thf(100,plain,
    ( ( ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) )
    = ( ind @ d ) ),
    inference(pre_uni,[status(thm)],[90:[bind(A,$thf( d ))]]) ).

thf(121,plain,
    ! [A: $i > $o] :
      ( ( ( ( ind @ d )
          & ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( ! [B: $i] :
              ( ( d @ B )
             => ( d @ ( s @ B ) ) ) )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[100,16]) ).

thf(126,plain,
    ( ( ( ind @ d )
      & ! [A: $i] :
          ( ! [B: $i] :
              ( ( d @ B )
             => ( d @ ( s @ B ) ) )
         => ! [B: $i] :
              ( ( d @ B )
             => ( d @ ( s @ B ) ) ) ) )
    = ( ind
      @ ^ [A: $i] :
        ! [B: $i] :
          ( ( d @ B )
         => ( d @ ( s @ B ) ) ) ) ),
    inference(pre_uni,[status(thm)],[121:[bind(A,$thf( ^ [B: $i] : ! [C: $i] : ( ( d @ C ) => ( d @ ( s @ C ) ) ) ))]]) ).

thf(135,plain,
    ( ( ind @ d )
    = ( ind
      @ ^ [A: $i] :
        ! [B: $i] :
          ( ( d @ B )
         => ( d @ ( s @ B ) ) ) ) ),
    inference(simp,[status(thm)],[126]) ).

thf(122,plain,
    ! [A: $i > $o] :
      ( ( ( ! [B: $i] :
              ( ( d @ B )
             => ( d @ ( s @ B ) ) )
          & ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( ind @ d )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[100,16]) ).

thf(129,plain,
    ( ( ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
      & ! [A: $i] :
          ( ( ind @ d )
         => ( ind @ d ) ) )
    = ( ind
      @ ^ [A: $i] : ( ind @ d ) ) ),
    inference(pre_uni,[status(thm)],[122:[bind(A,$thf( ^ [B: $i] : ( ind @ d ) ))]]) ).

thf(131,plain,
    ( ( ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( ind @ d ) ) ),
    inference(simp,[status(thm)],[129]) ).

thf(205,plain,
    ( ( ind
      @ ^ [A: $i] : ( ind @ d ) )
    = ( ind @ d ) ),
    inference(rewrite,[status(thm)],[100,131]) ).

thf(218,plain,
    ( ( ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) )
    = ( ind @ d ) ),
    inference(rewrite,[status(thm)],[131,205]) ).

thf(684,plain,
    ( ( ind
      @ ^ [A: $i] :
        ! [B: $i] :
          ( ( d @ B )
         => ( d @ ( s @ B ) ) ) )
    = ( ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) ) ),
    inference(rewrite,[status(thm)],[218,135]) ).

thf(1375,plain,
    ( ( ind @ d )
    = ( ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) ) ),
    inference(rewrite,[status(thm)],[135,684]) ).

thf(1603,plain,
    ( ( ( ind
        @ ^ [A: $i] : ( ind @ d ) )
      = ( ! [A: $i] :
            ( ( d @ A )
           => ( d @ ( s @ A ) ) ) ) )
    | ( ( ! [A: $i] :
            ( ( d @ A )
           => ( d @ ( s @ A ) ) ) )
     != ( ! [A: $i] :
            ( ( d @ A )
           => ( d @ ( s @ A ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[1375,684]) ).

thf(1604,plain,
    ( ( ind
      @ ^ [A: $i] : ( ind @ d ) )
    = ( ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[1603:[]]) ).

thf(1677,plain,
    ( ( ( ind
        @ ^ [A: $i] :
            ( ind
            @ ^ [B: $i] : ( ind @ d ) ) )
      = ( ! [A: $i] :
            ( ( d @ A )
           => ( d @ ( s @ A ) ) ) ) )
    | ( ( ! [A: $i] :
            ( ( d @ A )
           => ( d @ ( s @ A ) ) ) )
     != ( ! [A: $i] :
            ( ( d @ A )
           => ( d @ ( s @ A ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[1604,684]) ).

thf(1678,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] : ( ind @ d ) ) )
    = ( ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[1677:[]]) ).

thf(1661,plain,
    ( ( ( ind
        @ ^ [A: $i] : ( ind @ d ) )
      = ( ind @ d ) )
    | ( ( ! [A: $i] :
            ( ( d @ A )
           => ( d @ ( s @ A ) ) ) )
     != ( ! [A: $i] :
            ( ( d @ A )
           => ( d @ ( s @ A ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[1604,1375]) ).

thf(1662,plain,
    ( ( ind
      @ ^ [A: $i] : ( ind @ d ) )
    = ( ind @ d ) ),
    inference(pattern_uni,[status(thm)],[1661:[]]) ).

thf(2336,plain,
    ( ( ind
      @ ^ [A: $i] : ( ind @ d ) )
    = ( ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) ) ),
    inference(rewrite,[status(thm)],[1678,1662]) ).

thf(85,plain,
    ! [A: $i > $o] :
      ( ( ( A @ e )
        & ! [B: $i] :
            ( ( A @ B )
           => ( A @ ( s @ B ) ) ) )
      | ~ ( ind @ A ) ),
    inference(bool_ext,[status(thm)],[16]) ).

thf(108,plain,
    ! [A: $i > $o] :
      ( ~ ( ind @ A )
      | ( A @ e ) ),
    inference(cnf,[status(esa)],[85]) ).

thf(7929,plain,
    ( ~ ( ind
        @ ^ [A: $i] : $false )
    | $false ),
    inference(prim_subst,[status(thm)],[108:[bind(A,$thf( ^ [B: $i] : $false ))]]) ).

thf(8217,plain,
    ~ ( ind
      @ ^ [A: $i] : $false ),
    inference(simp,[status(thm)],[7929]) ).

thf(8346,plain,
    ( ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( ( ind
        @ ^ [A: $i] : ( ind @ d ) )
     != ( ind
        @ ^ [A: $i] : $false ) ) ),
    inference(paramod_ordered,[status(thm)],[2336,8217]) ).

thf(8381,plain,
    ( ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) ) ),
    inference(simp,[status(thm)],[8346]) ).

thf(8425,plain,
    ( ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ~ ( d @ ( s @ sk295 ) ) ),
    inference(cnf,[status(esa)],[8381]) ).

thf(19139,plain,
    ! [A: $i] :
      ( ~ ( d @ A )
      | ( ( ^ [B: $i] : ( ind @ d ) )
       != ( ^ [B: $i] : $false ) )
      | ( ( d @ ( s @ A ) )
       != ( d @ ( s @ sk295 ) ) ) ),
    inference(paramod_ordered,[status(thm)],[28,8425]) ).

thf(19140,plain,
    ( ~ ( d @ sk295 )
    | ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) ) ),
    inference(pattern_uni,[status(thm)],[19139:[bind(A,$thf( sk295 ))]]) ).

thf(19299,plain,
    ( ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ sk295 )
     != ( d @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,19140]) ).

thf(19324,plain,
    ( ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ( sk295 != e ) ),
    inference(simp,[status(thm)],[19299]) ).

thf(206,plain,
    ( ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( ind
      @ ^ [A: $i] : ( ind @ d ) ) ),
    inference(bool_ext,[status(thm)],[131]) ).

thf(215,plain,
    ( ( ind
      @ ^ [A: $i] : ( ind @ d ) )
    | ~ ( d @ ( s @ sk5 ) ) ),
    inference(cnf,[status(esa)],[206]) ).

thf(26920,plain,
    ( ( ind @ d )
    | ~ ( d @ ( s @ sk5 ) ) ),
    inference(rewrite,[status(thm)],[215,1662]) ).

thf(116,plain,
    ( ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( ind @ d ) ),
    inference(bool_ext,[status(thm)],[100]) ).

thf(132,plain,
    ( ( ind @ d )
    | ~ ( d @ ( s @ sk4 ) ) ),
    inference(cnf,[status(esa)],[116]) ).

thf(10793,plain,
    ( ~ ( d @ ( s @ sk4 ) )
    | ( ( ind @ d )
     != ( ind
        @ ^ [A: $i] : $false ) ) ),
    inference(paramod_ordered,[status(thm)],[132,8217]) ).

thf(10904,plain,
    ( ~ ( d @ ( s @ sk4 ) )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(simp,[status(thm)],[10793]) ).

thf(11909,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ ( s @ sk4 ) )
     != ( d @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,10904]) ).

thf(11922,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( s @ sk4 )
     != e ) ),
    inference(simp,[status(thm)],[11909]) ).

thf(351,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ e )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[26,28]) ).

thf(352,plain,
    d @ ( s @ e ),
    inference(pattern_uni,[status(thm)],[351:[bind(A,$thf( e ))]]) ).

thf(3,axiom,
    ! [A: $i,B: $i] :
      ( ( p @ A @ B )
      = ( ^ [C: $i] :
          ! [D: $i > $o] :
            ( ( ind @ D )
           => ( D @ C ) )
        @ ( f @ A @ B ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',p_def) ).

thf(11,plain,
    ! [A: $i,B: $i] :
      ( ( p @ A @ B )
      = ( ! [C: $i > $o] :
            ( ( ind @ C )
           => ( C @ ( f @ A @ B ) ) ) ) ),
    inference(defexp_and_simp_and_etaexpand,[status(thm)],[3]) ).

thf(12,plain,
    ! [B: $i,A: $i] :
      ( ( p @ A @ B )
      = ( ! [C: $i > $o] :
            ( ( ind @ C )
           => ( C @ ( f @ A @ B ) ) ) ) ),
    inference(cnf,[status(esa)],[11]) ).

thf(13,plain,
    ! [B: $i,A: $i] :
      ( ( p @ A @ B )
      = ( ! [C: $i > $o] :
            ( ( ind @ C )
           => ( C @ ( f @ A @ B ) ) ) ) ),
    inference(lifteq,[status(thm)],[12]) ).

thf(86,plain,
    ! [C: $i > $o,B: $i,A: $i] :
      ( ( ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( f @ A @ B ) ) )
          & ! [D: $i] :
              ( ( C @ D )
             => ( C @ ( s @ D ) ) ) )
        = ( ind @ C ) )
      | ( ( p @ A @ B )
       != ( C @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[13,16]) ).

thf(96,plain,
    ! [B: $i > $i,A: $i > $i] :
      ( ( ! [C: $i > $o] :
            ( ( ind @ C )
           => ( C @ ( f @ ( A @ e ) @ ( B @ e ) ) ) )
        & ! [C: $i] :
            ( ( p @ ( A @ C ) @ ( B @ C ) )
           => ( p @ ( A @ ( s @ C ) ) @ ( B @ ( s @ C ) ) ) ) )
      = ( ind
        @ ^ [C: $i] : ( p @ ( A @ C ) @ ( B @ C ) ) ) ),
    inference(pre_uni,[status(thm)],[86:[bind(A,$thf( D @ e )),bind(B,$thf( E @ e )),bind(C,$thf( ^ [F: $i] : ( p @ ( D @ F ) @ ( E @ F ) ) ))]]) ).

thf(101,plain,
    ! [B: $i > $i,A: $i > $i] :
      ( ( ! [C: $i > $o] :
            ( ( ind @ C )
           => ( C @ ( f @ ( A @ e ) @ ( B @ e ) ) ) )
        & ! [C: $i] :
            ( ( p @ ( A @ C ) @ ( B @ C ) )
           => ( p @ ( A @ ( s @ C ) ) @ ( B @ ( s @ C ) ) ) ) )
      = ( ind
        @ ^ [C: $i] : ( p @ ( A @ C ) @ ( B @ C ) ) ) ),
    inference(simp,[status(thm)],[96]) ).

thf(5,axiom,
    ! [A: $i] :
      ( ( f @ A @ e )
      = ( s @ e ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',a1) ).

thf(17,plain,
    ! [A: $i] :
      ( ( f @ A @ e )
      = ( s @ e ) ),
    inference(defexp_and_simp_and_etaexpand,[status(thm)],[5]) ).

thf(18,plain,
    ! [A: $i] :
      ( ( f @ A @ e )
      = ( s @ e ) ),
    inference(cnf,[status(esa)],[17]) ).

thf(19,plain,
    ! [A: $i] :
      ( ( f @ A @ e )
      = ( s @ e ) ),
    inference(lifteq,[status(thm)],[18]) ).

thf(7,axiom,
    ! [A: $i,B: $i] :
      ( ( f @ ( s @ A ) @ ( s @ B ) )
      = ( f @ A @ ( f @ ( s @ A ) @ B ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',a3) ).

thf(23,plain,
    ! [A: $i,B: $i] :
      ( ( f @ ( s @ A ) @ ( s @ B ) )
      = ( f @ A @ ( f @ ( s @ A ) @ B ) ) ),
    inference(defexp_and_simp_and_etaexpand,[status(thm)],[7]) ).

thf(24,plain,
    ! [B: $i,A: $i] :
      ( ( f @ ( s @ A ) @ ( s @ B ) )
      = ( f @ A @ ( f @ ( s @ A ) @ B ) ) ),
    inference(cnf,[status(esa)],[23]) ).

thf(25,plain,
    ! [B: $i,A: $i] :
      ( ( f @ ( s @ A ) @ ( s @ B ) )
      = ( f @ A @ ( f @ ( s @ A ) @ B ) ) ),
    inference(lifteq,[status(thm)],[24]) ).

thf(187,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( f @ B @ ( f @ ( s @ B ) @ C ) )
        = ( s @ e ) )
      | ( ( f @ A @ e )
       != ( f @ ( s @ B ) @ ( s @ C ) ) ) ),
    inference(paramod_ordered,[status(thm)],[19,25]) ).

thf(197,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( f @ B @ ( f @ ( s @ B ) @ C ) )
        = ( s @ e ) )
      | ( A
       != ( s @ B ) )
      | ( ( s @ C )
       != e ) ),
    inference(simp,[status(thm)],[187]) ).

thf(202,plain,
    ! [B: $i,A: $i] :
      ( ( ( f @ A @ ( f @ ( s @ A ) @ B ) )
        = ( s @ e ) )
      | ( ( s @ B )
       != e ) ),
    inference(simp,[status(thm)],[197]) ).

thf(99,plain,
    ( ( ! [A: $i] :
          ( ( d @ e )
         => ( d @ e ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ e ) ) ),
    inference(pre_uni,[status(thm)],[90:[bind(A,$thf( ^ [B: $i] : ( d @ e ) ))]]) ).

thf(104,plain,
    ( ind
    @ ^ [A: $i] : ( d @ e ) ),
    inference(simp,[status(thm)],[99]) ).

thf(111,plain,
    ( ind
    @ ^ [A: $i] : $true ),
    inference(rewrite,[status(thm)],[104,26]) ).

thf(8359,plain,
    ( ~ ( ind @ d )
    | ( ( ind
        @ ^ [A: $i] : ( ind @ d ) )
     != ( ind
        @ ^ [A: $i] : $false ) ) ),
    inference(paramod_ordered,[status(thm)],[1662,8217]) ).

thf(8400,plain,
    ( ~ ( ind @ d )
    | ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) ) ),
    inference(simp,[status(thm)],[8359]) ).

thf(10648,plain,
    ( ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ( ( ind @ d )
     != ( ind
        @ ^ [A: $i] : $true ) ) ),
    inference(paramod_ordered,[status(thm)],[111,8400]) ).

thf(10694,plain,
    ( ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ( d
     != ( ^ [A: $i] : $true ) ) ),
    inference(simp,[status(thm)],[10648]) ).

thf(6,axiom,
    ! [A: $i] :
      ( ( f @ e @ ( s @ A ) )
      = ( s @ ( s @ ( f @ e @ A ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',a2) ).

thf(20,plain,
    ! [A: $i] :
      ( ( f @ e @ ( s @ A ) )
      = ( s @ ( s @ ( f @ e @ A ) ) ) ),
    inference(defexp_and_simp_and_etaexpand,[status(thm)],[6]) ).

thf(21,plain,
    ! [A: $i] :
      ( ( f @ e @ ( s @ A ) )
      = ( s @ ( s @ ( f @ e @ A ) ) ) ),
    inference(cnf,[status(esa)],[20]) ).

thf(22,plain,
    ! [A: $i] :
      ( ( f @ e @ ( s @ A ) )
      = ( s @ ( s @ ( f @ e @ A ) ) ) ),
    inference(lifteq,[status(thm)],[21]) ).

thf(61,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( p @ B @ C )
        = ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) )
      | ( ( f @ e @ ( s @ A ) )
       != ( f @ B @ C ) ) ),
    inference(paramod_ordered,[status(thm)],[22,13]) ).

thf(62,plain,
    ! [A: $i] :
      ( ( p @ e @ ( s @ A ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[61:[bind(A,$thf( D )),bind(B,$thf( e )),bind(C,$thf( s @ D ))]]) ).

thf(68,plain,
    ! [A: $i] :
      ( ( p @ e @ ( s @ A ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ),
    inference(simp,[status(thm)],[62]) ).

thf(1780,plain,
    ! [B: $i,A: $i] :
      ( ( ( p @ e @ ( s @ B ) )
        = ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) )
      | ( ( f @ e @ ( s @ A ) )
       != ( f @ e @ B ) ) ),
    inference(paramod_ordered,[status(thm)],[22,68]) ).

thf(1781,plain,
    ! [A: $i] :
      ( ( p @ e @ ( s @ ( s @ A ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[1780:[bind(A,$thf( C )),bind(B,$thf( s @ C ))]]) ).

thf(1822,plain,
    ! [A: $i] :
      ( ( p @ e @ ( s @ ( s @ A ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ),
    inference(simp,[status(thm)],[1781]) ).

thf(10139,plain,
    ! [B: $i,A: $i] :
      ( ( ( p @ e @ ( s @ ( s @ B ) ) )
        = ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) )
      | ( ( f @ e @ ( s @ A ) )
       != ( f @ e @ B ) ) ),
    inference(paramod_ordered,[status(thm)],[22,1822]) ).

thf(10140,plain,
    ! [A: $i] :
      ( ( p @ e @ ( s @ ( s @ ( s @ A ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[10139:[bind(A,$thf( C )),bind(B,$thf( s @ C ))]]) ).

thf(10255,plain,
    ! [A: $i] :
      ( ( p @ e @ ( s @ ( s @ ( s @ A ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ),
    inference(simp,[status(thm)],[10140]) ).

thf(14058,plain,
    ! [B: $i,A: $i] :
      ( ( ( p @ e @ ( s @ ( s @ ( s @ B ) ) ) )
        = ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) ) )
      | ( ( f @ e @ ( s @ A ) )
       != ( f @ e @ B ) ) ),
    inference(paramod_ordered,[status(thm)],[22,10255]) ).

thf(14059,plain,
    ! [A: $i] :
      ( ( p @ e @ ( s @ ( s @ ( s @ ( s @ A ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[14058:[bind(A,$thf( C )),bind(B,$thf( s @ C ))]]) ).

thf(14282,plain,
    ! [A: $i] :
      ( ( p @ e @ ( s @ ( s @ ( s @ ( s @ A ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(simp,[status(thm)],[14059]) ).

thf(24920,plain,
    ! [B: $i,A: $i] :
      ( ( ( p @ e @ ( s @ ( s @ ( s @ ( s @ B ) ) ) ) )
        = ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ) ) )
      | ( ( f @ A @ e )
       != ( f @ e @ B ) ) ),
    inference(paramod_ordered,[status(thm)],[19,14282]) ).

thf(24921,plain,
    ( ( p @ e @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[24920:[bind(A,$thf( e )),bind(B,$thf( e ))]]) ).

thf(25261,plain,
    ! [A: $i > $o] :
      ( ( ( ! [B: $i > $o] :
              ( ( ind @ B )
             => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) )
          & ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( p @ e @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[24921,16]) ).

thf(25341,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) )
      & ! [A: $i] :
          ( ( p @ e @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) )
         => ( p @ e @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( p @ e @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ),
    inference(pre_uni,[status(thm)],[25261:[bind(A,$thf( ^ [B: $i] : ( p @ e @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ))]]) ).

thf(25450,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( p @ e @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ),
    inference(simp,[status(thm)],[25341]) ).

thf(28164,plain,
    ( ( ind
      @ ^ [A: $i] :
        ! [B: $i > $o] :
          ( ( ind @ B )
         => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[25450,24921]) ).

thf(372,plain,
    ! [A: $i > $o] :
      ( ( ( ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( d @ ( s @ e ) )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[352,16]) ).

thf(374,plain,
    ( ( ! [A: $i] :
          ( ( d @ ( s @ A ) )
         => ( d @ ( s @ ( s @ A ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(pre_uni,[status(thm)],[372:[bind(A,$thf( ^ [B: $i] : ( d @ ( s @ B ) ) ))]]) ).

thf(1307,plain,
    ! [A: $i > $o] :
      ( ( ( ! [B: $i] :
              ( ( d @ ( s @ B ) )
             => ( d @ ( s @ ( s @ B ) ) ) )
          & ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( ind
          @ ^ [B: $i] : ( d @ ( s @ B ) ) )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[374,16]) ).

thf(1317,plain,
    ( ( ! [A: $i] :
          ( ( d @ ( s @ A ) )
         => ( d @ ( s @ ( s @ A ) ) ) )
      & ! [A: $i] :
          ( ( ind
            @ ^ [B: $i] : ( d @ ( s @ B ) ) )
         => ( ind
            @ ^ [B: $i] : ( d @ ( s @ B ) ) ) ) )
    = ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] : ( d @ ( s @ B ) ) ) ) ),
    inference(pre_uni,[status(thm)],[1307:[bind(A,$thf( ^ [B: $i] : ( ind @ ^ [C: $i] : ( d @ ( s @ C ) ) ) ))]]) ).

thf(1331,plain,
    ( ( ! [A: $i] :
          ( ( d @ ( s @ A ) )
         => ( d @ ( s @ ( s @ A ) ) ) ) )
    = ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] : ( d @ ( s @ B ) ) ) ) ),
    inference(simp,[status(thm)],[1317]) ).

thf(3076,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] : ( d @ ( s @ B ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(rewrite,[status(thm)],[374,1331]) ).

thf(3585,plain,
    ( ( ! [A: $i] :
          ( ( d @ ( s @ A ) )
         => ( d @ ( s @ ( s @ A ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(rewrite,[status(thm)],[1331,3076]) ).

thf(3712,plain,
    ( ~ ! [A: $i] :
          ( ( d @ ( s @ A ) )
         => ( d @ ( s @ ( s @ A ) ) ) )
    | ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(bool_ext,[status(thm)],[3585]) ).

thf(3848,plain,
    ( ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) )
    | ( d @ ( s @ sk94 ) ) ),
    inference(cnf,[status(esa)],[3712]) ).

thf(1,conjecture,
    d @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ),
    file('/export/starexec/sandbox2/benchmark/theBenchmark.p',conj_0) ).

thf(2,negated_conjecture,
    ~ ( d @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ),
    inference(neg_conjecture,[status(cth)],[1]) ).

thf(10,plain,
    ~ ( d @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ),
    inference(defexp_and_simp_and_etaexpand,[status(thm)],[2]) ).

thf(370,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ e ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[352,28]) ).

thf(371,plain,
    d @ ( s @ ( s @ e ) ),
    inference(pattern_uni,[status(thm)],[370:[bind(A,$thf( s @ e ))]]) ).

thf(386,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ e ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[371,28]) ).

thf(387,plain,
    d @ ( s @ ( s @ ( s @ e ) ) ),
    inference(pattern_uni,[status(thm)],[386:[bind(A,$thf( s @ ( s @ e ) ))]]) ).

thf(403,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ ( s @ e ) ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[387,28]) ).

thf(404,plain,
    d @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ),
    inference(pattern_uni,[status(thm)],[403:[bind(A,$thf( s @ ( s @ ( s @ e ) ) ))]]) ).

thf(422,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[404,28]) ).

thf(423,plain,
    d @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[422:[bind(A,$thf( s @ ( s @ ( s @ ( s @ e ) ) ) ))]]) ).

thf(657,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[423,28]) ).

thf(658,plain,
    d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[657:[bind(A,$thf( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ))]]) ).

thf(868,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[658,28]) ).

thf(869,plain,
    d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[868:[bind(A,$thf( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ))]]) ).

thf(1126,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[869,28]) ).

thf(1127,plain,
    d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[1126:[bind(A,$thf( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ))]]) ).

thf(1339,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[1127,28]) ).

thf(1340,plain,
    d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[1339:[bind(A,$thf( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ))]]) ).

thf(4542,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[1340,28]) ).

thf(4543,plain,
    d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[4542:[bind(A,$thf( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ))]]) ).

thf(11894,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ ( s @ sk4 ) )
     != ( d @ ( s @ e ) ) ) ),
    inference(paramod_ordered,[status(thm)],[352,10904]) ).

thf(11930,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( s @ sk4 )
     != ( s @ e ) ) ),
    inference(simp,[status(thm)],[11894]) ).

thf(3779,plain,
    ( ( ( ind
        @ ^ [A: $i] :
          ! [B: $i] :
            ( ( d @ ( s @ B ) )
           => ( d @ ( s @ ( s @ B ) ) ) ) )
      = ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) )
     != ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[3585,3076]) ).

thf(3780,plain,
    ( ( ind
      @ ^ [A: $i] :
        ! [B: $i] :
          ( ( d @ ( s @ B ) )
         => ( d @ ( s @ ( s @ B ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(pattern_uni,[status(thm)],[3779:[]]) ).

thf(4664,plain,
    ( ( ( ind
        @ ^ [A: $i] :
          ! [B: $i] :
            ( ( d @ ( s @ B ) )
           => ( d @ ( s @ ( s @ B ) ) ) ) )
      = ( ! [A: $i] :
            ( ( d @ ( s @ A ) )
           => ( d @ ( s @ ( s @ A ) ) ) ) ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) )
     != ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[3780,3585]) ).

thf(4665,plain,
    ( ( ind
      @ ^ [A: $i] :
        ! [B: $i] :
          ( ( d @ ( s @ B ) )
         => ( d @ ( s @ ( s @ B ) ) ) ) )
    = ( ! [A: $i] :
          ( ( d @ ( s @ A ) )
         => ( d @ ( s @ ( s @ A ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[4664:[]]) ).

thf(8351,plain,
    ( ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( ( ind @ d )
     != ( ind
        @ ^ [A: $i] : $false ) ) ),
    inference(paramod_ordered,[status(thm)],[1375,8217]) ).

thf(8382,plain,
    ( ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(simp,[status(thm)],[8351]) ).

thf(8427,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ~ ( d @ ( s @ sk296 ) ) ),
    inference(cnf,[status(esa)],[8382]) ).

thf(10728,plain,
    ! [A: $i] :
      ( ~ ( d @ A )
      | ( d
       != ( ^ [B: $i] : $false ) )
      | ( ( d @ ( s @ A ) )
       != ( d @ ( s @ sk296 ) ) ) ),
    inference(paramod_ordered,[status(thm)],[28,8427]) ).

thf(10729,plain,
    ( ~ ( d @ sk296 )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(pattern_uni,[status(thm)],[10728:[bind(A,$thf( sk296 ))]]) ).

thf(10973,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ ( s @ e ) )
     != ( d @ sk296 ) ) ),
    inference(paramod_ordered,[status(thm)],[352,10729]) ).

thf(10997,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( s @ e )
     != sk296 ) ),
    inference(simp,[status(thm)],[10973]) ).

thf(26987,plain,
    ( ~ ( d @ ( s @ sk5 ) )
    | ( ( ind @ d )
     != ( ind
        @ ^ [A: $i] : $false ) ) ),
    inference(paramod_ordered,[status(thm)],[26920,8217]) ).

thf(27097,plain,
    ( ~ ( d @ ( s @ sk5 ) )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(simp,[status(thm)],[26987]) ).

thf(27246,plain,
    ! [A: $i] :
      ( ~ ( d @ A )
      | ( d
       != ( ^ [B: $i] : $false ) )
      | ( ( d @ ( s @ A ) )
       != ( d @ ( s @ sk5 ) ) ) ),
    inference(paramod_ordered,[status(thm)],[28,27097]) ).

thf(27247,plain,
    ( ~ ( d @ sk5 )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(pattern_uni,[status(thm)],[27246:[bind(A,$thf( sk5 ))]]) ).

thf(27314,plain,
    ! [A: $i > $o] :
      ( ~ ( ind @ A )
      | ( d
       != ( ^ [B: $i] : $false ) )
      | ( ( A @ e )
       != ( d @ sk5 ) ) ),
    inference(paramod_ordered,[status(thm)],[108,27247]) ).

thf(27334,plain,
    ( ~ ( ind
        @ ^ [A: $i] : ( d @ sk5 ) )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(pre_uni,[status(thm)],[27314:[bind(A,$thf( ^ [B: $i] : ( d @ sk5 ) ))]]) ).

thf(28757,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ sk5 ) )
     != ( ind
        @ ^ [A: $i] : $true ) ) ),
    inference(paramod_ordered,[status(thm)],[111,27334]) ).

thf(28794,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( ^ [A: $i] : ( d @ sk5 ) )
     != ( ^ [A: $i] : $true ) ) ),
    inference(simp,[status(thm)],[28757]) ).

thf(14114,plain,
    ! [B: $i,A: $i] :
      ( ( ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) )
        = ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( f @ e @ B ) ) ) ) ) ) )
      | ( ( p @ e @ ( s @ ( s @ ( s @ A ) ) ) )
       != ( p @ e @ ( s @ B ) ) ) ),
    inference(paramod_ordered,[status(thm)],[10255,68]) ).

thf(14115,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( f @ e @ ( s @ ( s @ A ) ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[14114:[bind(A,$thf( D )),bind(B,$thf( s @ ( s @ D ) ))]]) ).

thf(14192,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( f @ e @ ( s @ ( s @ A ) ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ),
    inference(simp,[status(thm)],[14115]) ).

thf(10131,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) )
        = ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( f @ B @ C ) ) ) ) )
      | ( ( p @ e @ ( s @ ( s @ A ) ) )
       != ( p @ B @ C ) ) ),
    inference(paramod_ordered,[status(thm)],[1822,13]) ).

thf(10132,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( f @ e @ ( s @ ( s @ A ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[10131:[bind(A,$thf( E )),bind(B,$thf( e )),bind(C,$thf( s @ ( s @ E ) ))]]) ).

thf(10253,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( f @ e @ ( s @ ( s @ A ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ),
    inference(simp,[status(thm)],[10132]) ).

thf(11236,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( f @ e @ ( s @ A ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[10253,22]) ).

thf(16609,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ ( s @ A ) ) ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[14192,11236]) ).

thf(10175,plain,
    ! [B: $i,A: $i] :
      ( ( ( p @ e @ ( s @ ( s @ B ) ) )
        = ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) )
      | ( ( f @ A @ e )
       != ( f @ e @ B ) ) ),
    inference(paramod_ordered,[status(thm)],[19,1822]) ).

thf(10176,plain,
    ( ( p @ e @ ( s @ ( s @ e ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[10175:[bind(A,$thf( e )),bind(B,$thf( e ))]]) ).

thf(10369,plain,
    ! [A: $i > $o] :
      ( ( ( ! [B: $i > $o] :
              ( ( ind @ B )
             => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) )
          & ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( p @ e @ ( s @ ( s @ e ) ) )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[10176,16]) ).

thf(10384,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) )
      & ! [A: $i] :
          ( ( p @ e @ ( s @ ( s @ e ) ) )
         => ( p @ e @ ( s @ ( s @ e ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( p @ e @ ( s @ ( s @ e ) ) ) ) ),
    inference(pre_uni,[status(thm)],[10369:[bind(A,$thf( ^ [B: $i] : ( p @ e @ ( s @ ( s @ e ) ) ) ))]]) ).

thf(10431,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( p @ e @ ( s @ ( s @ e ) ) ) ) ),
    inference(simp,[status(thm)],[10384]) ).

thf(11010,plain,
    ( ( ind
      @ ^ [A: $i] :
        ! [B: $i > $o] :
          ( ( ind @ B )
         => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[10431,10176]) ).

thf(89,plain,
    ! [B: $i > $o,A: $i > $o] :
      ( ( ( ( ind @ A )
          & ! [C: $i] :
              ( ( B @ C )
             => ( B @ ( s @ C ) ) ) )
        = ( ind @ B ) )
      | ( ( ( A @ e )
          & ! [C: $i] :
              ( ( A @ C )
             => ( A @ ( s @ C ) ) ) )
       != ( B @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[16,16]) ).

thf(94,plain,
    ! [C: $i > $i > $o,B: $i > $i > $o,A: $i > $o] :
      ( ( ( ( ind @ ( B @ e ) )
          & ! [D: $i] :
              ( ( ( A @ D )
                & ! [E: $i] :
                    ( ( B @ D @ E )
                   => ( C @ D @ E ) ) )
             => ( ( A @ ( s @ D ) )
                & ! [E: $i] :
                    ( ( B @ ( s @ D ) @ E )
                   => ( C @ ( s @ D ) @ E ) ) ) ) )
        = ( ind
          @ ^ [D: $i] :
              ( ( A @ D )
              & ! [E: $i] :
                  ( ( B @ D @ E )
                 => ( C @ D @ E ) ) ) ) )
      | ( ( B @ e @ e )
       != ( A @ e ) )
      | ( ( ^ [D: $i] : ( B @ e @ ( s @ D ) ) )
       != ( C @ e ) ) ),
    inference(pre_uni,[status(thm)],[89:[bind(A,$thf( F @ e )),bind(B,$thf( ^ [F: $i] : ( ( C @ F ) & ! [G: $i] : ( ( F @ F @ G ) => ( G @ F @ G ) ) ) ))]]) ).

thf(95,plain,
    ! [C: $i > $i > $o,B: $i > $i > $o,A: $i > $o] :
      ( ( ( ( ind @ ( B @ e ) )
          & ! [D: $i] :
              ( ( ( A @ D )
                & ! [E: $i] :
                    ( ( B @ D @ E )
                   => ( C @ D @ E ) ) )
             => ( ( A @ ( s @ D ) )
                & ! [E: $i] :
                    ( ( B @ ( s @ D ) @ E )
                   => ( C @ ( s @ D ) @ E ) ) ) ) )
        = ( ind
          @ ^ [D: $i] :
              ( ( A @ D )
              & ! [E: $i] :
                  ( ( B @ D @ E )
                 => ( C @ D @ E ) ) ) ) )
      | ( ( B @ e @ e )
       != ( A @ e ) )
      | ( ( ^ [D: $i] : ( B @ e @ ( s @ D ) ) )
       != ( C @ e ) ) ),
    inference(pre_uni,[status(thm)],[94:[]]) ).

thf(110,plain,
    ! [C: $i > $i > $o,B: $i > $i > $o,A: $i > $o] :
      ( ( ( ( ind @ ( B @ e ) )
          & ! [D: $i] :
              ( ( ( A @ D )
                & ! [E: $i] :
                    ( ( B @ D @ E )
                   => ( C @ D @ E ) ) )
             => ( ( A @ ( s @ D ) )
                & ! [E: $i] :
                    ( ( B @ ( s @ D ) @ E )
                   => ( C @ ( s @ D ) @ E ) ) ) ) )
        = ( ind
          @ ^ [D: $i] :
              ( ( A @ D )
              & ! [E: $i] :
                  ( ( B @ D @ E )
                 => ( C @ D @ E ) ) ) ) )
      | ( ( B @ e @ e )
       != ( A @ e ) )
      | ( ( ^ [D: $i] : ( B @ e @ ( s @ D ) ) )
       != ( C @ e ) ) ),
    inference(simp,[status(thm)],[95]) ).

thf(11898,plain,
    ! [A: $i] :
      ( ~ ( d @ A )
      | ( d
       != ( ^ [B: $i] : $false ) )
      | ( ( d @ ( s @ A ) )
       != ( d @ ( s @ sk4 ) ) ) ),
    inference(paramod_ordered,[status(thm)],[28,10904]) ).

thf(11899,plain,
    ( ~ ( d @ sk4 )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(pattern_uni,[status(thm)],[11898:[bind(A,$thf( sk4 ))]]) ).

thf(11941,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ ( s @ ( s @ e ) ) )
     != ( d @ sk4 ) ) ),
    inference(paramod_ordered,[status(thm)],[371,11899]) ).

thf(11966,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( s @ ( s @ e ) )
     != sk4 ) ),
    inference(simp,[status(thm)],[11941]) ).

thf(10596,plain,
    ( ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ( ( ind @ d )
     != ( ind @ d ) ) ),
    inference(paramod_ordered,[status(thm)],[1375,8400]) ).

thf(10597,plain,
    ( ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) ) ),
    inference(pattern_uni,[status(thm)],[10596:[]]) ).

thf(10719,plain,
    ( ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ~ ( d @ ( s @ sk404 ) ) ),
    inference(cnf,[status(esa)],[10597]) ).

thf(11944,plain,
    ! [A: $i > $o] :
      ( ~ ( ind @ A )
      | ( d
       != ( ^ [B: $i] : $false ) )
      | ( ( A @ e )
       != ( d @ sk4 ) ) ),
    inference(paramod_ordered,[status(thm)],[108,11899]) ).

thf(11965,plain,
    ( ~ ( ind
        @ ^ [A: $i] : ( d @ sk4 ) )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(pre_uni,[status(thm)],[11944:[bind(A,$thf( ^ [B: $i] : ( d @ sk4 ) ))]]) ).

thf(13917,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ sk4 ) )
     != ( ind
        @ ^ [A: $i] : $true ) ) ),
    inference(paramod_ordered,[status(thm)],[111,11965]) ).

thf(13942,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( ^ [A: $i] : ( d @ sk4 ) )
     != ( ^ [A: $i] : $true ) ) ),
    inference(simp,[status(thm)],[13917]) ).

thf(4683,plain,
    ( ( ( ind
        @ ^ [A: $i] :
            ( ind
            @ ^ [B: $i] :
              ! [C: $i] :
                ( ( d @ ( s @ C ) )
               => ( d @ ( s @ ( s @ C ) ) ) ) ) )
      = ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) )
     != ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[3780,3076]) ).

thf(4684,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
            ! [C: $i] :
              ( ( d @ ( s @ C ) )
             => ( d @ ( s @ ( s @ C ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(pattern_uni,[status(thm)],[4683:[]]) ).

thf(6047,plain,
    ( ( ( ind
        @ ^ [A: $i] :
            ( ind
            @ ^ [B: $i] :
                ( ind
                @ ^ [C: $i] :
                  ! [D: $i] :
                    ( ( d @ ( s @ D ) )
                   => ( d @ ( s @ ( s @ D ) ) ) ) ) ) )
      = ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) )
     != ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[4684,3076]) ).

thf(6048,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
              ( ind
              @ ^ [C: $i] :
                ! [D: $i] :
                  ( ( d @ ( s @ D ) )
                 => ( d @ ( s @ ( s @ D ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(pattern_uni,[status(thm)],[6047:[]]) ).

thf(9329,plain,
    ( ( ( ind
        @ ^ [A: $i] :
            ( ind
            @ ^ [B: $i] :
                ( ind
                @ ^ [C: $i] :
                    ( ind
                    @ ^ [D: $i] :
                      ! [E: $i] :
                        ( ( d @ ( s @ E ) )
                       => ( d @ ( s @ ( s @ E ) ) ) ) ) ) ) )
      = ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) )
     != ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[6048,3076]) ).

thf(9330,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
              ( ind
              @ ^ [C: $i] :
                  ( ind
                  @ ^ [D: $i] :
                    ! [E: $i] :
                      ( ( d @ ( s @ E ) )
                     => ( d @ ( s @ ( s @ E ) ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(pattern_uni,[status(thm)],[9329:[]]) ).

thf(18877,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
              ( ind
              @ ^ [C: $i] :
                ! [D: $i] :
                  ( ( d @ ( s @ D ) )
                 => ( d @ ( s @ ( s @ D ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(rewrite,[status(thm)],[9330,4665]) ).

thf(19867,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
            ! [C: $i] :
              ( ( d @ ( s @ C ) )
             => ( d @ ( s @ ( s @ C ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(rewrite,[status(thm)],[18877,4665]) ).

thf(9283,plain,
    ( ( ( ind
        @ ^ [A: $i] :
            ( ind
            @ ^ [B: $i] :
                ( ind
                @ ^ [C: $i] :
                    ( ind
                    @ ^ [D: $i] : ( d @ ( s @ D ) ) ) ) ) )
      = ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) )
    | ( ( ! [A: $i] :
            ( ( d @ ( s @ A ) )
           => ( d @ ( s @ ( s @ A ) ) ) ) )
     != ( ! [A: $i] :
            ( ( d @ ( s @ A ) )
           => ( d @ ( s @ ( s @ A ) ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[3585,6048]) ).

thf(9284,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
              ( ind
              @ ^ [C: $i] :
                  ( ind
                  @ ^ [D: $i] : ( d @ ( s @ D ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(pattern_uni,[status(thm)],[9283:[]]) ).

thf(9538,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
              ( ind
              @ ^ [C: $i] : ( d @ ( s @ C ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(rewrite,[status(thm)],[9284,3076]) ).

thf(20016,plain,
    ( ( ( ind
        @ ^ [A: $i] :
            ( ind
            @ ^ [B: $i] :
                ( ind
                @ ^ [C: $i] :
                    ( ind
                    @ ^ [D: $i] :
                      ! [E: $i] :
                        ( ( d @ ( s @ E ) )
                       => ( d @ ( s @ ( s @ E ) ) ) ) ) ) ) )
      = ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) )
     != ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[19867,9538]) ).

thf(20017,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
              ( ind
              @ ^ [C: $i] :
                  ( ind
                  @ ^ [D: $i] :
                    ! [E: $i] :
                      ( ( d @ ( s @ E ) )
                     => ( d @ ( s @ ( s @ E ) ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(pattern_uni,[status(thm)],[20016:[]]) ).

thf(20647,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
              ( ind
              @ ^ [C: $i] :
                ! [D: $i] :
                  ( ( d @ ( s @ D ) )
                 => ( d @ ( s @ ( s @ D ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(rewrite,[status(thm)],[20017,4665]) ).

thf(14104,plain,
    ! [B: $i,A: $i] :
      ( ( ( p @ e @ ( s @ ( s @ ( s @ B ) ) ) )
        = ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) )
      | ( ( f @ A @ e )
       != ( f @ e @ B ) ) ),
    inference(paramod_ordered,[status(thm)],[19,10255]) ).

thf(14105,plain,
    ( ( p @ e @ ( s @ ( s @ ( s @ e ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[14104:[bind(A,$thf( e )),bind(B,$thf( e ))]]) ).

thf(14313,plain,
    ! [A: $i > $o] :
      ( ( ( ! [B: $i > $o] :
              ( ( ind @ B )
             => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) )
          & ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( p @ e @ ( s @ ( s @ ( s @ e ) ) ) )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[14105,16]) ).

thf(14339,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) )
      & ! [A: $i] :
          ( ( p @ e @ ( s @ ( s @ ( s @ e ) ) ) )
         => ( p @ e @ ( s @ ( s @ ( s @ e ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( p @ e @ ( s @ ( s @ ( s @ e ) ) ) ) ) ),
    inference(pre_uni,[status(thm)],[14313:[bind(A,$thf( ^ [B: $i] : ( p @ e @ ( s @ ( s @ ( s @ e ) ) ) ) ))]]) ).

thf(14387,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( p @ e @ ( s @ ( s @ ( s @ e ) ) ) ) ) ),
    inference(simp,[status(thm)],[14339]) ).

thf(14949,plain,
    ( ( ind
      @ ^ [A: $i] :
        ! [B: $i > $o] :
          ( ( ind @ B )
         => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[14387,14105]) ).

thf(84,plain,
    ! [A: $i > $o] :
      ( ~ ( ( A @ e )
          & ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
      | ( ind @ A ) ),
    inference(bool_ext,[status(thm)],[16]) ).

thf(105,plain,
    ! [A: $i > $o] :
      ( ( ind @ A )
      | ~ ( A @ e )
      | ( A @ ( sk3 @ A ) ) ),
    inference(cnf,[status(esa)],[84]) ).

thf(4150,plain,
    ! [A: $i > $o] :
      ( ( ind @ A )
      | ( A @ ( sk3 @ A ) )
      | ( ( d @ e )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,105]) ).

thf(4327,plain,
    ( ( ind @ d )
    | ( d @ ( sk3 @ d ) ) ),
    inference(pre_uni,[status(thm)],[4150:[bind(A,$thf( d ))]]) ).

thf(13243,plain,
    ! [A: $i > $o] :
      ( ( ind @ d )
      | ( ( ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( d @ ( sk3 @ d ) )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[4327,16]) ).

thf(13333,plain,
    ( ( ind @ d )
    | ( ( ! [A: $i] :
            ( ( d @ ( sk3 @ d ) )
           => ( d @ ( sk3 @ d ) ) ) )
      = ( ind
        @ ^ [A: $i] : ( d @ ( sk3 @ d ) ) ) ) ),
    inference(pre_uni,[status(thm)],[13243:[bind(A,$thf( ^ [B: $i] : ( d @ ( sk3 @ d ) ) ))]]) ).

thf(13365,plain,
    ( ( ind @ d )
    | ( ind
      @ ^ [A: $i] : ( d @ ( sk3 @ d ) ) ) ),
    inference(simp,[status(thm)],[13333]) ).

thf(10735,plain,
    ! [A: $i > $o] :
      ( ~ ( ind @ A )
      | ( d
       != ( ^ [B: $i] : $false ) )
      | ( ( A @ e )
       != ( d @ ( s @ sk296 ) ) ) ),
    inference(paramod_ordered,[status(thm)],[108,8427]) ).

thf(10746,plain,
    ( ~ ( ind
        @ ^ [A: $i] : ( d @ ( s @ sk296 ) ) )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(pre_uni,[status(thm)],[10735:[bind(A,$thf( ^ [B: $i] : ( d @ ( s @ sk296 ) ) ))]]) ).

thf(5860,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[4543,28]) ).

thf(5861,plain,
    d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[5860:[bind(A,$thf( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ))]]) ).

thf(106,plain,
    ! [A: $i > $o] :
      ( ( ind @ A )
      | ~ ( A @ e )
      | ~ ( A @ ( s @ ( sk3 @ A ) ) ) ),
    inference(cnf,[status(esa)],[84]) ).

thf(7697,plain,
    ! [A: $i > $o] :
      ( ~ ! [B: $i] :
            ( ( d @ B )
           => ( d @ ( s @ B ) ) )
      | ( A @ e )
      | ( ( ind
          @ ^ [B: $i] : ( ind @ d ) )
       != ( ind @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[2336,108]) ).

thf(7698,plain,
    ( ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( ind @ d ) ),
    inference(pattern_uni,[status(thm)],[7697:[bind(A,$thf( ^ [B: $i] : ( ind @ d ) ))]]) ).

thf(8141,plain,
    ( ( ind @ d )
    | ( d @ sk283 ) ),
    inference(cnf,[status(esa)],[7698]) ).

thf(1795,plain,
    ! [B: $i,A: $i] :
      ( ( ( p @ e @ ( s @ B ) )
        = ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) )
      | ( ( f @ A @ e )
       != ( f @ e @ B ) ) ),
    inference(paramod_ordered,[status(thm)],[19,68]) ).

thf(1796,plain,
    ( ( p @ e @ ( s @ e ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[1795:[bind(A,$thf( e )),bind(B,$thf( e ))]]) ).

thf(179,plain,
    ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ e ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[10,25]) ).

thf(270,plain,
    ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ e ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[179,25]) ).

thf(1910,plain,
    ! [A: $i > $o] :
      ( ( ( ! [B: $i > $o] :
              ( ( ind @ B )
             => ( B @ ( s @ ( s @ ( s @ e ) ) ) ) )
          & ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( p @ e @ ( s @ e ) )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[1796,16]) ).

thf(1915,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ e ) ) ) ) )
      & ! [A: $i] :
          ( ( p @ A @ ( s @ A ) )
         => ( p @ ( s @ A ) @ ( s @ ( s @ A ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( p @ A @ ( s @ A ) ) ) ),
    inference(pre_uni,[status(thm)],[1910:[bind(A,$thf( ^ [B: $i] : ( p @ B @ ( s @ B ) ) ))]]) ).

thf(29,plain,
    ! [A: $i] :
      ( ~ ( d @ ( s @ e ) )
      | ( ( f @ A @ e )
       != ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[19,10]) ).

thf(31,plain,
    ! [A: $i] :
      ( ~ ( d @ ( s @ e ) )
      | ( A
       != ( s @ ( s @ ( s @ ( s @ e ) ) ) ) )
      | ( ( s @ ( s @ ( s @ ( s @ e ) ) ) )
       != e ) ),
    inference(simp,[status(thm)],[29]) ).

thf(33,plain,
    ( ~ ( d @ ( s @ e ) )
    | ( ( s @ ( s @ ( s @ ( s @ e ) ) ) )
     != e ) ),
    inference(simp,[status(thm)],[31]) ).

thf(365,plain,
    ( ~ $true
    | ( ( s @ ( s @ ( s @ ( s @ e ) ) ) )
     != e ) ),
    inference(rewrite,[status(thm)],[33,352]) ).

thf(366,plain,
    ( s @ ( s @ ( s @ ( s @ e ) ) ) )
 != e,
    inference(simp,[status(thm)],[365]) ).

thf(237,plain,
    ( ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( ind @ d ) ),
    inference(bool_ext,[status(thm)],[218]) ).

thf(266,plain,
    ( ( ind @ d )
    | ( d @ sk6 ) ),
    inference(cnf,[status(esa)],[237]) ).

thf(322,plain,
    ( ( d @ sk6 )
    | ( ( ind @ d )
      = ( ind
        @ ^ [A: $i] : $true ) )
    | ( ( ind @ d )
     != ( ind @ d ) ) ),
    inference(paramod_ordered,[status(thm)],[266,205]) ).

thf(323,plain,
    ( ( d @ sk6 )
    | ( ( ind @ d )
      = ( ind
        @ ^ [A: $i] : $true ) ) ),
    inference(pattern_uni,[status(thm)],[322:[]]) ).

thf(1487,plain,
    ( ( d @ sk6 )
    | ( ind @ d ) ),
    inference(rewrite,[status(thm)],[323,111]) ).

thf(14048,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) )
        = ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( f @ B @ C ) ) ) ) )
      | ( ( p @ e @ ( s @ ( s @ ( s @ A ) ) ) )
       != ( p @ B @ C ) ) ),
    inference(paramod_ordered,[status(thm)],[10255,13]) ).

thf(14049,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( f @ e @ ( s @ ( s @ ( s @ A ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[14048:[bind(A,$thf( F )),bind(B,$thf( e )),bind(C,$thf( s @ ( s @ ( s @ F ) ) ))]]) ).

thf(14280,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( f @ e @ ( s @ ( s @ ( s @ A ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ),
    inference(simp,[status(thm)],[14049]) ).

thf(16751,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( f @ e @ ( s @ ( s @ A ) ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[14280,22]) ).

thf(388,plain,
    ! [A: $i > $o] :
      ( ( ( ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( d @ ( s @ ( s @ e ) ) )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[371,16]) ).

thf(390,plain,
    ( ( ! [A: $i] :
          ( ( d @ ( s @ ( s @ A ) ) )
         => ( d @ ( s @ ( s @ ( s @ A ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) ) ),
    inference(pre_uni,[status(thm)],[388:[bind(A,$thf( ^ [B: $i] : ( d @ ( s @ ( s @ B ) ) ) ))]]) ).

thf(8509,plain,
    ! [A: $i > $o] :
      ( ( ( ! [B: $i] :
              ( ( d @ ( s @ ( s @ B ) ) )
             => ( d @ ( s @ ( s @ ( s @ B ) ) ) ) )
          & ! [B: $i] :
              ( ( A @ B )
             => ( A @ ( s @ B ) ) ) )
        = ( ind @ A ) )
      | ( ( ind
          @ ^ [B: $i] : ( d @ ( s @ ( s @ B ) ) ) )
       != ( A @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[390,16]) ).

thf(8610,plain,
    ( ( ! [A: $i] :
          ( ( d @ ( s @ ( s @ A ) ) )
         => ( d @ ( s @ ( s @ ( s @ A ) ) ) ) )
      & ! [A: $i] :
          ( ( ind
            @ ^ [B: $i] : ( d @ ( s @ ( s @ B ) ) ) )
         => ( ind
            @ ^ [B: $i] : ( d @ ( s @ ( s @ B ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] : ( d @ ( s @ ( s @ B ) ) ) ) ) ),
    inference(pre_uni,[status(thm)],[8509:[bind(A,$thf( ^ [B: $i] : ( ind @ ^ [C: $i] : ( d @ ( s @ ( s @ C ) ) ) ) ))]]) ).

thf(8652,plain,
    ( ( ! [A: $i] :
          ( ( d @ ( s @ ( s @ A ) ) )
         => ( d @ ( s @ ( s @ ( s @ A ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] : ( d @ ( s @ ( s @ B ) ) ) ) ) ),
    inference(simp,[status(thm)],[8610]) ).

thf(11565,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] : ( d @ ( s @ ( s @ B ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) ) ),
    inference(rewrite,[status(thm)],[390,8652]) ).

thf(63,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( p @ B @ C )
        = ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( s @ e ) ) ) ) )
      | ( ( f @ A @ e )
       != ( f @ B @ C ) ) ),
    inference(paramod_ordered,[status(thm)],[19,13]) ).

thf(64,plain,
    ! [A: $i] :
      ( ( p @ A @ e )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ e ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[63:[bind(A,$thf( A )),bind(B,$thf( A )),bind(C,$thf( e ))]]) ).

thf(91,plain,
    ! [B: $i > $o,A: $i] :
      ( ( ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ e ) ) )
          & ! [C: $i] :
              ( ( B @ C )
             => ( B @ ( s @ C ) ) ) )
        = ( ind @ B ) )
      | ( ( p @ A @ e )
       != ( B @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[64,16]) ).

thf(97,plain,
    ! [A: $i > $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ e ) ) )
        & ! [B: $i] :
            ( ( p @ ( A @ B ) @ e )
           => ( p @ ( A @ ( s @ B ) ) @ e ) ) )
      = ( ind
        @ ^ [B: $i] : ( p @ ( A @ B ) @ e ) ) ),
    inference(pre_uni,[status(thm)],[91:[bind(A,$thf( C @ e )),bind(B,$thf( ^ [D: $i] : ( p @ ( C @ D ) @ e ) ))]]) ).

thf(102,plain,
    ! [A: $i > $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ e ) ) )
        & ! [B: $i] :
            ( ( p @ ( A @ B ) @ e )
           => ( p @ ( A @ ( s @ B ) ) @ e ) ) )
      = ( ind
        @ ^ [B: $i] : ( p @ ( A @ B ) @ e ) ) ),
    inference(simp,[status(thm)],[97]) ).

thf(2985,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ e ) ) )
      & ! [A: $i] :
          ( ! [B: $i > $o] :
              ( ( ind @ B )
             => ( B @ ( s @ e ) ) )
         => ! [B: $i > $o] :
              ( ( ind @ B )
             => ( B @ ( s @ e ) ) ) ) )
    = ( ind
      @ ^ [A: $i] :
        ! [B: $i > $o] :
          ( ( ind @ B )
         => ( B @ ( s @ e ) ) ) ) ),
    inference(rewrite,[status(thm)],[102,64]) ).

thf(2986,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ e ) ) ) )
    = ( ind
      @ ^ [A: $i] :
        ! [B: $i > $o] :
          ( ( ind @ B )
         => ( B @ ( s @ e ) ) ) ) ),
    inference(simp,[status(thm)],[2985]) ).

thf(59,plain,
    ! [B: $i,A: $i] :
      ( ~ ( p @ A @ B )
      | ! [C: $i > $o] :
          ( ( ind @ C )
         => ( C @ ( f @ A @ B ) ) ) ),
    inference(bool_ext,[status(thm)],[13]) ).

thf(65,plain,
    ! [C: $i > $o,B: $i,A: $i] :
      ( ~ ( ind @ C )
      | ( C @ ( f @ A @ B ) )
      | ~ ( p @ A @ B ) ),
    inference(cnf,[status(esa)],[59]) ).

thf(1014,plain,
    ! [B: $i,A: $i] :
      ( ~ ( ind
          @ ^ [C: $i] : $false )
      | $false
      | ~ ( p @ A @ B ) ),
    inference(prim_subst,[status(thm)],[65:[bind(A,$thf( A )),bind(B,$thf( B )),bind(C,$thf( ^ [D: $i] : $false ))]]) ).

thf(1091,plain,
    ! [B: $i,A: $i] :
      ( ~ ( ind
          @ ^ [C: $i] : $false )
      | ~ ( p @ A @ B ) ),
    inference(simp,[status(thm)],[1014]) ).

thf(2485,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ~ ( ind
          @ ^ [D: $i] : $false )
      | ~ ! [D: $i > $o] :
            ( ( ind @ D )
           => ( D @ ( s @ e ) ) )
      | ( ( p @ A @ e )
       != ( p @ B @ C ) ) ),
    inference(paramod_ordered,[status(thm)],[64,1091]) ).

thf(2486,plain,
    ( ~ ( ind
        @ ^ [A: $i] : $false )
    | ~ ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ e ) ) ) ),
    inference(pattern_uni,[status(thm)],[2485:[bind(A,$thf( A )),bind(B,$thf( A )),bind(C,$thf( e ))]]) ).

thf(2537,plain,
    ( ~ ( sk38 @ ( s @ e ) )
    | ~ ( ind
        @ ^ [A: $i] : $false ) ),
    inference(cnf,[status(esa)],[2486]) ).

thf(2813,plain,
    ( ~ ( sk38 @ ( s @ e ) )
    | ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( ( ind @ d )
     != ( ind
        @ ^ [A: $i] : $false ) ) ),
    inference(paramod_ordered,[status(thm)],[1375,2537]) ).

thf(2832,plain,
    ( ~ ( sk38 @ ( s @ e ) )
    | ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(simp,[status(thm)],[2813]) ).

thf(2853,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ~ ( d @ ( s @ sk53 ) )
    | ~ ( sk38 @ ( s @ e ) ) ),
    inference(cnf,[status(esa)],[2832]) ).

thf(3893,plain,
    ! [A: $i] :
      ( ~ ( d @ A )
      | ( d
       != ( ^ [B: $i] : $false ) )
      | ~ ( sk38 @ ( s @ e ) )
      | ( ( d @ ( s @ A ) )
       != ( d @ ( s @ sk53 ) ) ) ),
    inference(paramod_ordered,[status(thm)],[28,2853]) ).

thf(3894,plain,
    ( ~ ( d @ sk53 )
    | ( d
     != ( ^ [A: $i] : $false ) )
    | ~ ( sk38 @ ( s @ e ) ) ),
    inference(pattern_uni,[status(thm)],[3893:[bind(A,$thf( sk53 ))]]) ).

thf(1639,plain,
    ( ( ind
      @ ^ [A: $i] : ( ind @ d ) )
    | ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) ),
    inference(bool_ext,[status(thm)],[1604]) ).

thf(1715,plain,
    ( ( d @ sk16 )
    | ( ind
      @ ^ [A: $i] : ( ind @ d ) ) ),
    inference(cnf,[status(esa)],[1639]) ).

thf(1983,plain,
    ( ( d @ sk16 )
    | ( ind @ d ) ),
    inference(rewrite,[status(thm)],[1715,1662]) ).

thf(9062,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[5861,28]) ).

thf(9063,plain,
    d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[9062:[bind(A,$thf( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ))]]) ).

thf(3934,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ~ ( sk38 @ ( s @ e ) )
    | ( ( d @ sk53 )
     != ( d @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,3894]) ).

thf(3941,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ~ ( sk38 @ ( s @ e ) )
    | ( sk53 != e ) ),
    inference(simp,[status(thm)],[3934]) ).

thf(10739,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ ( s @ sk296 ) )
     != ( d @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,8427]) ).

thf(10760,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( s @ sk296 )
     != e ) ),
    inference(simp,[status(thm)],[10739]) ).

thf(88,plain,
    ! [C: $i > $o,B: $i,A: $i] :
      ( ( ( ( p @ A @ B )
          & ! [D: $i] :
              ( ( C @ D )
             => ( C @ ( s @ D ) ) ) )
        = ( ind @ C ) )
      | ( ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( f @ A @ B ) ) ) )
       != ( C @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[13,16]) ).

thf(92,plain,
    ! [D: $i > ( $i > $o ) > $i,C: $i > ( $i > $o ) > $i,B: $i,A: $i] :
      ( ( ( ( p @ A @ B )
          & ! [E: $i] :
              ( ! [F: $i > $o] :
                  ( ( ind @ F )
                 => ( F @ ( f @ ( C @ E @ F ) @ ( D @ E @ F ) ) ) )
             => ! [F: $i > $o] :
                  ( ( ind @ F )
                 => ( F @ ( f @ ( C @ ( s @ E ) @ F ) @ ( D @ ( s @ E ) @ F ) ) ) ) ) )
        = ( ind
          @ ^ [E: $i] :
            ! [F: $i > $o] :
              ( ( ind @ F )
             => ( F @ ( f @ ( C @ E @ F ) @ ( D @ E @ F ) ) ) ) ) )
      | ( ( ^ [E: $i > $o] : B )
       != ( D @ e ) )
      | ( ( ^ [E: $i > $o] : A )
       != ( C @ e ) ) ),
    inference(pre_uni,[status(thm)],[88:[bind(A,$thf( A )),bind(B,$thf( B )),bind(C,$thf( ^ [F: $i] : ! [G: $i > $o] : ( ( ind @ G ) => ( G @ ( f @ ( K @ F @ G ) @ ( L @ F @ G ) ) ) ) ))]]) ).

thf(93,plain,
    ! [D: $i > ( $i > $o ) > $i,C: $i > ( $i > $o ) > $i,B: $i,A: $i] :
      ( ( ( ( p @ A @ B )
          & ! [E: $i] :
              ( ! [F: $i > $o] :
                  ( ( ind @ F )
                 => ( F @ ( f @ ( C @ E @ F ) @ ( D @ E @ F ) ) ) )
             => ! [F: $i > $o] :
                  ( ( ind @ F )
                 => ( F @ ( f @ ( C @ ( s @ E ) @ F ) @ ( D @ ( s @ E ) @ F ) ) ) ) ) )
        = ( ind
          @ ^ [E: $i] :
            ! [F: $i > $o] :
              ( ( ind @ F )
             => ( F @ ( f @ ( C @ E @ F ) @ ( D @ E @ F ) ) ) ) ) )
      | ( ( ^ [E: $i > $o] : B )
       != ( D @ e ) )
      | ( ( ^ [E: $i > $o] : A )
       != ( C @ e ) ) ),
    inference(pre_uni,[status(thm)],[92:[]]) ).

thf(109,plain,
    ! [D: $i > ( $i > $o ) > $i,C: $i > ( $i > $o ) > $i,B: $i,A: $i] :
      ( ( ( ( p @ A @ B )
          & ! [E: $i] :
              ( ! [F: $i > $o] :
                  ( ( ind @ F )
                 => ( F @ ( f @ ( C @ E @ F ) @ ( D @ E @ F ) ) ) )
             => ! [F: $i > $o] :
                  ( ( ind @ F )
                 => ( F @ ( f @ ( C @ ( s @ E ) @ F ) @ ( D @ ( s @ E ) @ F ) ) ) ) ) )
        = ( ind
          @ ^ [E: $i] :
            ! [F: $i > $o] :
              ( ( ind @ F )
             => ( F @ ( f @ ( C @ E @ F ) @ ( D @ E @ F ) ) ) ) ) )
      | ( ( ^ [E: $i > $o] : B )
       != ( D @ e ) )
      | ( ( ^ [E: $i > $o] : A )
       != ( C @ e ) ) ),
    inference(simp,[status(thm)],[93]) ).

thf(1901,plain,
    ! [B: $i,A: $i] :
      ( ( ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( f @ A @ B ) ) ) )
        = ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) )
      | ( ( p @ e @ ( s @ e ) )
       != ( p @ A @ B ) ) ),
    inference(paramod_ordered,[status(thm)],[1796,13]) ).

thf(1902,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( f @ e @ ( s @ e ) ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[1901:[bind(A,$thf( e )),bind(B,$thf( s @ e ))]]) ).

thf(1947,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( f @ e @ e ) ) ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[1902,22]) ).

thf(1288,plain,
    ( ~ ! [A: $i] :
          ( ( d @ ( s @ A ) )
         => ( d @ ( s @ ( s @ A ) ) ) )
    | ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(bool_ext,[status(thm)],[374]) ).

thf(1333,plain,
    ( ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) )
    | ( d @ ( s @ sk11 ) ) ),
    inference(cnf,[status(esa)],[1288]) ).

thf(12328,plain,
    ! [A: $i] :
      ( ( d @ ( s @ A ) )
      | ( ( d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ) ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[9063,28]) ).

thf(12329,plain,
    d @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[12328:[bind(A,$thf( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ) ))]]) ).

thf(13200,plain,
    ! [A: $i] :
      ( ( ind @ d )
      | ( d @ ( s @ A ) )
      | ( ( d @ ( sk3 @ d ) )
       != ( d @ A ) ) ),
    inference(paramod_ordered,[status(thm)],[4327,28]) ).

thf(13201,plain,
    ( ( ind @ d )
    | ( d @ ( s @ ( sk3 @ d ) ) ) ),
    inference(pattern_uni,[status(thm)],[13200:[bind(A,$thf( sk3 @ d ))]]) ).

thf(10986,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ sk296 )
     != ( d @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,10729]) ).

thf(10993,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( sk296 != e ) ),
    inference(simp,[status(thm)],[10986]) ).

thf(11633,plain,
    ( ( ! [A: $i] :
          ( ( d @ ( s @ ( s @ A ) ) )
         => ( d @ ( s @ ( s @ ( s @ A ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) ) ),
    inference(rewrite,[status(thm)],[8652,11565]) ).

thf(184,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( f @ A @ ( f @ ( s @ A ) @ B ) )
        = ( s @ ( s @ ( f @ e @ C ) ) ) )
      | ( ( f @ ( s @ A ) @ ( s @ B ) )
       != ( f @ e @ ( s @ C ) ) ) ),
    inference(paramod_ordered,[status(thm)],[25,22]) ).

thf(191,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( f @ A @ ( f @ ( s @ A ) @ B ) )
        = ( s @ ( s @ ( f @ e @ C ) ) ) )
      | ( ( s @ A )
       != e )
      | ( ( s @ B )
       != ( s @ C ) ) ),
    inference(simp,[status(thm)],[184]) ).

thf(182,plain,
    ! [D: $i,C: $i,B: $i,A: $i] :
      ( ( ( ! [E: $i > $o] :
              ( ( ind @ E )
             => ( E @ ( f @ A @ ( f @ ( s @ A ) @ B ) ) ) ) )
        = ( p @ C @ D ) )
      | ( ( f @ ( s @ A ) @ ( s @ B ) )
       != ( f @ C @ D ) ) ),
    inference(paramod_ordered,[status(thm)],[25,13]) ).

thf(183,plain,
    ! [B: $i,A: $i] :
      ( ( ! [C: $i > $o] :
            ( ( ind @ C )
           => ( C @ ( f @ A @ ( f @ ( s @ A ) @ B ) ) ) ) )
      = ( p @ ( s @ A ) @ ( s @ B ) ) ),
    inference(pattern_uni,[status(thm)],[182:[bind(A,$thf( E )),bind(B,$thf( F )),bind(C,$thf( s @ E )),bind(D,$thf( s @ F ))]]) ).

thf(204,plain,
    ! [B: $i,A: $i] :
      ( ( ! [C: $i > $o] :
            ( ( ind @ C )
           => ( C @ ( f @ A @ ( f @ ( s @ A ) @ B ) ) ) ) )
      = ( p @ ( s @ A ) @ ( s @ B ) ) ),
    inference(simp,[status(thm)],[183]) ).

thf(24337,plain,
    ! [B: $i,A: $i] :
      ( ( ( s @ B )
       != e )
      | ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( s @ e ) ) )
      | ( ( f @ A @ ( f @ ( s @ A ) @ B ) )
       != ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ e ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[202,270]) ).

thf(24338,plain,
    ( ( ( s @ ( s @ ( s @ e ) ) )
     != e )
    | ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( s @ e ) ) ) ),
    inference(pattern_uni,[status(thm)],[24337:[bind(A,$thf( s @ ( s @ ( s @ e ) ) )),bind(B,$thf( s @ ( s @ e ) ))]]) ).

thf(24582,plain,
    ( ( ( s @ ( s @ ( s @ e ) ) )
     != e )
    | ~ ( d @ ( f @ ( s @ ( s @ e ) ) @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ e ) ) ) ),
    inference(rewrite,[status(thm)],[24338,25]) ).

thf(24639,plain,
    ! [A: $i] :
      ( ( ( s @ ( s @ ( s @ e ) ) )
       != e )
      | ~ ( d @ ( f @ ( s @ ( s @ e ) ) @ ( s @ e ) ) )
      | ( ( f @ A @ e )
       != ( f @ ( s @ ( s @ ( s @ e ) ) ) @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[19,24582]) ).

thf(24640,plain,
    ( ( ( s @ ( s @ ( s @ e ) ) )
     != e )
    | ~ ( d @ ( f @ ( s @ ( s @ e ) ) @ ( s @ e ) ) ) ),
    inference(pattern_uni,[status(thm)],[24639:[bind(A,$thf( s @ ( s @ ( s @ e ) ) ))]]) ).

thf(25838,plain,
    ( ( ( s @ ( s @ ( s @ e ) ) )
     != e )
    | ~ ( d @ ( f @ ( s @ e ) @ ( f @ ( s @ ( s @ e ) ) @ e ) ) ) ),
    inference(rewrite,[status(thm)],[24640,25]) ).

thf(25889,plain,
    ! [A: $i] :
      ( ( ( s @ ( s @ ( s @ e ) ) )
       != e )
      | ~ ( d @ ( f @ ( s @ e ) @ ( s @ e ) ) )
      | ( ( f @ A @ e )
       != ( f @ ( s @ ( s @ e ) ) @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[19,25838]) ).

thf(25890,plain,
    ( ( ( s @ ( s @ ( s @ e ) ) )
     != e )
    | ~ ( d @ ( f @ ( s @ e ) @ ( s @ e ) ) ) ),
    inference(pattern_uni,[status(thm)],[25889:[bind(A,$thf( s @ ( s @ e ) ))]]) ).

thf(26640,plain,
    ( ( ( s @ ( s @ ( s @ e ) ) )
     != e )
    | ~ ( d @ ( f @ e @ ( f @ ( s @ e ) @ e ) ) ) ),
    inference(rewrite,[status(thm)],[25890,25]) ).

thf(26686,plain,
    ! [A: $i] :
      ( ( ( s @ ( s @ ( s @ e ) ) )
       != e )
      | ~ ( d @ ( f @ e @ ( s @ e ) ) )
      | ( ( f @ A @ e )
       != ( f @ ( s @ e ) @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[19,26640]) ).

thf(26687,plain,
    ( ( ( s @ ( s @ ( s @ e ) ) )
     != e )
    | ~ ( d @ ( f @ e @ ( s @ e ) ) ) ),
    inference(pattern_uni,[status(thm)],[26686:[bind(A,$thf( s @ e ))]]) ).

thf(26784,plain,
    ( ( ( s @ ( s @ ( s @ e ) ) )
     != e )
    | ~ ( d @ ( s @ ( s @ ( f @ e @ e ) ) ) ) ),
    inference(rewrite,[status(thm)],[26687,22]) ).

thf(26792,plain,
    ! [A: $i] :
      ( ~ ( d @ A )
      | ( ( s @ ( s @ ( s @ e ) ) )
       != e )
      | ( ( d @ ( s @ A ) )
       != ( d @ ( s @ ( s @ ( f @ e @ e ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[28,26784]) ).

thf(26793,plain,
    ( ~ ( d @ ( s @ ( f @ e @ e ) ) )
    | ( ( s @ ( s @ ( s @ e ) ) )
     != e ) ),
    inference(pattern_uni,[status(thm)],[26792:[bind(A,$thf( s @ ( f @ e @ e ) ))]]) ).

thf(27681,plain,
    ( ~ ( d @ ( s @ ( s @ e ) ) )
    | ( ( s @ ( s @ ( s @ e ) ) )
     != e ) ),
    inference(rewrite,[status(thm)],[26793,19]) ).

thf(27693,plain,
    ( ( ( s @ ( s @ ( s @ e ) ) )
     != e )
    | ( ( d @ ( s @ ( s @ e ) ) )
     != ( d @ ( s @ ( s @ e ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[371,27681]) ).

thf(27694,plain,
    ( s @ ( s @ ( s @ e ) ) )
 != e,
    inference(pattern_uni,[status(thm)],[27693:[]]) ).

thf(11905,plain,
    ! [A: $i > $o] :
      ( ~ ( ind @ A )
      | ( d
       != ( ^ [B: $i] : $false ) )
      | ( ( A @ e )
       != ( d @ ( s @ sk4 ) ) ) ),
    inference(paramod_ordered,[status(thm)],[108,10904]) ).

thf(11919,plain,
    ( ~ ( ind
        @ ^ [A: $i] : ( d @ ( s @ sk4 ) ) )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(pre_uni,[status(thm)],[11905:[bind(A,$thf( ^ [B: $i] : ( d @ ( s @ sk4 ) ) ))]]) ).

thf(10983,plain,
    ! [A: $i > $o] :
      ( ~ ( ind @ A )
      | ( d
       != ( ^ [B: $i] : $false ) )
      | ( ( A @ e )
       != ( d @ sk296 ) ) ),
    inference(paramod_ordered,[status(thm)],[108,10729]) ).

thf(10994,plain,
    ( ~ ( ind
        @ ^ [A: $i] : ( d @ sk296 ) )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(pre_uni,[status(thm)],[10983:[bind(A,$thf( ^ [B: $i] : ( d @ sk296 ) ))]]) ).

thf(12407,plain,
    ! [A: $i > $o] :
      ( ~ ( ind @ A )
      | ( d
       != ( ^ [B: $i] : $false ) )
      | ( ( A @ e )
       != ( ind
          @ ^ [B: $i] : ( d @ sk296 ) ) ) ),
    inference(paramod_ordered,[status(thm)],[108,10994]) ).

thf(12451,plain,
    ( ~ ( ind
        @ ^ [A: $i] :
            ( ind
            @ ^ [B: $i] : ( d @ sk296 ) ) )
    | ( d
     != ( ^ [A: $i] : $false ) ) ),
    inference(pre_uni,[status(thm)],[12407:[bind(A,$thf( ^ [B: $i] : ( ind @ ^ [C: $i] : ( d @ sk296 ) ) ))]]) ).

thf(20414,plain,
    ! [A: $i] :
      ( ~ ( d @ A )
      | ( ( ^ [B: $i] : ( ind @ d ) )
       != ( ^ [B: $i] : $false ) )
      | ( ( d @ ( s @ A ) )
       != ( d @ ( s @ sk404 ) ) ) ),
    inference(paramod_ordered,[status(thm)],[28,10719]) ).

thf(20415,plain,
    ( ~ ( d @ sk404 )
    | ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) ) ),
    inference(pattern_uni,[status(thm)],[20414:[bind(A,$thf( sk404 ))]]) ).

thf(20587,plain,
    ( ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ sk404 )
     != ( d @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,20415]) ).

thf(20609,plain,
    ( ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ( sk404 != e ) ),
    inference(simp,[status(thm)],[20587]) ).

thf(11934,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ ( s @ e ) )
     != ( d @ sk4 ) ) ),
    inference(paramod_ordered,[status(thm)],[352,11899]) ).

thf(11951,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( s @ e )
     != sk4 ) ),
    inference(simp,[status(thm)],[11934]) ).

thf(24891,plain,
    ! [B: $i,A: $i] :
      ( ( ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) )
        = ( ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ B ) ) ) ) ) ) ) ) )
      | ( ( p @ e @ ( s @ ( s @ ( s @ ( s @ A ) ) ) ) )
       != ( p @ e @ ( s @ ( s @ B ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[14282,1822]) ).

thf(24892,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ ( s @ ( s @ A ) ) ) ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[24891:[bind(A,$thf( D )),bind(B,$thf( s @ ( s @ D ) ))]]) ).

thf(25089,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ ( s @ ( s @ A ) ) ) ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(simp,[status(thm)],[24892]) ).

thf(28877,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ ( s @ A ) ) ) ) ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[25089,16609]) ).

thf(228,plain,
    ( ( ind @ d )
    | ( ( ind
        @ ^ [A: $i] : ( ind @ d ) )
     != ( ind
        @ ^ [A: $i] : $true ) ) ),
    inference(paramod_ordered,[status(thm)],[111,205]) ).

thf(230,plain,
    ( ( ind @ d )
    | ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $true ) ) ),
    inference(simp,[status(thm)],[228]) ).

thf(2987,plain,
    ! [A: $i] :
      ( ( p @ A @ e )
      = ( ind
        @ ^ [B: $i] :
          ! [C: $i > $o] :
            ( ( ind @ C )
           => ( C @ ( s @ e ) ) ) ) ),
    inference(rewrite,[status(thm)],[64,2986]) ).

thf(3027,plain,
    ! [A: $i] :
      ( ( p @ A @ e )
      = ( ind
        @ ^ [B: $i] :
            ( ind
            @ ^ [C: $i] :
              ! [D: $i > $o] :
                ( ( ind @ D )
               => ( D @ ( s @ e ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[2987,2986]) ).

thf(9599,plain,
    ( ( ( ind
        @ ^ [A: $i] :
            ( ind
            @ ^ [B: $i] :
                ( ind
                @ ^ [C: $i] :
                    ( ind
                    @ ^ [D: $i] :
                        ( ind
                        @ ^ [E: $i] :
                          ! [F: $i] :
                            ( ( d @ ( s @ F ) )
                           => ( d @ ( s @ ( s @ F ) ) ) ) ) ) ) ) )
      = ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) )
     != ( ind
        @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[6048,9538]) ).

thf(9600,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
              ( ind
              @ ^ [C: $i] :
                  ( ind
                  @ ^ [D: $i] :
                      ( ind
                      @ ^ [E: $i] :
                        ! [F: $i] :
                          ( ( d @ ( s @ F ) )
                         => ( d @ ( s @ ( s @ F ) ) ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(pattern_uni,[status(thm)],[9599:[]]) ).

thf(22106,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
              ( ind
              @ ^ [C: $i] :
                  ( ind
                  @ ^ [D: $i] :
                    ! [E: $i] :
                      ( ( d @ ( s @ E ) )
                     => ( d @ ( s @ ( s @ E ) ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(rewrite,[status(thm)],[9600,4665]) ).

thf(1912,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ e ) ) ) ) )
      & ! [A: $i] :
          ( ( p @ e @ ( s @ e ) )
         => ( p @ e @ ( s @ e ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( p @ e @ ( s @ e ) ) ) ),
    inference(pre_uni,[status(thm)],[1910:[bind(A,$thf( ^ [B: $i] : ( p @ e @ ( s @ e ) ) ))]]) ).

thf(1930,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ e ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( p @ e @ ( s @ e ) ) ) ),
    inference(simp,[status(thm)],[1912]) ).

thf(2252,plain,
    ( ( ind
      @ ^ [A: $i] :
        ! [B: $i > $o] :
          ( ( ind @ B )
         => ( B @ ( s @ ( s @ ( s @ e ) ) ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[1930,1796]) ).

thf(10846,plain,
    ( ~ ( d @ ( s @ sk4 ) )
    | ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ( ( ind @ d )
     != ( ind @ d ) ) ),
    inference(paramod_ordered,[status(thm)],[132,8400]) ).

thf(10847,plain,
    ( ~ ( d @ ( s @ sk4 ) )
    | ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) ) ),
    inference(pattern_uni,[status(thm)],[10846:[]]) ).

thf(24060,plain,
    ! [A: $i] :
      ( ~ ( d @ A )
      | ( ( ^ [B: $i] : ( ind @ d ) )
       != ( ^ [B: $i] : $false ) )
      | ( ( d @ ( s @ A ) )
       != ( d @ ( s @ sk4 ) ) ) ),
    inference(paramod_ordered,[status(thm)],[28,10847]) ).

thf(24061,plain,
    ( ~ ( d @ sk4 )
    | ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) ) ),
    inference(pattern_uni,[status(thm)],[24060:[bind(A,$thf( sk4 ))]]) ).

thf(24253,plain,
    ( ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ sk4 )
     != ( d @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,24061]) ).

thf(24271,plain,
    ( ( ( ^ [A: $i] : ( ind @ d ) )
     != ( ^ [A: $i] : $false ) )
    | ( sk4 != e ) ),
    inference(simp,[status(thm)],[24253]) ).

thf(27262,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ ( s @ sk5 ) )
     != ( d @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,27097]) ).

thf(27293,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( s @ sk5 )
     != e ) ),
    inference(simp,[status(thm)],[27262]) ).

thf(60,plain,
    ! [B: $i,A: $i] :
      ( ( p @ A @ B )
      | ~ ! [C: $i > $o] :
            ( ( ind @ C )
           => ( C @ ( f @ A @ B ) ) ) ),
    inference(bool_ext,[status(thm)],[13]) ).

thf(66,plain,
    ! [B: $i,A: $i] :
      ( ~ ( sk1 @ B @ A @ ( f @ A @ B ) )
      | ( p @ A @ B ) ),
    inference(cnf,[status(esa)],[60]) ).

thf(216,plain,
    ( ( ind
      @ ^ [A: $i] : ( ind @ d ) )
    | ( d @ sk5 ) ),
    inference(cnf,[status(esa)],[206]) ).

thf(434,plain,
    ( ( ind @ d )
    | ( d @ sk5 ) ),
    inference(rewrite,[status(thm)],[216,205]) ).

thf(441,plain,
    ( ( d @ sk5 )
    | ( ( ind @ d )
      = ( ind
        @ ^ [A: $i] : $true ) )
    | ( ( ind @ d )
     != ( ind @ d ) ) ),
    inference(paramod_ordered,[status(thm)],[434,205]) ).

thf(442,plain,
    ( ( d @ sk5 )
    | ( ( ind @ d )
      = ( ind
        @ ^ [A: $i] : $true ) ) ),
    inference(pattern_uni,[status(thm)],[441:[]]) ).

thf(3953,plain,
    ( ( d @ sk5 )
    | ( ind @ d ) ),
    inference(rewrite,[status(thm)],[442,111]) ).

thf(98,plain,
    ! [A: $i > $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ e ) ) )
        & ! [B: $i] :
            ( ( p @ ( A @ B ) @ B )
           => ( p @ ( A @ ( s @ B ) ) @ ( s @ B ) ) ) )
      = ( ind
        @ ^ [B: $i] : ( p @ ( A @ B ) @ B ) ) ),
    inference(pre_uni,[status(thm)],[91:[bind(A,$thf( C @ e )),bind(B,$thf( ^ [D: $i] : ( p @ ( C @ D ) @ D ) ))]]) ).

thf(103,plain,
    ! [A: $i > $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ e ) ) )
        & ! [B: $i] :
            ( ( p @ ( A @ B ) @ B )
           => ( p @ ( A @ ( s @ B ) ) @ ( s @ B ) ) ) )
      = ( ind
        @ ^ [B: $i] : ( p @ ( A @ B ) @ B ) ) ),
    inference(simp,[status(thm)],[98]) ).

thf(3348,plain,
    ! [A: $i > $i] :
      ( ( ( ind
          @ ^ [B: $i] :
            ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ e ) ) ) )
        & ! [B: $i] :
            ( ( p @ ( A @ B ) @ B )
           => ( p @ ( A @ ( s @ B ) ) @ ( s @ B ) ) ) )
      = ( ind
        @ ^ [B: $i] : ( p @ ( A @ B ) @ B ) ) ),
    inference(rewrite,[status(thm)],[103,2986]) ).

thf(10724,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ ( s @ sk296 ) )
     != ( d @ ( s @ e ) ) ) ),
    inference(paramod_ordered,[status(thm)],[352,8427]) ).

thf(10759,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( s @ sk296 )
     != ( s @ e ) ) ),
    inference(simp,[status(thm)],[10724]) ).

thf(18878,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
            ! [C: $i] :
              ( ( d @ ( s @ C ) )
             => ( d @ ( s @ ( s @ C ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(rewrite,[status(thm)],[6048,4665]) ).

thf(19353,plain,
    ( ( ind
      @ ^ [A: $i] :
        ! [B: $i] :
          ( ( d @ ( s @ B ) )
         => ( d @ ( s @ ( s @ B ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ A ) ) ) ),
    inference(rewrite,[status(thm)],[18878,4665]) ).

thf(12042,plain,
    ( ( ( ind
        @ ^ [A: $i] :
          ! [B: $i] :
            ( ( d @ ( s @ ( s @ B ) ) )
           => ( d @ ( s @ ( s @ ( s @ B ) ) ) ) ) )
      = ( ind
        @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) )
     != ( ind
        @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[11633,11565]) ).

thf(12043,plain,
    ( ( ind
      @ ^ [A: $i] :
        ! [B: $i] :
          ( ( d @ ( s @ ( s @ B ) ) )
         => ( d @ ( s @ ( s @ ( s @ B ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[12042:[]]) ).

thf(279,plain,
    ! [A: $i] :
      ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( s @ e ) ) ) )
      | ( ( f @ A @ e )
       != ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ e ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[19,270]) ).

thf(285,plain,
    ! [A: $i] :
      ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( s @ e ) ) ) )
      | ( A
       != ( s @ ( s @ ( s @ ( s @ e ) ) ) ) )
      | ( ( s @ ( s @ e ) )
       != e ) ),
    inference(simp,[status(thm)],[279]) ).

thf(292,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( s @ e ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(simp,[status(thm)],[285]) ).

thf(450,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ e ) ) @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ e ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(rewrite,[status(thm)],[292,25]) ).

thf(458,plain,
    ! [A: $i] :
      ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ e ) ) @ ( s @ e ) ) ) )
      | ( ( s @ ( s @ e ) )
       != e )
      | ( ( f @ A @ e )
       != ( f @ ( s @ ( s @ ( s @ e ) ) ) @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[19,450]) ).

thf(459,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ e ) ) @ ( s @ e ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(pattern_uni,[status(thm)],[458:[bind(A,$thf( s @ ( s @ ( s @ e ) ) ))]]) ).

thf(484,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ e ) @ ( f @ ( s @ ( s @ e ) ) @ e ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(rewrite,[status(thm)],[459,25]) ).

thf(493,plain,
    ! [A: $i] :
      ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ e ) @ ( s @ e ) ) ) )
      | ( ( s @ ( s @ e ) )
       != e )
      | ( ( f @ A @ e )
       != ( f @ ( s @ ( s @ e ) ) @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[19,484]) ).

thf(494,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ e ) @ ( s @ e ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(pattern_uni,[status(thm)],[493:[bind(A,$thf( s @ ( s @ e ) ))]]) ).

thf(710,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ e @ ( f @ ( s @ e ) @ e ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(rewrite,[status(thm)],[494,25]) ).

thf(717,plain,
    ! [A: $i] :
      ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ e @ ( s @ e ) ) ) )
      | ( ( s @ ( s @ e ) )
       != e )
      | ( ( f @ A @ e )
       != ( f @ ( s @ e ) @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[19,710]) ).

thf(718,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ e @ ( s @ e ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(pattern_uni,[status(thm)],[717:[bind(A,$thf( s @ e ))]]) ).

thf(758,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( s @ ( s @ ( f @ e @ e ) ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(rewrite,[status(thm)],[718,22]) ).

thf(763,plain,
    ! [A: $i] :
      ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( s @ ( s @ ( s @ e ) ) ) ) )
      | ( ( s @ ( s @ e ) )
       != e )
      | ( ( f @ A @ e )
       != ( f @ e @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[19,758]) ).

thf(764,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( s @ ( s @ ( s @ e ) ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(pattern_uni,[status(thm)],[763:[bind(A,$thf( e ))]]) ).

thf(1172,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ e ) ) @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( s @ ( s @ e ) ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(rewrite,[status(thm)],[764,25]) ).

thf(1176,plain,
    ! [A: $i] :
      ( ~ ( d @ ( f @ ( s @ ( s @ e ) ) @ ( s @ e ) ) )
      | ( ( s @ ( s @ e ) )
       != e )
      | ( ( f @ A @ e )
       != ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( s @ ( s @ e ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[19,1172]) ).

thf(1220,plain,
    ! [A: $i] :
      ( ~ ( d @ ( f @ ( s @ ( s @ e ) ) @ ( s @ e ) ) )
      | ( ( s @ ( s @ e ) )
       != e )
      | ( A
       != ( s @ ( s @ ( s @ e ) ) ) )
      | ( ( s @ ( s @ e ) )
       != e ) ),
    inference(simp,[status(thm)],[1176]) ).

thf(1224,plain,
    ( ~ ( d @ ( f @ ( s @ ( s @ e ) ) @ ( s @ e ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(simp,[status(thm)],[1220]) ).

thf(1227,plain,
    ( ~ ( d @ ( f @ ( s @ e ) @ ( f @ ( s @ ( s @ e ) ) @ e ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(rewrite,[status(thm)],[1224,25]) ).

thf(1230,plain,
    ! [A: $i] :
      ( ~ ( d @ ( f @ ( s @ e ) @ ( s @ e ) ) )
      | ( ( s @ ( s @ e ) )
       != e )
      | ( ( f @ A @ e )
       != ( f @ ( s @ ( s @ e ) ) @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[19,1227]) ).

thf(1231,plain,
    ( ~ ( d @ ( f @ ( s @ e ) @ ( s @ e ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(pattern_uni,[status(thm)],[1230:[bind(A,$thf( s @ ( s @ e ) ))]]) ).

thf(1403,plain,
    ( ~ ( d @ ( f @ e @ ( f @ ( s @ e ) @ e ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(rewrite,[status(thm)],[1231,25]) ).

thf(1409,plain,
    ! [A: $i] :
      ( ~ ( d @ ( f @ e @ ( s @ e ) ) )
      | ( ( s @ ( s @ e ) )
       != e )
      | ( ( f @ A @ e )
       != ( f @ ( s @ e ) @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[19,1403]) ).

thf(1410,plain,
    ( ~ ( d @ ( f @ e @ ( s @ e ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(pattern_uni,[status(thm)],[1409:[bind(A,$thf( s @ e ))]]) ).

thf(1448,plain,
    ( ~ ( d @ ( s @ ( s @ ( f @ e @ e ) ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(rewrite,[status(thm)],[1410,22]) ).

thf(1450,plain,
    ! [A: $i] :
      ( ~ ( d @ A )
      | ( ( s @ ( s @ e ) )
       != e )
      | ( ( d @ ( s @ A ) )
       != ( d @ ( s @ ( s @ ( f @ e @ e ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[28,1448]) ).

thf(1451,plain,
    ( ~ ( d @ ( s @ ( f @ e @ e ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(pattern_uni,[status(thm)],[1450:[bind(A,$thf( s @ ( f @ e @ e ) ))]]) ).

thf(1505,plain,
    ( ~ ( d @ ( s @ ( s @ e ) ) )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(rewrite,[status(thm)],[1451,19]) ).

thf(1515,plain,
    ( ( ( s @ ( s @ e ) )
     != e )
    | ( ( d @ ( s @ ( s @ e ) ) )
     != ( d @ ( s @ ( s @ e ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[371,1505]) ).

thf(1516,plain,
    ( s @ ( s @ e ) )
 != e,
    inference(pattern_uni,[status(thm)],[1515:[]]) ).

thf(24817,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) )
        = ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( f @ B @ C ) ) ) ) )
      | ( ( p @ e @ ( s @ ( s @ ( s @ ( s @ A ) ) ) ) )
       != ( p @ B @ C ) ) ),
    inference(paramod_ordered,[status(thm)],[14282,13]) ).

thf(24818,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( f @ e @ ( s @ ( s @ ( s @ ( s @ A ) ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[24817:[bind(A,$thf( G )),bind(B,$thf( e )),bind(C,$thf( s @ ( s @ ( s @ ( s @ G ) ) ) ))]]) ).

thf(25208,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( f @ e @ ( s @ ( s @ ( s @ ( s @ A ) ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(simp,[status(thm)],[24818]) ).

thf(29574,plain,
    ! [A: $i] :
      ( ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( f @ e @ ( s @ ( s @ ( s @ A ) ) ) ) ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[25208,22]) ).

thf(44,plain,
    ! [B: $i,A: $i] :
      ( ( ( s @ ( s @ ( f @ e @ A ) ) )
        = ( s @ e ) )
      | ( ( f @ e @ ( s @ A ) )
       != ( f @ B @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[22,19]) ).

thf(48,plain,
    ! [B: $i,A: $i] :
      ( ( ( s @ ( s @ ( f @ e @ A ) ) )
        = ( s @ e ) )
      | ( e != B )
      | ( ( s @ A )
       != e ) ),
    inference(simp,[status(thm)],[44]) ).

thf(50,plain,
    ! [A: $i] :
      ( ( ( s @ ( s @ ( f @ e @ A ) ) )
        = ( s @ e ) )
      | ( ( s @ A )
       != e ) ),
    inference(simp,[status(thm)],[48]) ).

thf(2338,plain,
    ( ( ind
      @ ^ [A: $i] : ( ind @ d ) )
    | ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) ),
    inference(bool_ext,[status(thm)],[2336]) ).

thf(2464,plain,
    ( ( d @ sk30 )
    | ( ind
      @ ^ [A: $i] : ( ind @ d ) ) ),
    inference(cnf,[status(esa)],[2338]) ).

thf(2920,plain,
    ( ( d @ sk30 )
    | ( ind @ d ) ),
    inference(rewrite,[status(thm)],[2464,1662]) ).

thf(67,plain,
    ! [B: $i,A: $i] :
      ( ( ind @ ( sk1 @ B @ A ) )
      | ( p @ A @ B ) ),
    inference(cnf,[status(esa)],[60]) ).

thf(14318,plain,
    ! [A: $i] :
      ( ( ( ! [B: $i > $o] :
              ( ( ind @ B )
             => ( B @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ A ) ) ) ) ) ) ) )
        = ( ! [B: $i > $o] :
              ( ( ind @ B )
             => ( B @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) )
      | ( ( p @ e @ ( s @ ( s @ ( s @ e ) ) ) )
       != ( p @ e @ ( s @ ( s @ A ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[14105,1822]) ).

thf(14319,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ ( s @ e ) ) ) ) ) ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[14318:[bind(A,$thf( s @ e ))]]) ).

thf(14631,plain,
    ( ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( f @ e @ e ) ) ) ) ) ) ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ) ) ) ) ),
    inference(rewrite,[status(thm)],[14319,22]) ).

thf(11947,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ sk4 )
     != ( d @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,11899]) ).

thf(11957,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( sk4 != e ) ),
    inference(simp,[status(thm)],[11947]) ).

thf(13469,plain,
    ( ( ( ind
        @ ^ [A: $i] :
            ( ind
            @ ^ [B: $i] :
              ! [C: $i] :
                ( ( d @ ( s @ ( s @ C ) ) )
               => ( d @ ( s @ ( s @ ( s @ C ) ) ) ) ) ) )
      = ( ind
        @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) )
     != ( ind
        @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[12043,11565]) ).

thf(13470,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
            ! [C: $i] :
              ( ( d @ ( s @ ( s @ C ) ) )
             => ( d @ ( s @ ( s @ ( s @ C ) ) ) ) ) ) )
    = ( ind
      @ ^ [A: $i] : ( d @ ( s @ ( s @ A ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[13469:[]]) ).

thf(10980,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ ( s @ ( s @ e ) ) )
     != ( d @ sk296 ) ) ),
    inference(paramod_ordered,[status(thm)],[371,10729]) ).

thf(10996,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( s @ ( s @ e ) )
     != sk296 ) ),
    inference(simp,[status(thm)],[10980]) ).

thf(27317,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ sk5 )
     != ( d @ e ) ) ),
    inference(paramod_ordered,[status(thm)],[26,27247]) ).

thf(27339,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( sk5 != e ) ),
    inference(simp,[status(thm)],[27317]) ).

thf(27299,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( d @ ( s @ e ) )
     != ( d @ sk5 ) ) ),
    inference(paramod_ordered,[status(thm)],[352,27247]) ).

thf(27330,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( s @ e )
     != sk5 ) ),
    inference(simp,[status(thm)],[27299]) ).

thf(30,plain,
    ( d @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) )
 != ( d @ e ),
    inference(paramod_ordered,[status(thm)],[26,10]) ).

thf(32,plain,
    ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) )
 != e,
    inference(simp,[status(thm)],[30]) ).

thf(34,plain,
    ! [A: $i] :
      ( ( ( s @ e )
       != e )
      | ( ( f @ A @ e )
       != ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) ) ) ),
    inference(paramod_ordered,[status(thm)],[19,32]) ).

thf(35,plain,
    ! [A: $i] :
      ( ( ( s @ e )
       != e )
      | ( A
       != ( s @ ( s @ ( s @ ( s @ e ) ) ) ) )
      | ( ( s @ ( s @ ( s @ ( s @ e ) ) ) )
       != e ) ),
    inference(simp,[status(thm)],[34]) ).

thf(36,plain,
    ( ( ( s @ e )
     != e )
    | ( ( s @ ( s @ ( s @ ( s @ e ) ) ) )
     != e ) ),
    inference(simp,[status(thm)],[35]) ).

thf(39,plain,
    ( ( ( s @ e )
     != e )
    | ( ( s @ ( s @ ( s @ ( s @ e ) ) ) )
     != ( s @ e ) )
    | ( e != e ) ),
    inference(eqfactor_ordered,[status(thm)],[36]) ).

thf(41,plain,
    ( ( ( s @ e )
     != e )
    | ( ( s @ ( s @ ( s @ e ) ) )
     != e ) ),
    inference(simp,[status(thm)],[39]) ).

thf(52,plain,
    ( ( ( s @ e )
     != e )
    | ( ( s @ ( s @ ( s @ e ) ) )
     != ( s @ e ) )
    | ( e != e ) ),
    inference(eqfactor_ordered,[status(thm)],[41]) ).

thf(54,plain,
    ( ( ( s @ e )
     != e )
    | ( ( s @ ( s @ e ) )
     != e ) ),
    inference(simp,[status(thm)],[52]) ).

thf(55,plain,
    ( ( ( s @ e )
     != e )
    | ( ( s @ ( s @ e ) )
     != ( s @ e ) )
    | ( e != e ) ),
    inference(eqfactor_ordered,[status(thm)],[54]) ).

thf(57,plain,
    ( ( ( s @ e )
     != e )
    | ( ( s @ e )
     != e ) ),
    inference(simp,[status(thm)],[55]) ).

thf(58,plain,
    ( s @ e )
 != e,
    inference(simp,[status(thm)],[57]) ).

thf(3040,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( ind
          @ ^ [D: $i] :
              ( ind
              @ ^ [E: $i] :
                ! [F: $i > $o] :
                  ( ( ind @ F )
                 => ( F @ ( s @ e ) ) ) ) )
        = ( ! [D: $i > $o] :
              ( ( ind @ D )
             => ( D @ ( f @ B @ C ) ) ) ) )
      | ( ( p @ A @ e )
       != ( p @ B @ C ) ) ),
    inference(paramod_ordered,[status(thm)],[3027,13]) ).

thf(3041,plain,
    ! [A: $i] :
      ( ( ind
        @ ^ [B: $i] :
            ( ind
            @ ^ [C: $i] :
              ! [D: $i > $o] :
                ( ( ind @ D )
               => ( D @ ( s @ e ) ) ) ) )
      = ( ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( f @ A @ e ) ) ) ) ),
    inference(pattern_uni,[status(thm)],[3040:[bind(A,$thf( A )),bind(B,$thf( A )),bind(C,$thf( e ))]]) ).

thf(5590,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
              ( ind
              @ ^ [C: $i] :
                ! [D: $i > $o] :
                  ( ( ind @ D )
                 => ( D @ ( s @ e ) ) ) ) ) )
    = ( ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ e ) ) ) ) ),
    inference(rewrite,[status(thm)],[3041,19,2986]) ).

thf(1578,plain,
    ( ( ind @ d )
    | ~ ! [A: $i] :
          ( ( d @ A )
         => ( d @ ( s @ A ) ) ) ),
    inference(bool_ext,[status(thm)],[1375]) ).

thf(1625,plain,
    ( ( d @ sk14 )
    | ( ind @ d ) ),
    inference(cnf,[status(esa)],[1578]) ).

thf(185,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( s @ ( s @ ( f @ e @ A ) ) )
        = ( f @ B @ ( f @ ( s @ B ) @ C ) ) )
      | ( ( f @ e @ ( s @ A ) )
       != ( f @ ( s @ B ) @ ( s @ C ) ) ) ),
    inference(paramod_ordered,[status(thm)],[22,25]) ).

thf(190,plain,
    ! [C: $i,B: $i,A: $i] :
      ( ( ( s @ ( s @ ( f @ e @ A ) ) )
        = ( f @ B @ ( f @ ( s @ B ) @ C ) ) )
      | ( ( s @ B )
       != e )
      | ( ( s @ A )
       != ( s @ C ) ) ),
    inference(simp,[status(thm)],[185]) ).

thf(2988,plain,
    ( ~ ! [A: $i > $o] :
          ( ( ind @ A )
         => ( A @ ( s @ e ) ) )
    | ( ind
      @ ^ [A: $i] :
        ! [B: $i > $o] :
          ( ( ind @ B )
         => ( B @ ( s @ e ) ) ) ) ),
    inference(bool_ext,[status(thm)],[2986]) ).

thf(3025,plain,
    ( ( ind
      @ ^ [A: $i] :
        ! [B: $i > $o] :
          ( ( ind @ B )
         => ( B @ ( s @ e ) ) ) )
    | ( ind @ sk64 ) ),
    inference(cnf,[status(esa)],[2988]) ).

thf(21549,plain,
    ( ( ind
      @ ^ [A: $i] :
          ( ind
          @ ^ [B: $i] :
            ! [C: $i > $o] :
              ( ( ind @ C )
             => ( C @ ( s @ e ) ) ) ) )
    | ( ind @ sk64 ) ),
    inference(rewrite,[status(thm)],[3025,2986]) ).

thf(107,plain,
    ! [B: $i,A: $i > $o] :
      ( ~ ( ind @ A )
      | ~ ( A @ B )
      | ( A @ ( s @ B ) ) ),
    inference(cnf,[status(esa)],[85]) ).

thf(180,plain,
    ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ ( s @ e ) ) ) ) )
 != e,
    inference(rewrite,[status(thm)],[32,25]) ).

thf(294,plain,
    ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ ( s @ e ) ) ) @ ( f @ ( s @ ( s @ ( s @ ( s @ e ) ) ) ) @ ( s @ ( s @ e ) ) ) ) )
 != e,
    inference(rewrite,[status(thm)],[180,25]) ).

thf(70,plain,
    ! [A: $i] :
      ( ( p @ A @ e )
      | ~ ! [B: $i > $o] :
            ( ( ind @ B )
           => ( B @ ( s @ e ) ) ) ),
    inference(bool_ext,[status(thm)],[64]) ).

thf(77,plain,
    ! [A: $i] :
      ( ( ind @ ( sk2 @ A ) )
      | ( p @ A @ e ) ),
    inference(cnf,[status(esa)],[70]) ).

thf(82,plain,
    ! [A: $i] :
      ( ( ind @ ( sk2 @ A ) )
      | ! [B: $i > $o] :
          ( ( ind @ B )
         => ( B @ ( s @ e ) ) ) ),
    inference(rewrite,[status(thm)],[77,64]) ).

thf(83,plain,
    ! [B: $i > $o,A: $i] :
      ( ~ ( ind @ B )
      | ( B @ ( s @ e ) )
      | ( ind @ ( sk2 @ A ) ) ),
    inference(cnf,[status(esa)],[82]) ).

thf(12428,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( ind
        @ ^ [A: $i] : ( d @ sk296 ) )
     != ( ind
        @ ^ [A: $i] : $true ) ) ),
    inference(paramod_ordered,[status(thm)],[111,10994]) ).

thf(12471,plain,
    ( ( d
     != ( ^ [A: $i] : $false ) )
    | ( ( ^ [A: $i] : ( d @ sk296 ) )
     != ( ^ [A: $i] : $true ) ) ),
    inference(simp,[status(thm)],[12428]) ).

thf(35637,plain,
    $false,
    inference(e,[status(thm)],[19324,26920,11922,352,101,2336,202,10694,28164,3848,10,4543,404,1127,11930,4665,25,14,10997,28794,16609,11010,110,11966,10719,20,13942,20647,14949,19140,13365,10729,10746,5861,106,8141,1796,132,270,1915,366,28,1487,16751,11565,2986,65,27097,3894,4327,1983,1375,9063,869,3941,10760,109,19867,11965,10904,13,8425,371,24921,1947,1333,105,12329,13201,10993,17,8217,423,11633,191,22,204,27,27694,11919,12451,9538,20609,10176,20415,11951,28877,230,387,3027,22106,2252,24271,108,27293,66,10847,3953,3348,658,1662,10759,19353,1340,12043,14282,1516,29574,50,2920,16,67,10994,14631,11,11957,2853,26,13470,1822,10996,27339,27330,23,58,11899,3585,5590,684,14105,1625,190,19,27334,21549,107,294,8400,11236,10255,24061,68,3076,8427,111,83,12471,27247]) ).

%------------------------------------------------------------------------------
%----ORIGINAL SYSTEM OUTPUT
% 0.03/0.13  % Problem  : theBenchmark.p : TPTP v0.0.0. Released v0.0.0.
% 0.11/0.15  % Command  : run_Leo-III %s %d
% 0.12/0.35  % Computer : n029.cluster.edu
% 0.12/0.35  % Model    : x86_64 x86_64
% 0.12/0.35  % CPU      : Intel(R) Xeon(R) CPU E5-2620 v4 @ 2.10GHz
% 0.12/0.35  % Memory   : 8042.1875MB
% 0.12/0.35  % OS       : Linux 3.10.0-693.el7.x86_64
% 0.12/0.35  % CPULimit : 300
% 0.12/0.35  % WCLimit  : 300
% 0.12/0.35  % DateTime : Mon Aug  1 10:36:34 EDT 2022
% 0.12/0.35  % CPUTime  : 
% 0.89/0.93  % [INFO] 	 Parsing problem /export/starexec/sandbox2/benchmark/theBenchmark.p ... 
% 1.21/1.10  % [INFO] 	 Parsing done (175ms). 
% 1.21/1.11  % [INFO] 	 Running in sequential loop mode. 
% 1.62/1.44  % [INFO] 	 eprover registered as external prover. 
% 1.62/1.44  % [INFO] 	 cvc4 registered as external prover. 
% 1.79/1.45  % [INFO] 	 Scanning for conjecture ... 
% 1.88/1.51  % [INFO] 	 No direction of definition ind_def detected. Treating as axiom ... 
% 1.88/1.52  % [INFO] 	 No direction of definition p_def detected. Treating as axiom ... 
% 1.96/1.54  % [INFO] 	 Found a conjecture and 7 axioms. Running axiom selection ... 
% 1.97/1.57  % [INFO] 	 Axiom selection finished. Selected 7 axioms (removed 0 axioms). 
% 1.97/1.58  % [INFO] 	 No direction of definition p_def detected. Treating as axiom ... 
% 1.97/1.58  % [INFO] 	 No direction of definition ind_def detected. Treating as axiom ... 
% 1.97/1.59  % [INFO] 	 Problem is higher-order (TPTP THF). 
% 1.97/1.59  % [INFO] 	 Type checking passed. 
% 1.97/1.60  % [CONFIG] 	 Using configuration: timeout(300) with strategy<name(default),share(1.0),primSubst(3),sos(false),unifierCount(4),uniDepth(8),boolExt(true),choice(true),renaming(true),funcspec(false), domConstr(0),specialInstances(39),restrictUniAttempts(true),termOrdering(CPO)>.  Searching for refutation ... 
% 215.77/43.10  % External prover 'e' found a proof!
% 215.77/43.10  % [INFO] 	 Killing All external provers ... 
% 215.77/43.10  % Time passed: 42631ms (effective reasoning time: 41983ms)
% 215.77/43.10  % Solved by strategy<name(default),share(1.0),primSubst(3),sos(false),unifierCount(4),uniDepth(8),boolExt(true),choice(true),renaming(true),funcspec(false), domConstr(0),specialInstances(39),restrictUniAttempts(true),termOrdering(CPO)>
% 215.77/43.10  % Axioms used in derivation (7): a5, ind_def, a3, a1, a2, p_def, a4
% 215.77/43.10  % No. of inferences in proof: 441
% 215.77/43.10  % SZS status Theorem for /export/starexec/sandbox2/benchmark/theBenchmark.p : 42631 ms resp. 41983 ms w/o parsing
% 216.28/43.24  % SZS output start Refutation for /export/starexec/sandbox2/benchmark/theBenchmark.p
% See solution above
% 216.28/43.25  % [INFO] 	 Killing All external provers ... 
%------------------------------------------------------------------------------
