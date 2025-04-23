{-@ LIQUID "--reflection" @-}
{-@ LIQUID "--ple-local" @-}
{-@ LIQUID "--exact-data-cons" @-}
{-@ infix    :   @-}
{-@ infixl 1 >>= @-}
{-@ infixr 5 ++  @-}
module Compiler where

import Prelude hiding ((++), Monad(..))
import Language.Haskell.Liquid.Equational

data Expr = Val Int | Add Expr Expr 

{-@ reflect eval @-}
eval :: Expr -> Int
eval (Val n)   = n
eval (Add x y) = eval x + eval y

