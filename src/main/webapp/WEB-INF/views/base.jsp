<link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
    body{
    padding: 0;
    margin:0;
    font-family: Montserrat;
    overflow-y: scroll;
    }
    body::-webkit-scrollbar {
        display: none;
    }
a{
    color: inherit;
    text-decoration: none;
}
.navbar {
    display: flex;
    justify-content: space-between;
    flex-direction: column;
    list-style-type: none;
    margin: 0;
    padding: 0;
    width: 6.5%;
    background-color: #081217;
    position: fixed;
    height: 100%;
    overflow: auto;
    color: #d0d0d0;
    text-align: center;
}
.navbar .content p{
    font-size: 11px;
    cursor:pointer;
}
.navbar h3{
    font-size: 10vm;
}
.container{
    margin-left: 6.5%;
}
.container .context{
    margin-left: 2%;
}

</style>
<div class = "navbar">
    <h3>Paatavik</h3>
    <div class="content">
        <p>
        <span class="material-icons">home</span><br>
        Home</p>
        <p>
        <span class="material-icons">map</span><br>
        Map</p>
        <p><span class="material-icons">place</span><br>
        Places</p>
        <p><span class="material-icons">explore</span><br>
        Explore</p>
        <p><span class="material-icons">person</span><br>
        Profile</p>
    </div>
    <a style="margin-bottom: 5%;"><span class="material-icons">logout</span><br>Logout</a>
</div>