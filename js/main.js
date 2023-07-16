import {English, Filipino, GeneralInformation} from "./class/data.js";

let exam, timeLimitInterval, score=0;
let examSheet = [];
let answerSheet = [];
let answerKey = [];

let english = new English();
let filipino = new Filipino();
let generalInformation = new GeneralInformation();

$(document).ready(()=>{
    getSubject(1).then(res1=>{
        getSubject(2).then(res2=>{
            getSubject(3).then(res3=>{
                $('#my-topic-container').html(getEnglishTopic()); 

                activateSubjectChangeListener();
                activateTopicScopeChangeListener();
                activateTopicSelectionListener();
                activateRangeSetterListener();
                activateTimeLimitListener();
                activateEnterExamListener();
                activateNextQuestionListener();
            })
        })
    })
});

async function getSubject(subjectID){
    let form = new FormData();
    form.append('getSubject', 1);
    form.append('subjectID', subjectID);

    try {
        let res = await fetch('./fetch/question.php', {method: 'post', body: form});
        let data = await res.json();

        if(subjectID == 1){
            english.data = data;
            countEnglishTopicItem(english.data);
            return;
        }
        if(subjectID == 2){
            filipino.data = data;
            countFilipinoTopicItem(filipino.data);
            return;
        }
        if(subjectID == 3){
            generalInformation.data = data;
            countGeneralInformationItem(generalInformation.data);
            return;
        }

    } catch (error) {
        console.log(error);
    }
}

function countEnglishTopicItem(data){
    let counter = [0, 0, 0, 0, 0 , 0, 0];

    for(let i in data){
        for(let j=1;j<=7;j++){
            if(data[i].topicID == j){
                counter[data[i].topicID - 1]++;
                break;
            }
        }
    }

    english.topicOneSize = counter[0];
    english.topicTwoSize = counter[1];
    english.topicThreeSize = counter[2];
    english.topicFourSize = counter[3];
    english.topicFiveSize = counter[4];
    english.topicSixSize = counter[5];
    english.topicSevenSize = counter[6];
}

function countFilipinoTopicItem(data){
    let counter = [0, 0, 0, 0, 0];

    for(let i in data){
        for(let j=1;j<=5;j++){
            if(data[i].topicID == j){
                counter[data[i].topicID - 1]++;
                break;
            }
        }
    }

    filipino.topicOneSize = counter[0];
    filipino.topicTwoSize = counter[1];
    filipino.topicThreeSize = counter[2];
    filipino.topicFourSize = counter[3];
    filipino.topicFiveSize = counter[4];
}

function countGeneralInformationItem(data){
    let counter = [0, 0, 0, 0];

    for(let i in data){
        for(let j=8;j<=11;j++){
            if(data[i].topicID == j){
                counter[data[i].topicID - 8]++;
                break;
            }
        }
    }

    generalInformation.topicOneSize = counter[0];
    generalInformation.topicTwoSize = counter[1];
    generalInformation.topicThreeSize = counter[2];
    generalInformation.topicFourSize = counter[3];
}

//############################################################################################################

function activateSubjectChangeListener(){
    $('#choose-subject').on('change',  (e)=>{
        let subject = $(e.target).val();

        $('.topic-scope').first().prop('checked', true);
         
        if(subject == 'english')
            $('#my-topic-container').html(getEnglishTopic());
        
        if(subject == 'filipino')
            $('#my-topic-container').html(getFilipinoTopic());
        
        if(subject == 'generalInformation')
            $('#my-topic-container').html(getGeneralInformationTopic());
        
        activateTopicSelectionListener();
        activateRangeSetterListener();
        return 0;
    })
}

//############################################################################################################

