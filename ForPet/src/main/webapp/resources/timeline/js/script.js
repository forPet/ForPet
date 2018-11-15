/*jslint white: true, browser: true, undef: true, nomen: true, eqeqeq: true, plusplus: false, bitwise: true, regexp: true, strict: true, newcap: true, immed: true, maxerr: 14 */
/*global window: false, REDIPS: true */

/* enable strict mode */
"use strict";

var redipsInit, // redipsInit 변수를 정의합니다.
toggleAnimation, // 애니메이션 사용 / 사용 안 함
startPositions, // DIV 요소의 초기 위치 기억DIV 요소의 초기 위치initial positions of DIV
// elements
pos = {}, // DIV 요소의 위치
rd = REDIPS.drag; // REDIPS.drag lib에 대한 참조

// redips 초기화
redipsInit = function() {
	// 초기화
	rd.init();
	// 시프트 애니메이션 사용
	startPositions();

	rd.event.moved = function() {
	};
	// DIV 요소를 두 번 클릭하면 초기 위치로 돌아갑니다.
};

// 함수는 DIV 요소를 스캔하고 "pos"객체에 위치를 저장합니다.
startPositions = function() {
	// 로컬 varialbles를 정의합니다
	var divs, id, i, position;
	// 드래그 영역에서 DIV 요소를 수집합니다.
	divs = document.getElementById('redips-drag').getElementsByTagName('div');
	// 각 DIV 요소에 대해 루프 열기
	for (i = 0; i < divs.length; i++) {
		// DIV 요소 ID를 설정합니다.
		id = divs[i].id;
		// 요소 ID가 정의 된 경우 요소 위치 저장
		if (id) {
			// 요소 위치 설정
			position = rd.getPosition(divs[i]);
			// div에 위치가있는 경우 (필터 obj_new)
			if (position.length > 0) {
				pos[id] = position;
			}
		}
	}
};

rd.event.droppedBefore = function(targetCell) {
	// test if target cell is occupied and set reference to the dragged DIV
	// element
	var empty = rd.emptyCell(targetCell, 'test'), obj = rd.obj;
	// if target cell is not empty
	if (!empty) {
		// confirm question should be wrapped in setTimeout because of
		// removeChild and return false below
		setTimeout(function() {
			// ask user if he wants to overwrite TD (cell is already occupied)
			rd.emptyCell(targetCell);
			// append previously removed DIV to the target cell
			targetCell.appendChild(obj);
		}, 50);
		// remove dragged DIV from from DOM (node still exists in memory)
		obj.parentNode.removeChild(obj);
		// return false (deleted DIV will not be returned to source cell)
		return false;
	}
};



// 애니메이션을 활성화 / 비활성화합니다.
toggleAnimation = function(chk) {
	REDIPS.drag.shift.animation = chk.checked;
};

// onload 이벤트 리스너를 추가합니다.
if (window.addEventListener) {
	window.addEventListener('load', redipsInit, false);
} else if (window.attachEvent) {
	window.attachEvent('onload', redipsInit);
}