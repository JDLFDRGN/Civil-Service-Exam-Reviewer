<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Civil Service Exam Reviewer</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js" defer></script>
    <script src="./js/main.js" type="module" defer></script>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="icon" type="image" href="./img/csc-logo.png">
</head>
<body>
    <div class="container">
        <div id="black-background">
            <div id="first-container">
                <span class="capitalize text-white option-header">choose subject:</span>
                <select id="choose-subject">
                    <option value='english'>English</option>
                    <option value='filipino'>Filipino</option>
                    <option value='generalInformation'>General Information</option>
                </select>
            </div>
            <div id="second-container">
                <span class="capitalize text-white option-header">select mode:</span>
                <span id="choose-scope">
                    <span>
                        <input type="radio" name="topic-scope" class="topic-scope" value="individual" checked>
                        <label for="" class="capitalize text-white">individual</label>
                    </span>
                    <span>
                        <input type="radio" name="topic-scope" class="topic-scope" value="all">
                        <label for="" class="capitalize text-white">all</label>
                    </span>
                </span>
            </div>           
            <div id="my-topic-container"></div>
            <div>
                <div id="time-limit-container">
                    <div class="capitalize text-white option-header">time limit:</div>
                    <span>
                        <input type="radio" name="time-limit" value="enable" class="time-limit-checkbox" id="time-limit-enable" checked>
                        <label class="text-white" for="time-limit-enable">enable</label>
                    </span>
                    <span>
                        <input type="radio" name="time-limit" value="disable" class="time-limit-checkbox" id="time-limit-disable">
                        <label class="text-white" for="time-limit-disable">disable</label>
                    </span>
                </div>
                <div class="time-container">
                    <span>
                        <label class="text-white">hour:</label>
                        <input id="time-limit-hour" type="number" class="time-limit-input" min=0 value=0>
                    </span>
                    <span>
                        <label class="text-white">minute:</label>
                        <input id="time-limit-minute" type="number" class="time-limit-input" min=0 max=59 value=0>
                    </span>
                    <span>
                        <label class="text-white">second:</label>
                        <input id="time-limit-second" type="number" class="time-limit-input" min=0 max=59 value=0>
                    </span>
                </div>
            </div>
            <div id="test-button-container">
                <button id="test-button">enter</button>
            </div>
        </div>
        <div id="exam-container" class="hidden">
            <div class="exam-topic"></div>
            <div class="questionaire-container"></div>
            <div class="exam-footer">
                <div class="timer-container">
                    <div>
                        <div>time limit: (<span id="exam-time-limit-reference"></span>)</div>
                        <div id="exam-time-limit">00:00:00</div>
                    </div>
                </div>
                <button class="next-button">next</button>
            </div>
        </div>
        <div id="result-container" class="hidden">
            <div>
                <div id="result-title">result: english</div>
                <div id="result-total-score-container">
                    <div>
                        <div>total score:</div>
                        <div id="result-total-score"></div>
                    </div>
                </div>
                <div id="result-secondary-data">
                    <div id="result-time-limit"></div>
                    <div id="result-time-finished"></div>
                    <div id="result-score-percentage">score percentage: 80%</div>
                    <a href="./index.php" id="retake-exam">retake exam</a>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <p class="text-white footer-message">Hoy ikaw? galingan mo ha wag kang weak &#128526;</p>
    </footer>
</body>
</html>