function activateTopicScopeChangeListener(){
    $('.topic-scope').on('change', (e)=>{
        let scope = $(e.target).val();
        
        if(scope == 'individual'){
            $('.topic-checkbox').each((index, element)=>{$(element).prop('checked', false);})
            $('.exam-range').each((index, element)=>{$(element).prop('max', 0)})
            $('.item-value').each((index, element)=>{$(element).html(0)})
            $('.item-total').html(0);
            return;
        }
        if(scope == 'all'){
            let subject = $('#choose-subject').val();

            $('.topic-checkbox').each((index, element)=>{$(element).prop('checked', true);})

            if(subject == 'english'){
                $('#english-topic-one-range').prop('max', english.topicOneSize);
                $('#english-topic-two-range').prop('max', english.topicTwoSize);
                $('#english-topic-three-range').prop('max', english.topicThreeSize);
                $('#english-topic-four-range').prop('max', english.topicFourSize);
                $('#english-topic-five-range').prop('max', english.topicFiveSize);
                $('#english-topic-six-range').prop('max', english.topicSixSize);
                $('#english-topic-seven-range').prop('max', english.topicSevenSize);

                $('#english-topic-one-range').val(english.topicOneSize > 20 ? 20 : english.topicOneSize);
                $('#english-topic-two-range').val(english.topicTwoSize > 20 ? 20 : english.topicTwoSize);
                $('#english-topic-three-range').val(english.topicThreeSize > 20 ? 20 : english.topicThreeSize);
                $('#english-topic-four-range').val(english.topicFourSize > 20 ? 20 : english.topicFourSize);
                $('#english-topic-five-range').val(english.topicFiveSize > 20 ? 20 : english.topicFiveSize);
                $('#english-topic-six-range').val(english.topicSixSize > 20 ? 20 : english.topicSixSize);
                $('#english-topic-seven-range').val(english.topicSevenSize > 20 ? 20 : english.topicSevenSize);

                $('#english-topic-one-value').html($('#english-topic-one-range').val());
                $('#english-topic-two-value').html($('#english-topic-two-range').val());
                $('#english-topic-three-value').html($('#english-topic-three-range').val());
                $('#english-topic-four-value').html($('#english-topic-four-range').val());
                $('#english-topic-five-value').html($('#english-topic-five-range').val());
                $('#english-topic-six-value').html($('#english-topic-six-range').val());
                $('#english-topic-seven-value').html($('#english-topic-seven-range').val());
            }
            if(subject == 'filipino'){
                $('#filipino-topic-one-range').prop('max', filipino.topicOneSize);
                $('#filipino-topic-two-range').prop('max', filipino.topicTwoSize);
                $('#filipino-topic-three-range').prop('max', filipino.topicThreeSize);
                $('#filipino-topic-four-range').prop('max', filipino.topicFourSize);
                $('#filipino-topic-five-range').prop('max', filipino.topicFiveSize);

                $('#filipino-topic-one-range').val(filipino.topicOneSize > 20 ? 20 : filipino.topicOneSize);
                $('#filipino-topic-two-range').val(filipino.topicTwoSize > 20 ? 20 : filipino.topicTwoSize);
                $('#filipino-topic-three-range').val(filipino.topicThreeSize > 20 ? 20 : filipino.topicThreeSize);
                $('#filipino-topic-four-range').val(filipino.topicFourSize > 20 ? 20 : filipino.topicFourSize);
                $('#filipino-topic-five-range').val(filipino.topicFiveSize > 20 ? 20 : filipino.topicFiveSize);

                $('#filipino-topic-one-value').html($('#filipino-topic-one-range').val());
                $('#filipino-topic-two-value').html($('#filipino-topic-two-range').val());
                $('#filipino-topic-three-value').html($('#filipino-topic-three-range').val());
                $('#filipino-topic-four-value').html($('#filipino-topic-four-range').val());
                $('#filipino-topic-five-value').html($('#filipino-topic-five-range').val());
            }
            if(subject == 'generalInformation'){   

                $('#general-information-topic-one-range').prop('max', generalInformation.topicOneSize);
                $('#general-information-topic-two-range').prop('max', generalInformation.topicTwoSize);
                $('#general-information-topic-three-range').prop('max', generalInformation.topicThreeSize);
                $('#general-information-topic-four-range').prop('max', generalInformation.topicFourSize);

                $('#general-information-topic-one-range').val(generalInformation.topicOneSize > 20 ? 20 : generalInformation.topicOneSize);
                $('#general-information-topic-two-range').val(generalInformation.topicTwoSize > 20 ? 20 : generalInformation.topicTwoSize);
                $('#general-information-topic-three-range').val(generalInformation.topicThreeSize > 20 ? 20 : generalInformation.topicThreeSize);
                $('#general-information-topic-four-range').val(generalInformation.topicFourSize > 20 ? 20 : generalInformation.topicFourSize);

                $('#general-information-topic-one-value').html($('#general-information-topic-one-range').val());
                $('#general-information-topic-two-value').html($('#general-information-topic-two-range').val());
                $('#general-information-topic-three-value').html($('#general-information-topic-three-range').val());
                $('#general-information-topic-four-value').html($('#general-information-topic-four-range').val());
            }
            updateTotalItem();
            return;
        }
    })
}

