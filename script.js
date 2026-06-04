let one_btn = document.querySelector(".one_btn");
let one_table = document.querySelector(".one_table");

one_btn.addEventListener("click", () => {
    one_btn.classList.toggle("on");
    one_table.classList.toggle("on");
});

let two_btn = document.querySelector(".two_btn");
let two_table = document.querySelector(".two_table");

two_btn.addEventListener("click", () => {
    two_btn.classList.toggle("on");
    two_table.classList.toggle("on");
});

let three_btn = document.querySelector(".three_btn");
let three_table = document.querySelector(".three_table");

three_btn.addEventListener("click", () => {
    three_btn.classList.toggle("on");
    three_table.classList.toggle("on");
});

let four_btn = document.querySelector(".four_btn");
let four_table = document.querySelector(".four_table");

four_btn.addEventListener("click", () => {
    four_btn.classList.toggle("on");
    four_table.classList.toggle("on");
});

let five_btn = document.querySelector(".five_btn");
let five_table = document.querySelector(".five_table");

five_btn.addEventListener("click", () => {
    five_btn.classList.toggle("on");
    five_table.classList.toggle("on");
});

let six_btn = document.querySelector(".six_btn");
let six_table = document.querySelector(".six_table");

six_btn.addEventListener("click", () => {
    six_btn.classList.toggle("on");
    six_table.classList.toggle("on");
});

let seven_btn = document.querySelector(".seven_btn");
let seven_table = document.querySelector(".seven_table");

seven_btn.addEventListener("click", () => {
    seven_btn.classList.toggle("on");
    seven_table.classList.toggle("on");
});

/*
html<!-- data-target 속성에 제어할 테이블의 클래스명을 적어줍니다 -->
<button class="toggle_btn" data-target=".one_table">버튼 1</button>
<button class="toggle_btn" data-target=".two_table">버튼 2</button>
코드를 사용할 때는 주의가 필요합니다.JavaScriptjavascript// 모든 토글 버튼을 한 번에 선택합니다
const toggleButtons = document.querySelectorAll(".toggle_btn");

toggleButtons.forEach(btn => {
    btn.addEventListener("click", () => {
        // 버튼에 지정된 target 클래스로 테이블을 찾습니다
        const targetTable = document.querySelector(btn.dataset.target);
        
        // 버튼과 테이블의 클래스를 동시에 토글합니다
        btn.classList.toggle("on");
        if (targetTable) targetTable.classList.toggle("on");
    });
});
코드를 사용할 때는 주의가 필요합니다.2. 함수로 묶기 (HTML 구조를 바꿀 수 없을 때)HTML을 수정할 수 없다면, 중복되는 로직을 하나의 함수로 만들어서 호출하면 됩니다.javascriptfunction setupToggle(btnSelector, tableSelector) {
    const btn = document.querySelector(btnSelector);
    const table = document.querySelector(tableSelector);
    
    // 요소가 존재할 때만 이벤트 리스너를 바인딩합니다
    if (btn && table) {
        btn.addEventListener("click", () => {
            btn.classList.toggle("on");
            table.classList.toggle("on");
        });
    }
}

// 필요한 만큼만 한 줄씩 추가하면 됩니다
setupToggle(".one_btn", ".one_table");
setupToggle(".two_btn", ".two_table");
*/
