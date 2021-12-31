<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link rel="stylesheet" href="http://localhost:9090/css/places.css">
<style>
    .cardContent{
    margin-left:6.8%;
    padding:1px 16px;
    height:100%;
    padding-top:4%;
    /*position:fixed;*/
    font-family: Montserrat, sans-serif;
}

    .card{
        max-width:270px;
        min-height: 350px;
        border-radius: 5%;
        box-shadow: 0px 3px 6px #3a3a3a;
        cursor: pointer;
        transition: 0.5s ease;
    }

    .cards :hover{
        transform: scale(1.05);
        box-shadow: 5px 5px 10px #2e2f29;
    }

    .card .caption {
        background: #2c2c2c;
        padding: 16px;
        border-bottom-left-radius: 15px;
        border-bottom-right-radius: 15px;
        color: #fff;
        text-align: center;
    }
    .cards{
        display: flex;
        flex-direction: row;
        gap:50px;
        flex-wrap: wrap;
    }

</style>
<jsp:include page="base.jsp" />

<div class="cardContent">
    <img class="placesImg"><br><br><br>
    <div class="cards">
 <c:forEach var="cardData" items="${data}">
    <div class="card" onclick="window.location='/city?city=${cardData.city}'">
        <img src="../images/visakhapatnam.jpg" width="270" height="300" style="border-top-left-radius: 5%;
            border-top-right-radius: 5%;"><br>
        <div class="caption">
            ${cardData.city}
         </div>
    </div>

 </c:forEach>
    </div>
    <br><br>
</div>
