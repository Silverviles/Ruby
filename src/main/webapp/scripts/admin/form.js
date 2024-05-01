const inputs = document.querySelectorAll(".input");
const textAreas = document.querySelectorAll(".textArea");
const selects = document.querySelectorAll(".selectArea");

function focusFunc() {
	let parent = this.parentNode;
	parent.classList.add("focus");
}

function blurFunc() {
	let parent = this.parentNode;
	if (this.value === "") {
		parent.classList.remove("focus");
	}
}


inputs.forEach((input) => {
	input.addEventListener("focus", focusFunc);
	input.addEventListener("blur", blurFunc);
	if (input.value !== null && input.value.trim() !== "") {
		input.parentNode.classList.add("focus");
	}
});

textAreas.forEach((textarea) => {
	textarea.addEventListener("focus", focusFunc);
	textarea.addEventListener("blur", blurFunc);
	if (textarea.value !== null && textarea.value.trim() !== "") {
		textarea.parentNode.classList.add("focus");
	}
});

selects.forEach((select) => {
	select.addEventListener("focus", focusFunc);
	select.addEventListener("blur", blurFunc);
	if (select.value !== null && select.value.trim() !== "") {
		select.parentNode.classList.add("focus");
	}
});

