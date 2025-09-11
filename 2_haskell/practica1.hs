--Funcion 1
absoluto :: Integer -> Integer
absoluto x = abs x
--Funcion 2
menor_entero :: Double -> Integer
menor_entero x= ceiling x
--Funcion 3
sucesor :: Integer -> Integer
sucesor x = succ x
--Funcion 4
minimo :: Integer -> Integer -> Integer
minimo x y= min x y  
--Funcion 5
maximo :: Integer -> Integer -> Integer
maximo x y= max x y 
--Funcion 6
division_entera :: Integer -> Integer -> Integer
division_entera x y = div x y 
--Funcion 7
modulo :: Integer -> Integer -> Integer
modulo x y = mod x y 
--Funcion 8
verificar_par :: Integer -> Bool
verificar_par x = even x
--Funcion 9
piso :: Double -> Integer
piso x= floor x
--Funcion 10
mcd :: Integer -> Integer -> Integer
mcd x y = gcd x y
--Funcion 11
negacion_boleana :: Bool -> Bool 
negacion_boleana x = not x
--Funcion 12
verificar_impar :: Integer -> Bool
verificar_impar x = odd x
--Funcion 13
positivio_negativo :: Integer -> Integer
positivio_negativo x = signum x
--Funcion 14
tupla :: Integer -> Integer -> Integer
tupla x y = snd (x,y)

menu :: IO()
menu = do
    putStrLn "=== MENU ==="
    putStrLn "¿Qué deseas hacer?"
    putStrLn "1) Valor absoluto (abs)"
    putStrLn "2) Techo (ceiling)"
    putStrLn "3) Sucesor (succ)"
    putStrLn "4) Mínimo (min)"
    putStrLn "5) Máximo (max)"
    putStrLn "6) División entera (div)"
    putStrLn "7) Módulo (mod)"
    putStrLn "8) Verificar par (even)"
    putStrLn "9) Piso (floor)"
    putStrLn "10) MCD (gcd)"
    putStrLn "11) Negación booleana (not)"
    putStrLn "12) Verificar impar (odd)"
    putStrLn "13) Signum (signum)"
    putStrLn "14) Segundo de una tupla (snd)"
    putStrLn "15) Salir ❌"
    opcion <- getLine
    
    case opcion of 
        "1" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: " ++ show(absoluto x))
            menu
        "2" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("El resultado es: " ++ show( menor_entero x))
            menu
        "3" -> do
            putStrLn("Introduce el número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: " ++ show( sucesor x))
            menu
        "4" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            putStrLn("Introduce el segundo numero ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("El resultado es: " ++ show(  minimo x y))
            menu
        "5" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            putStrLn("Introduce el segundo numero ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("El resultado es: " ++ show(  maximo x y))
            menu
        "6" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            putStrLn("Introduce el segundo numero ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("El resultado es: " ++ show(  division_entera x y))
            menu
        "7" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            putStrLn("Introduce el segundo numero ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("El resultado es: " ++ show(  modulo x y))
            menu
        "8" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: " ++ show(  verificar_par x ))
            menu
        "9" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            let x = read n1 :: Double
            putStrLn("El resultado es: " ++ show(  piso x ))
            menu
        "10" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            putStrLn("Introduce el segundo numero ")
            n2 <- getLine
            let x = read n1 :: Integer
            let y = read n2 :: Integer
            putStrLn("El resultado es: " ++ show(  gcd x y))
            menu
        "11" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            let x = read n1 :: Bool
            putStrLn("El resultado es: " ++ show(  negacion_boleana x ))
            menu
        "12" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            let x = read n1 :: Bool
            putStrLn("El resultado es: " ++ show(  verificar_impar x ))
            menu
        "13" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            let x = read n1 :: Integer
            putStrLn("El resultado es: " ++ show(  positivio_negativo x ))
            menu
        "14" -> do
            putStrLn("Introduce el primer número: ")
            n1 <- getLine
            putStrLn("Introduce el segundo número: ")
            n2 <- getLine
            let x = read n1 :: Integer
            let x = read n2 :: Integer
            putStrLn("El resultado es: " ++ show(tupla x y))
            menu
        "15" -> do
            putStrLn("Adios")
        _ -> do
            putStrLn("Opción no valida")
            menu

--equivalente a public static void main
main :: IO()
main = menu