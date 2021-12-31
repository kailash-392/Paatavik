<%--suppress ALL --%>
<%--<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">--%>
<%--<meta name="viewport" content="width=device-width, initial-scale=1">--%>
<style>
    img{
        width: 100%;
        height: 60%;
    }
    .chips{
        display: flex;
        gap: 50px;
        flex-direction: row;
    }
    .chip{
        width: 289px;
        height: 97px;
        border-radius: 11px;
        background: #fff;
        box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.51);
        margin-left: 8%;
        padding: 1px;
    }
    .chip .title{
        font-family: Poppins;
        font-weight: bold;
        font-size: 14px;
        text-align: center;
        color: #000;
    }
    .chip p{
        text-align: center;
    }
    .searchBar{
        width: 324px;
        height: 45px;
        border-radius: 30px;
        background: #fff;
        box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.26);
        text-align: left;
        display: flex;
        align-items: center;
        padding-left: 3%;
    }
    .categoryChips{
        display: flex;
        flex-wrap: wrap;
        gap:20px;
    }
    .categoryChip{
        width: 330px;
        height: 120px;
        background: transparent;
        box-shadow: 0px 3px 6px rgba(0, 0, 0, 0.26);
        border-radius: 5%;
        display: flex;
        align-items: center;
        justify-content: center;
        font-family: Poppins;
        font-weight: 600;
    }
</style>
<jsp:include page="base.jsp" />
<div class="container">
    <img src="${data.image}" >
    <div align="center">
<%--        <p style="width: 75%;--%>
<%--         text-align: center;">Visakhapatnam is a port city and industrial center in the Indian state of Andhra Pradesh, on the Bay of Bengal. It's known for its many beaches,--%>
<%--            including Ramakrishna Beach, home to a preserved submarine at the Kursura Submarine Museum. --%>
<%--            Nearby are the elaborate Kali Temple and the Visakha Museum, an old Dutch bungalow housing local maritime and --%>
<%--            historical exhibits</p>--%>
    <p style="width: 75%;">${data.desc}</p>
    </div>
    <br>
    <div class="chips">
        <div class="chip">
            <h3 class="title">Total Projects</h3>
<%--            <p>62 Projects / &#8377; 2,077 Cr.</p>--%>
            <p>${data.projects}</p>
        </div>
        <div class="chip">
            <h3 class="title">Funds Available</h3>
<%--            <p>490 AMOUNT (Rs. CR.)</p>--%>
            <p>${data.funds}</p>
        </div>
        <div class="chip">
            <h3 class="title">State Share Released</h3>
<%--            <p>400 AMOUNT (Rs. CR.)</p>--%>
            <p>${data.shares}</p>
        </div>

    </div>
    <br><br><br><br><br><br>
    <div class="context">
        <h3>Categories</h3>
        <div class="searchBar"><span class="material-icons">search</span>&nbsp; <input placeholder="Search a Category" style="
         outline: none;
         border: none;
         background: transparent;" id="search" onkeyup="filterSearch()"></div>
        <br><br>
        <div class="categoryChips" id = "cc">
            <div class="categoryChip">
                <p>Education &nbsp;<span class="material-icons">school</span></p>
            </div>
            <div class="categoryChip">
                <p>Banking &nbsp;<span class="material-icons">currency_rupee</span></p>
            </div>
            <div class="categoryChip">
                <p>Parks &nbsp;<span class="material-icons">park</span></p>
            </div>
            <div class="categoryChip">
                <p>Movies &nbsp;<span class="material-icons">movie</span></p>
            </div>
            <div class="categoryChip">
                <p>Government &nbsp;<span class="material-icons">account_balance</span></p>
            </div>
            <div class="categoryChip">
                <p>Health Care &nbsp;<span class="material-icons">healing</span></p>
            </div>
            <div class="categoryChip">
                <p>Security &nbsp;<span class="material-icons">security</span></p>
            </div>
            <div class="categoryChip">
                <p>Risk Management &nbsp;<span class="material-icons">local_fire_department</span></p>
            </div>
            <div class="categoryChip">
                <p>Food &nbsp;<span class="material-icons">fastfood</span></p>
            </div>
        </div>
    </div>
    <br><br><br><br><br><br><br><br><br>
</div>
<script>
    function filterSearch() {
        var input, filter, ul, li, a, i, txtValue;
        input = document.getElementById("search");
        filter = input.value.toUpperCase();
        ul = document.getElementById("cc");
        li = ul.getElementsByTagName("div");
        for (i = 0; i < li.length; i++) {
            a = li[i].getElementsByTagName("p")[0];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
</script>