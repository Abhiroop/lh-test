```
[2 of 2] Compiling Main             ( app/Main.hs, dist-newstyle/build/x86_64-linux/ghc-9.12.2/lh-test-0.1.0.0/x/lh-test/build/lh-test/lh-test-tmp/Main.o )
app/Compiler.hs:12:13: error:
    Illegal type specification for `Compiler.Val`
    Compiler.Val :: lqdc##$select##Compiler.Val##1##Compiler.Val:GHC.Types.Int -> {VV : Compiler.Expr | is$Compiler.Val VV
                                                                                                        && not (is$Compiler.Add VV)
                                                                                                        && Compiler.Val##lqdc##$select##Compiler.Val##1 VV == lqdc##$select##Compiler.Val##1##Compiler.Val}
    Sort Error in Refinement: {VV : Compiler.Expr | is$Compiler.Val VV
                                                    && not (is$Compiler.Add VV)
                                                    && Compiler.Val##lqdc##$select##Compiler.Val##1 VV == lqdc##$select##Compiler.Val##1##Compiler.Val}
    Unbound symbol is$Compiler.Val --- perhaps you meant: Compiler.Val ?
    Just assume
   |
12 | data Expr = Val Int | Add Expr Expr 
   |             ^^^^^^^

app/Compiler.hs:12:23: error:
    Illegal type specification for `Compiler.Add`
    Compiler.Add :: lqdc##$select##Compiler.Add##1##Compiler.Add:Compiler.Expr -> lqdc##$select##Compiler.Add##2##Compiler.Add:Compiler.Expr -> {VV : Compiler.Expr | is$Compiler.Add VV
                                                                                                                                                                      && not (is$Compiler.Val VV)
                                                                                                                                                                      && Compiler.Add##lqdc##$select##Compiler.Add##1 VV == lqdc##$select##Compiler.Add##1##Compiler.Add
                                                                                                                                                                      && Compiler.Add##lqdc##$select##Compiler.Add##2 VV == lqdc##$select##Compiler.Add##2##Compiler.Add}
    Sort Error in Refinement: {VV : Compiler.Expr | is$Compiler.Add VV
                                                    && not (is$Compiler.Val VV)
                                                    && Compiler.Add##lqdc##$select##Compiler.Add##1 VV == lqdc##$select##Compiler.Add##1##Compiler.Add
                                                    && Compiler.Add##lqdc##$select##Compiler.Add##2 VV == lqdc##$select##Compiler.Add##2##Compiler.Add}
    Unbound symbol is$Compiler.Add --- perhaps you meant: Compiler.Add ?
    Just assume
   |
12 | data Expr = Val Int | Add Expr Expr 
   |                       ^^^^^^^^^^^^^

app/Compiler.hs:14:13: error:
    Illegal type specification for `Compiler.eval`
    Compiler.eval :: lq1:Compiler.Expr -> {VV : GHC.Types.Int | VV == Compiler.eval lq1
                                                                && VV == (if is$Compiler.Val lq1 then Compiler.Val##lqdc##$select##Compiler.Val##1 lq1 else Compiler.eval (Compiler.Add##lqdc##$select##Compiler.Add##1 lq1) + Compiler.eval (Compiler.Add##lqdc##$select##Compiler.Add##2 lq1))}
    Sort Error in Refinement: {VV : int | VV == Compiler.eval lq1
                                          && VV == (if is$Compiler.Val lq1 then Compiler.Val##lqdc##$select##Compiler.Val##1 lq1 else Compiler.eval (Compiler.Add##lqdc##$select##Compiler.Add##1 lq1) + Compiler.eval (Compiler.Add##lqdc##$select##Compiler.Add##2 lq1))}
    Unbound symbol is$Compiler.Val --- perhaps you meant: Compiler.Val ?
    Just assume
   |
14 | {-@ reflect eval @-}
   |             ^^^^^

Error: [Cabal-7125]
Failed to build exe:lh-test from lh-test-0.1.0.0.

```
