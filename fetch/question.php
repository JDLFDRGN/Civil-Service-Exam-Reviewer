<?php
    include './../sql/config.php';

    if(isset($_POST['getSubject'])){
        $subject = $_POST['subjectID'];
        print_r(json_encode(getSubject($subject)));
    }

    function getSubject($subjectID){
        global $connect;

        $query = "SELECT * FROM tbl_question INNER JOIN tbl_topic ON tbl_question.topicID = tbl_topic.topicID  INNER JOIN tbl_subject ON tbl_question.subjectID = tbl_subject.subjectID WHERE tbl_question.subjectID = '$subjectID';";
        $result = $connect->query($query);

        $arrayCol = array();
        $arrayRow = array();

        if($result->num_rows > 0){
            while($data = $result->fetch_assoc()){
                $arrayRow['questionID'] = $data['questionID'];
                $arrayRow['question'] = $data['question'];
                $arrayRow['subjectID'] = $data['subjectID'];
                $arrayRow['subject'] = $data['subject'];
                $arrayRow['topicID'] = $data['topicID'];
                $arrayRow['topic'] = $data['topic'];
                $arrayRow['choices'] = getChoices($data['questionID']);
                $arrayRow['answer'] = $data['answer'];
                $arrayRow['explanation'] = $data['explanation'];
                $arrayRow['dateTimeCreated'] = $data['dateTimeCreated'];

                array_push($arrayCol, $arrayRow);
            }

            return $arrayCol;
        }

        return 0;
    }

    function getChoices($questionID){
        global $connect;

        $arrayCol = array();
        $arrayRow = array();

        $query = "SELECT * FROM tbl_choice WHERE questionID = '$questionID';";
        $result = $connect->query($query);

        if($result->num_rows > 0){
            while($data = $result->fetch_assoc()){
                $arrayRow['label'] = $data['label'];
                $arrayRow['choice'] = $data['choice'];

                array_push($arrayCol, $arrayRow);
            }
        }   
        return $arrayCol;
    }
?>  