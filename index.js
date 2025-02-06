const checkEvenOdd = document.getElementById("odd") ;
const checkGrade = document.getElementById("checkGrade") ;
const showGreeting = document.getElementById("showGreeting") ;
const startCountdown = document.getElementById("startCountdown") ;

checkEvenOdd.onclick = function () {
            let num = document.getElementById("numberInput").value ;
            let result = (num % 2 === 0) ? "الرقم زوجي" : "الرقم فردي" ;
            document.getElementById("evenOddResult").textContent = result ;
        }

 checkGrade.onclick = function() {
            let grade = document.getElementById("gradeInput").value ;
            let result = grade > 90 ? "Excellent" : grade > 70 ? "Good" : "Failed" ;
            document.getElementById("gradeResult").textContent = result ;
        }

  showGreeting.onclick = function() {
            let name = document.getElementById("nameInput").value ;
            document.getElementById("greetingMessage").textContent = "مرحبًا، " + name + "!" ;
        }

   startCountdown.onclick = function() {
            let count = 10 ;
            let countdownElement = document.getElementById("countdownDisplay") ;
            let interval = setInterval(function () {
                countdownElement.textContent = count  ;
                if (count === 0) {
                    clearInterval(interval)  ;
                    countdownElement.textContent = "انتهى الوقت!" ;
                }
                count-- ;
            }, 1000) ;
   }
