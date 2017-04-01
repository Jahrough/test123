<style>
    .header-search>input[type=text] {
    height: 23px;
    }
</style>



<div id="ribbon">

    <span class="ribbon-button-alignment"> 
        <span id="refresh" class="btn btn-ribbon"> <i class="fa fa-home"></i></span> 
    </span>

    <!-- breadcrumb -->
    <ol class="breadcrumb">
        <li>History</li>
    </ol>
    <!-- end breadcrumb -->


    <!-- input: search field -->
    <form2 action="#ajax/search.html" class="header-search pull-right">

        <input autocomplete="off" id="search-fld" type="text" name="param" placeholder="Enter SSN">
        <!--<input id="search-fld" type="text" name="param" placeholder="Reference ID">-->
        <button type="submit">
            <i class="fa fa-search"></i>
        </button>
    </form2>
    <!-- end input: search field -->

</div>