//############################################################################################################

function activateTopicSelectionListener(){
    $('.topic-checkbox').on('click', (e)=>{
        let row = e.target.parentElement.parentElement;
        let range = row.querySelector('.exam-range');
        let value = row.querySelector('.item-value');

        if($(e.target).prop('checked')){
            updateSelectedRange(row);
            updateTotalItem();
            return;
        }
        if(!$(e.target).prop('checked')){
            $(range).prop('max', 0);
            $(value).html(0);
            updateTotalItem();
            return;
        }
    })
}

function updateSelectedRange(row){
    let subjectTopic = [{'dataRow': 'english-topic-one', 'dataSize': english.topicOneSize}, {'dataRow': 'english-topic-two', 'dataSize': english.topicTwoSize}, {'dataRow': 'english-topic-three', 'dataSize': english.topicThreeSize}, {'dataRow': 'english-topic-four', 'dataSize': english.topicFourSize}, {'dataRow': 'english-topic-five', 'dataSize': english.topicFiveSize}, {'dataRow': 'english-topic-six', 'dataSize': english.topicSixSize}, {'dataRow': 'english-topic-seven', 'dataSize': english.topicSevenSize},
                        {'dataRow': 'general-information-topic-one', 'dataSize': generalInformation.topicOneSize}, {'dataRow': 'general-information-topic-two', 'dataSize': generalInformation.topicTwoSize}, {'dataRow': 'general-information-topic-three', 'dataSize': generalInformation.topicThreeSize}, {'dataRow': 'general-information-topic-four', 'dataSize': generalInformation.topicFourSize}, 
                        {'dataRow': 'filipino-topic-one', 'dataSize': filipino.topicOneSize}, {'dataRow': 'filipino-topic-two', 'dataSize': filipino.topicTwoSize}, {'dataRow': 'filipino-topic-three', 'dataSize': filipino.topicThreeSize}, {'dataRow': 'filipino-topic-four', 'dataSize': filipino.topicFourSize}, {'dataRow': 'filipino-topic-five', 'dataSize': filipino.topicFiveSize}];
    
    let range = row.querySelector('.exam-range');
    let value = row.querySelector('.item-value');

    for(let topic of subjectTopic){
        if($(row).attr('data-row') == topic.dataRow){
            $(range).prop('max', topic.dataSize);
            $(range).val(topic.dataSize > 20 ? 20 : topic.dataSize);
            $(value).html($(range).val());
            return;
        }
    }
}

//###########################################################################################################
function activateRangeSetterListener(){
    $('.exam-range').on('input', (e)=>{
        let row = e.target.parentElement.parentElement;
        let range = row.querySelector('.exam-range');
        let value = row.querySelector('.item-value');

        $(value).html($(e.target).val());
        updateTotalItem();
    })
}
//############################################################################################################

let timeLimitActivated = 'enable';
function activateTimeLimitListener(){
    $('.time-limit-checkbox').on('click', (e)=>{
       timeLimitActivated = $(e.target).val();

       if(timeLimitActivated == 'enable'){
            $('.time-limit-input').val(0);
            $('.time-limit-input').prop('readonly', false);
            return 0;
       }
       if(timeLimitActivated == 'disable'){
            $('.time-limit-input').val('');
            $('.time-limit-input').prop('readonly', true);
            return 0;
       }
    })
}

