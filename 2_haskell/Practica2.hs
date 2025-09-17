-- 1. Promedio de 4 números
promedio4 :: Float -> Float -> Float -> Float -> Float
promedio4 a b c d = (a + b + c + d) / 4

-- 2. Sumar monedas
sumaMonedas :: Int -> Int -> Int -> Int -> Float
sumaMonedas a b c d = fromIntegral a * 1.0 + fromIntegral b * 5.0 + fromIntegral c * 10.0 + fromIntegral d * 50.0

-- 3. Volumen de una esfera
volumenEsfera :: Float -> Float
volumenEsfera r = (4/3) * pi * r^3

-- 4. Verificar si a, b, c son iguales
sonIguales :: Int -> Int -> Int -> Bool
sonIguales a b c = if (a == b) && (b == c) then True else False

-- 5. Verificar si a, b, c son diferentes 
sonDiferentes :: Int -> Int -> Int -> Bool
sonDiferentes a b c = if (a /= b) && (a /= c) && (b /= c) then True else False

-- 6. Calcular precio final con descuento
precioFinal :: Float -> Float
precioFinal total
    | total > 1000 = total * 0.60
    | total > 500  = total * 0.70
    | total > 100  = total * 0.90
    | otherwise    = total

-- 7. Última cifra de un número
ultimaCifra :: Int -> Int
ultimaCifra n = n `mod` 10

-- Menú principal
menu :: IO ()
menu = do
    putStrLn "===== MENU PRACTICA 2 ====="
    putStrLn "1. Promedio de 4 números"
    putStrLn "2. Sumar monedas"
    putStrLn "3. Volumen de una esfera"
    putStrLn "4. Verificar si a, b, c son iguales"
    putStrLn "5. Verificar si a, b, c son diferentes"
    putStrLn "6. Calcular precio final con descuento"
    putStrLn "7. Obtener última cifra de un número"
    putStrLn "0. Salir"
    putStrLn "Elige una opción:"
    opcion <- getLine
    case opcion of
        "1" -> do
            putStrLn "Ingresa 4 números:"
            a <- readLn :: IO Float
            b <- readLn :: IO Float
            c <- readLn :: IO Float
            d <- readLn :: IO Float
            print (promedio4 a b c d)
            menu
        "2" -> do
            putStrLn "Ingresa cantidades de monedas (a=$1, b=$5, c=$10, d=$50):"
            a <- readLn :: IO Int
            b <- readLn :: IO Int
            c <- readLn :: IO Int
            d <- readLn :: IO Int
            print (sumaMonedas a b c d)
            menu
        "3" -> do
            putStrLn "Ingresa el radio de la esfera:"
            r <- readLn :: IO Float
            print (volumenEsfera r)
            menu
        "4" -> do
            putStrLn "Ingresa 3 números:"
            a <- readLn :: IO Int
            b <- readLn :: IO Int
            c <- readLn :: IO Int
            print (sonIguales a b c)
            menu
        "5" -> do
            putStrLn "Ingresa 3 números:"
            a <- readLn :: IO Int
            b <- readLn :: IO Int
            c <- readLn :: IO Int
            print (sonDiferentes a b c)
            menu
        "6" -> do
            putStrLn "Ingresa el total de la compra:"
            total <- readLn :: IO Float
            print (precioFinal total)
            menu
        "7" -> do
            putStrLn "Ingresa un número:"
            n <- readLn :: IO Int
            print (ultimaCifra n)
            menu
        "0" -> putStrLn "Saliendo..."
        _   -> do
            putStrLn "Opción no válida"
            menu

-- Punto de entrada
main :: IO ()
main = menu
