<?php session_start();?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Civil Service Exam Admin</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.3/jquery.min.js" defer></script>
    <script src="./js/main.js" defer></script>
    <link rel="stylesheet" href="./css/style.css">
    <link rel="icon" type="image" href="./img/csc-logo.png">
</head>
<body>
    <div class="container">
        <div id="admin-login-form" class="<?php echo isset($_SESSION['adminSession']) ? 'display-none' : '';?>">
            <div class="input">
                <label for="admin-login-username">username:</label>
                <input id="admin-login-username" class="admin-input" type="text" required>
            </div>
            <div class="input">
                <label for="admin-login-password">password:</label>
                <input id="admin-login-password" class="admin-input" type="password" required>
            </div>
            <button id="admin-login-submit" type="button">enter</button>
        </div>
        <div id="header" class="<?php echo isset($_SESSION['adminSession']) ? '' : 'display-none';?>">
            <ul>
                <li id="question-nav"><a href="#"></a></li>
                <li id="signout-nav"><a href="./index.php">signout</a></li>
            </ul>
        </div>
        <div id="question-form-container" class="<?php echo isset($_SESSION['adminSession']) ? '' : 'display-none';?>">
            <div id="question-form">
                <!-- <div id="question-form-nav">
                    <div class="text-white">add</div>
                    <div class="text-white">list</div>
                </div> -->
                <div id="question-add-container">
                    <div id="first-container" class="question-input">
                        <label for="admin-add-question" class="text-white">question:</label>
                        <textarea name="" id="admin-add-question" cols="30" rows="3"></textarea>
                    </div>
                    <div class="question-input">
                        <label for="" class="text-white">subject:</label>
                        <span class="subject-container">
                            <span>
                                <input type="radio" name="subject" class="admin-add-subject" checked value=1>
                                <label for="" class="text-white">english</label>
                            </span>
                            <span class="radio-margin">
                                <input type="radio" name="subject" class="admin-add-subject" value=2>
                                <label for="" class="text-white">filipino</label>
                            </span>
                            <span class="radio-margin">
                                <input type="radio" name="subject" class="admin-add-subject" value=3>
                                <label for="" class="text-white">general information</label>
                            </span>
                        </span>
                    </div>
                    <div class="question-input">
                        <label for="" class="text-white">topic:</label>
                        <select id="admin-add-topic"></select>
                    </div>
                    <div class="question-input">
                        <label for="" class="text-white">choices:</label>
                        <div>
                            <div id="admin-add-choices-parameter">
                                <span id="label-style-container">
                                    <label for="" class="text-white label-style-text">Label Style:</label>
                                    <span>
                                        <span class="radio-margin">
                                            <input type="radio" name="labelStyle" class="admin-label-style" value="alphabetical" checked>
                                            <label for="" class="text-white">alphabetical</label>
                                        </span>
                                        <span class="radio-margin">
                                            <input type="radio" name="labelStyle" class="admin-label-style" value="numerical">
                                            <label for="" class="text-white">numerical</label>
                                        </span>
                                    </span>
                                </span>
                                <span id="count-container">
                                    <label for="" class="text-white">Count:</label>
                                    <input type="text" id="admin-add-count" value='4' readonly>
                                    <span>
                                        <button class="admin-count-operation" data-operation='addition'>+</button>
                                        <button class="admin-count-operation" data-operation='subtraction'>-</button>
                                    </span>
                                </span>
                            </div>
                            <div id="admin-choice-container">
                                <div class="admin-add-choice-row">
                                    <label for="" class="text-white admin-add-label">A.</label>
                                    <input type="text" class="admin-add-choice">
                                </div>
                                <div class="admin-add-choice-row">
                                    <label for="" class="text-white admin-add-label">B.</label>
                                    <input type="text" class="admin-add-choice">
                                </div>
                                <div class="admin-add-choice-row">
                                    <label for="" class="text-white admin-add-label">C.</label>
                                    <input type="text" class="admin-add-choice">
                                </div>
                                <div class="admin-add-choice-row">
                                    <label for="" class="text-white admin-add-label">D.</label>
                                    <input type="text" class="admin-add-choice">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="question-input">
                        <label for="" class="text-white">answer:</label>
                        <select id="admin-add-answer">
                            <option value="A">Letter A</option>
                            <option value="B">Letter B</option>
                            <option value="C">Letter C</option>
                            <option value="D">Letter D</option>
                        </select>
                    </div>
                    <div class="question-input">
                        <label for="admin-add-explanation" class="text-white">explanation:</label>
                        <textarea name="" id="admin-add-explanation" cols="30" rows="3" placeholder="Optional"></textarea>
                    </div>
                    <div id="add-question-submit-container">
                        <button id="admin-add-submit">submit</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <footer>
        <div class="footer-message text-white">Wag mo masyado galingan!!</div>
    </footer>
</body>
</html>