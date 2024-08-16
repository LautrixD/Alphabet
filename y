<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Alfabeto Click</title>
    <style>
        body {
            background-color: red;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        #letter {
            font-size: 10rem;
            color: white;
        }
    </style>
</head>
<body>
    <div id="letter">A</div>
    <script>
        const letterElement = document.getElementById('letter');
        const alphabet = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        let currentIndex = 0;

        function showLetter(index) {
            letterElement.textContent = alphabet[index];
        }

        document.addEventListener('click', (event) => {
            event.preventDefault();
            currentIndex = (currentIndex + 1) % alphabet.length;
            showLetter(currentIndex);
        });

        document.addEventListener('contextmenu', (event) => {
            event.preventDefault();
            currentIndex = (currentIndex - 1 + alphabet.length) % alphabet.length;
            showLetter(currentIndex);
        });
    </script>
</body>
</html>
