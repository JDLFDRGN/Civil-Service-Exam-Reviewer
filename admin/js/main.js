$(document).ready(()=>{
    $('.admin-input').on('keypress', (e)=>{
        let code = e.keyCode || e.which;
        if(code == 13) {
            validate();
        }
    })
    $('#admin-login-submit').on('click', validate);

    $('#admin-add-topic').html(englishTopic());

    $('.admin-add-subject').on('change', (e)=>{
        let subjectID = $(e.target).val();

        if(subjectID == 1){
            $('#admin-add-topic').html(englishTopic());
            return;
        }
        if(subjectID == 2){
            $('#admin-add-topic').html(filipinoTopic());
            return;
        }
        if(subjectID == 3){
            $('#admin-add-topic').html(generalInformationTopic());
            return;
        }
    })
    $('.admin-count-operation').on('click', (e)=>{
        let operation = $(e.target).attr('data-operation');
        let count = parseInt($('#admin-add-count').val());
        
        if(operation == 'addition' && count < 10){
            count++;
            $('#admin-add-count').val(count);
            $('#admin-choice-container').append(addChoiceRow(count));
            $('#admin-add-answer').append(addAnsweRow(count));
            return;
        }
        if(operation == 'subtraction' && count > 0){
            count--;
            $('#admin-add-count').val(count);
            $('.admin-add-choice-row').last().remove();
            $('#admin-add-answer>option').last().remove();
            return;
        }
    })
    $('.admin-label-style').on('click', ()=>{
        let alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];
        let labelStyle = $('.admin-label-style:checked').val();

        if(labelStyle == 'alphabetical'){
            $('.admin-add-label').each((index, element)=>$(element).html(`${alphabet[index]}.`));
            $('#admin-add-answer>option').each((index, element)=>{
                index == 0 ? $('#admin-add-answer').html('') : '';
                $('#admin-add-answer').append(`<option value='${alphabet[index]}'>Letter ${alphabet[index]}</option>`);
            })
            return;
        }
        if(labelStyle == 'numerical'){
            $('.admin-add-label').each((index, element)=>$(element).html(`${index + 1}.`));
            $('#admin-add-answer>option').each((index, element)=>{
                index == 0 ? $('#admin-add-answer').html('') : '';
                $('#admin-add-answer').append(`<option value='${index + 1}'>Number ${index + 1}</option>`);
            })
            return;
        }
    })
    $('#admin-add-submit').on('click', ()=>{
        addQuestion();
    })
    $('#signout-nav').on('click', ()=>{
        deleteSession();
    })
});

async function addQuestion(){
    let question = $('#admin-add-question').val();
    let subject = $('.admin-add-subject:checked').val();
    let topic = $('#admin-add-topic').val();
    let label = $('.admin-add-label');
    let choice = $('.admin-add-choice');
    let answer = $('#admin-add-answer').val();
    let explanation = $('#admin-add-explanation').val();
    let choiceError = false;
    let jsonChoice = [];

    $(label).each((index, element)=>{
        jsonChoice.push({'label' : ($(element).html()).replace('.', ''), 'choice' : ($(choice[index]).val()).replace('.', '')});
    })

    if(question == ''){
        alert('Please enter the question!');
        return;
    }
    if(choice.length <= 1){
        alert('Choice count must be at least 2!!');
        return;
    }
    $(choice).each((index, element)=>{
        if($(element).val() == ''){
            alert('Please enter choice for all the applicable input field!');
            choiceError = true;
            return false;
        }
    })

    if(choiceError) return;

    let form = new FormData();
    form.append('addQuestion', 1);
    form.append('question', question);
    form.append('subject', subject);
    form.append('topic', topic);
    form.append('choice', JSON.stringify(jsonChoice));
    form.append('answer', answer);
    form.append('explanation', explanation);

    try {
        let res = await fetch('./fetch/question-add.php', {method: 'post', body: form});
        let data = await res.text();

        if(data === '1'){
            alert('Question successfully added!');
            resetData();
            return;
        }
    } catch (error) {
        console.log(error);
    }
}

function resetData(){
    $('#admin-add-question').val('');
    $('.admin-add-subject').first().prop('checked', true);
    $('#admin-add-topic').html(englishTopic());
    $('.admin-label-style').first().prop('checked', true);
    $('#admin-add-count').val(4);
    $('#admin-choice-container').html('');
    $('#admin-add-answer').html('');

    for(let i=0;i<4;i++){
        $('#admin-choice-container').append(addChoiceRow(i+1));
        $('#admin-add-answer').append(addAnsweRow(i+1));
    }
    
    $('#admin-add-explanation').val('');
}
function addChoiceRow(count){
    let alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];
    let labelStyle = $('.admin-label-style:checked').val();

    return `<div class="admin-add-choice-row">
                <label for="" class="text-white admin-add-label">${labelStyle == 'alphabetical' ? `${alphabet[count - 1]}.` : `${count}.`}</label>
                <input type="text" class="admin-add-choice">
            </div>`;
}

function addAnsweRow(count){
    let alphabet = ['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J'];
    let labelStyle = $('.admin-label-style:checked').val();

    return `<option value='${labelStyle == 'alphabetical' ? alphabet[count - 1] : count + 1}'>
                ${labelStyle == 'alphabetical' ? `Letter ${alphabet[count - 1]}` : `Number ${count}`}
            </option>`;
}

function englishTopic(){
    return `<option value=1>Vocabulary</option>
            <option value=2>Grammar and Correct Usage</option>
            <option value=3>Paragraph Organization</option>
            <option value=4>Reading Comprehension</option>
            <option value=5>Analogy</option>
            <option value=6>Logic</option>
            <option value=7>Numerical Reasoning</option>`;
}
function filipinoTopic(){
    return `<option value=1>Vocabulary</option>
            <option value=2>Grammar and Correct Usage</option>
            <option value=3>Paragraph Organization</option>
            <option value=4>Reading Comprehension</option>
            <option value=5>Analogy</option>`;
}
function generalInformationTopic(){
    return `<option value=8>Philippine Constitution</option>
            <option value=9>Code of Conduct and Ethical Standards for Public Officials and Employees</option>
            <option value=10>Peace and Human Rights Issues and Concepts</option>
            <option value=11>Environment Management and Protection</option>`;
}
function validate(){
    let username = $('#admin-login-username').val();
    let password = $('#admin-login-password').val();

    if(username == ''){
        alert('Enter your username!');
        return;
    }

    if(password == ''){
        alert('Enter your password!');
        return;
    }

    if(username != 'admin' || password != 'root'){
        alert('Invalid username or password');
        return;
    }
    
    setAdminSession();
    hideLoginForm();
    gotoHomePage();
}

function hideLoginForm(){
    $('#admin-login-form').css('display', 'none');
}

function gotoHomePage(){
    $('#header').removeClass('display-none');
    $('#question-form-container').removeClass('display-none');
}

async function setAdminSession(){
    let form = new FormData();
    form.append('setAdminSession', true);
    form.append('adminSession', '1');

    try {
        let res = await fetch('./fetch/session.php', {method: 'post', body: form});
        let data = await res.text();

        console.log(data);
    } catch (error) {
        console.log(error);
    }
}

async function deleteSession(){
    let form = new FormData();
    form.append('deleteSession', true);

    try {
        let res = await fetch('./fetch/session.php', {method: 'post', body: form});
        let data = await res.text();

        console.log(data);
    } catch (error) {
        console.log(error);
    }
}