//############################################################################################################

function timeFormatToSeconds(hour, minute, second){
    let hourSeconds = hour * 60 * 60;
    let minuteSeconds = minute * 60;
    let secondSeconds = second;
    let totalSeconds = parseInt(hourSeconds) + parseInt(minuteSeconds) + parseInt(secondSeconds);

    return totalSeconds;
}

function secondsToTimeFormat(totalSeconds){
    let hour = Math.floor(totalSeconds / 3600);
    let minute = Math.floor(totalSeconds / 60);
    let second = Math.floor(totalSeconds % 60);

    while(minute >= 60){
        minute -= 60;
    }

    hour = hour < 10 ? `0${hour}` : hour; 
    minute = minute < 10 ? `0${minute}` : minute; 
    second = second < 10 ? `0${second}` : second; 

    return `${hour}:${minute}:${second}`;
}
//############################################################################################################
function updateTotalItem(){
    let total = 0;
    $('.item-value').each((index, element)=>{
        total += parseFloat($(element).html());
    })
    $('.item-total').html(total);
}
//###########################################################################################################

function activateEnterExamListener(){
    $('#test-button').on('click', ()=>{
        if($('.item-total').html() == 0){
            alert('There is no exam items!');
            return 0;
        }

        submitTestSetting();

        if(exam.timelimit == 0){
            alert('Please set a time limit!');
            return 0;
        }

        deliverExam();
        displayExam();

        if(exam.timelimit > 0)
            activateTimer();
       
    })
}

function submitTestSetting(){
    let subject = $('#choose-subject').val();
    let checkedTopic = $('.topic-checkbox:checked');
    let timeLimitInSeconds = timeLimitActivated == 'disable' ? 'NA' : timeFormatToSeconds($('#time-limit-hour').val(), $('#time-limit-minute').val(), $('#time-limit-second').val());
    let arrayExam = [];

    $(checkedTopic).each((index, element)=>{
        let tableRow = $($(element).parent()).parent();
        let topicID = $(tableRow).attr('data-topic-id');
        let questionItemByTopic = $($(tableRow).children()[2]).html();

        arrayExam.push({'topicID': topicID, 'item' : questionItemByTopic});
    })

    exam = {'subject' : subject, 'timelimit' : timeLimitInSeconds, 'item' : parseInt($('.item-total').html()), 'topic' : arrayExam};
}

function deliverExam(){
    $('#black-background').addClass('hidden');
    $('#exam-container').removeClass('hidden');

    if(timeLimitActivated == 'disable')
        $('.timer-container').html('');

    $(exam.topic).each((index, element)=>{
        if(exam.subject == 'english'){
            let question = randomizeExam(english.data, element.topicID, element.item);
            examSheet.push(question);
        }
        if(exam.subject == 'filipino'){
            let question = randomizeExam(filipino.data, element.topicID, element.item);
            examSheet.push(question);
        }
        if(exam.subject == 'generalInformation'){
            let question = randomizeExam(generalInformation.data, element.topicID, element.item);
            examSheet.push(question);
        }
    })
}

function randomizeExam(question, topicID, item){
    let limitedQuestion = [];
    let finalQuestion = [];

    $(question).each((index, element)=>{
        if(element.topicID == topicID){
            limitedQuestion.push(element);
        }
    })

    for(let index in limitedQuestion){
        let randomIndex = Math.floor(Math.random() * item);

        [limitedQuestion[index], limitedQuestion[randomIndex]] = [limitedQuestion[randomIndex], limitedQuestion[index]];
    }    

    for(let i=0 ; i<item ; i++){
        finalQuestion.push(limitedQuestion[i]);
        answerKey.push({'questionID' : limitedQuestion[i].questionID, 'answer' : limitedQuestion[i].answer});
    }

    return finalQuestion;
}

let topic = 0;
let number = 0;
let itemNumber = 1;

