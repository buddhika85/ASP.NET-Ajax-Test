function SayHelloAJax()
{
    document.getElementById("qa").innerHTML = "Hello Ajax";
}

// The page load is executed when DOM is loaded
function pageLoad()
{
    SayHelloAJax();
}