
window.addEventListener("load", ()=>{
    // Enable hljs in cpp mode for every (inline) <code> tag
    document.querySelectorAll(':not(pre) > code').forEach(
        e=>hljs.highlightBlock(e)
    );
}, false);