function displayExam(){
    let questionaire = `<div>
                            <span class="text-white">${number + 1}.</span>
                            <pre class="text-white">${examSheet[topic][number].question}</pre>
                        </div>`;

    $('.exam-topic').html(`topic: ${examSheet[topic][number].topic}`);
    $('.questionaire-container').html(questionaire);
    $('.questionaire-container').append(`<div class="choices-container"></div>`);   
    $('.next-button').attr('data-question-id', examSheet[topic][number].questionID);

    $(examSheet[topic][number].choices).each((index, element)=>{
        $('.choices-container').append(`<div><input type="radio" name="${examSheet[topic][number].questionID}" value="${element.label}" class="choices-checkbox"><label>${element.label}. ${element.choice}</label></div>`);
    });

    $('.questionaire-container').scrollTop(0);
}

let count = 0;
function activateTimer(){

    $('#exam-time-limit-reference').html(secondsToTimeFormat(exam.timelimit));
    timeLimitInterval = setInterval(()=>{
        if(count == exam.timelimit){
            clearInterval(timeLimitInterval);
            showResult();
            return;
        }
        count++;
        $('#exam-time-limit').html(secondsToTimeFormat(count));
    }, 1000);
}

//###########################################################################################################

function activateNextQuestionListener(){
    $('.next-button').on('click', ()=>{
        if($('.choices-checkbox:checked').length == 1){
            number++;
            itemNumber++;

            recordAnswer();

            if(itemNumber == exam.item + 1){
                showResult();
                return 0;
            }
            if(examSheet[topic].length == number){
                topic++;
                number = 0;
            }
            
            displayExam();
        }
    });
}

function recordAnswer(){
    let questionID = $('.next-button').attr('data-question-id');
    let answer = $('.choices-checkbox:checked').val();

    answerSheet.push({'questionID' : questionID, 'answer' : answer});
}
//###########################################################################################################

function activateFooterAnimation(){
    
}

//###########################################################################################################

function showResult(){
    $('#exam-container').addClass('hidden');
    $('#result-container').removeClass('hidden');

    for(let index in answerKey){
        try {
            if(answerKey[index].answer == answerSheet[index].answer){
                score++;
            }
        } catch (error) {
            console.log(error);   
        } 
    }

    $('#result-title').html(`result: ${exam.subject}`);
    $('#result-time-limit').html(`time limit: ${exam.timelimit > 0 ? secondsToTimeFormat(exam.timelimit) : exam.timelimit}`);
    $('#result-time-finished').html(`time finished: ${exam.timelimit > 0 ? secondsToTimeFormat(count) : exam.timelimit}`);
    $('#result-total-score').html(`${score}/${exam.item}`);
    $('#result-score-percentage').html(`score percentage: ${calculatePercentage(score, exam.item)}%`);
}

function calculatePercentage(part, whole){
    return Math.floor((part/whole) * 100);
}

