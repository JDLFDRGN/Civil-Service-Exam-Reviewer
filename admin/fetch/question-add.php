<?php
    include './../sql/config.php';

    date_default_timezone_set('Asia/Manila');
    global $connect;

    if(isset($_POST['addQuestion'])){
        $question = $_POST['question'];
        $subject = intval($_POST['subject']);
        $topic = intval($_POST['topic']);
        $choice = json_decode($_POST['choice']);
        $answer = $_POST['answer'];
        $explanation = $_POST['explanation'];
        $dateTime = date('Y-m-d H:i:s');

        $addQuestion = "INSERT INTO tbl_question(question, subjectID, topicID, answer, explanation, dateTimeCreated) VALUES('$question', $subject, $topic, '$answer', '$explanation', '$dateTime');";
        $addQuestionResult = $connect->query($addQuestion);

        if($addQuestionResult){
            $getCurrentQuestionID = "SELECT questionID FROM tbl_question ORDER BY questionID DESC LIMIT 1;";
            $currentQuestionID = $connect->query($getCurrentQuestionID);
    
            while($data = $currentQuestionID->fetch_assoc()){
                $questionID = intval($data['questionID']);
            }

            for($i=0;$i<count($choice);$i++){
                $labelVal = $choice[$i]->label;
                $choiceVal = $choice[$i]->choice; 

                $addChoices = "INSERT INTO tbl_choice(label, choice, questionID, dateTimeCreated) VALUES('$labelVal', '$choiceVal', $questionID, '$dateTime');";
                $addChoiceResult = $connect->query($addChoices);
            }

            echo '1';
        }
    }
?>