function getEnglishTopic(){
    return ` <table class="exam-table">
                <caption class="my-exam">my exam</caption>
                <tr>
                    <th>topic</th>
                    <th>range</th>
                    <th>item no.</th>   
                </tr>
                <tr data-row="english-topic-one" data-topic-id=1>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">vocabulary</label></td>
                    <td class="range-container"><input type="range" id="english-topic-one-range" class="exam-range" max=0></td>
                    <td id="english-topic-one-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="english-topic-two" data-topic-id=2>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">grammar and correct usage</label></td>
                    <td class="range-container"><input type="range" id="english-topic-two-range" class="exam-range" max=0></td>
                    <td id="english-topic-two-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="english-topic-three" data-topic-id=3>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">paragraph organization</label></td>
                    <td class="range-container"><input type="range" id="english-topic-three-range" class="exam-range" max=0></td>
                    <td id="english-topic-three-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="english-topic-four" data-topic-id=4>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">reading comprehension</label></td>
                    <td class="range-container"><input type="range" id="english-topic-four-range" class="exam-range" max=0></td>
                    <td id="english-topic-four-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="english-topic-five" data-topic-id=5>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">analogy</label></td>
                    <td class="range-container"><input type="range" id="english-topic-five-range" class="exam-range" max=0></td>
                    <td id="english-topic-five-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="english-topic-six" data-topic-id=6>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">logic</label></td>
                    <td class="range-container"><input type="range" id="english-topic-six-range" class="exam-range" max=0></td>
                    <td id="english-topic-six-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="english-topic-seven" data-topic-id=7>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">numerical reasoning</label></td>
                    <td class="range-container"><input type="range" id="english-topic-seven-range" class="exam-range" max=0></td>
                    <td id="english-topic-seven-value" class="text-white item-value">0</td>
                </tr>
            </table>
            <div class="total-no">
                <span class="text-white capitalize">total item:</span>
                <span class="text-white item-total">0</span>
            </div>`;
}
function getFilipinoTopic(){
    return `<table class="exam-table">
                <caption class="my-exam">my exam</caption>
                <tr>
                    <th>topic</th>
                    <th>range</th>
                    <th>item no.</th>   
                </tr>
                <tr data-row="filipino-topic-one" data-topic-id=1>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">vocabulary</label></td>
                    <td class="range-container"><input type="range" id="filipino-topic-one-range" class="exam-range" max=0></td>
                    <td id="filipino-topic-one-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="filipino-topic-two" data-topic-id=2>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">grammar and correct usage</label></td>
                    <td class="range-container"><input type="range" id="filipino-topic-two-range" class="exam-range" max=0></td>
                    <td id="filipino-topic-two-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="filipino-topic-three" data-topic-id=3>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">paragraph organization</label></td>
                    <td class="range-container"><input type="range" id="filipino-topic-three-range" class="exam-range" max=0></td>
                    <td id="filipino-topic-three-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="filipino-topic-four" data-topic-id=4>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">reading comprehension</label></td>
                    <td class="range-container"><input type="range" id="filipino-topic-four-range" class="exam-range" max=0></td>
                    <td id="filipino-topic-four-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="filipino-topic-five" data-topic-id=5>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">analogy</label></td>
                    <td class="range-container"><input type="range" id="filipino-topic-five-range" class="exam-range" max=0></td>
                    <td id="filipino-topic-five-value" class="text-white item-value">0</td>
                </tr>
            </table>
            <div class="total-no">
                <span class="text-white capitalize">total item:</span>
                <span class="text-white item-total">0</span>
            </div>`;
}
function getGeneralInformationTopic(){
    return ` <table class="exam-table">
                <caption class="my-exam">my exam</caption>
                <tr>
                    <th>topic</th>
                    <th>range</th>
                    <th>item no.</th>   
                </tr>
                <tr data-row="general-information-topic-one" data-topic-id=8>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">philippine constitution</label></td>
                    <td class="range-container"><input type="range" id="general-information-topic-one-range" class="exam-range" max=0></td>
                    <td id="general-information-topic-one-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="general-information-topic-two" data-topic-id=9>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">code of conduct and ethical standards for public officials and employees</label></td>
                    <td class="range-container"><input type="range" id="general-information-topic-two-range" class="exam-range" max=0></td>
                    <td id="general-information-topic-two-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="general-information-topic-three" data-topic-id=10>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">peace and human rights issues and concepts</label></td>
                    <td class="range-container"><input type="range" id="general-information-topic-three-range" class="exam-range" max=0></td>
                    <td id="general-information-topic-three-value" class="text-white item-value">0</td>
                </tr>
                <tr data-row="general-information-topic-four" data-topic-id=11>
                    <td><input type="checkbox" class="topic-checkbox"><label class="text-white capitalize">environment management and protection</label></td>
                    <td class="range-container"><input type="range" id="general-information-topic-four-range" class="exam-range" max=0></td>
                    <td id="general-information-topic-four-value" class="text-white item-value">0</td>
                </tr>
            </table>
            <div class="total-no">
                <span class="text-white capitalize">total item:</span>
                <span class="text-white item-total">0</span>
            </div>`;
}