function deleteCommentAndLogo() {
    try{
        document.getElementsByClassName('_30BbATRhFv3V83DHNDjJAO')[0].innerHTML = ""
        
    }
    catch(err) {
        
    }

    try{
        document.getElementsByClassName('_2l7c_Oz0UVsamALvPrlznq')[0].innerHTML = ""
    }
    catch(err) {

    }
}

chrome.storage.sync.get(['userData'], function(result) {
    whiteList = [];
    blackList = [];
    if (result.userData != undefined)
    {
        whiteList = result.userData.whiteList;
        blackList = result.userData.blackList;
    }


    pathName = window.location.pathname;

    // check if not a comment section, and not a whitelisted subreddit
    if (pathName != null )
    {
        if (pathName.includes("comments"))
        {
            // check the blacklist to see
            blackList.forEach(element => {
                if (pathName.toLowerCase().includes("/r/" + element.toLowerCase()))
                {
                    window.location.href = "https://indianmemetemplates.com/wp-content/uploads/Bhai-kya-kar-raha-hai-tu.jpg";
                }
            })
        }
        else
        {
            console.log("2");
            // check each member of the whitelist, if the website isn't there, block it
            willBlock = true;
            whiteList.forEach(element => {
                if (pathName.toLowerCase().includes("/r/" + element.toLowerCase()))
                {
                    willBlock = false;
                }
            })
            
            // I need to do testing to see if this works, because it could very well not work
            if (willBlock)
            {
                window.location.href = "https://indianmemetemplates.com/wp-content/uploads/Bhai-kya-kar-raha-hai-tu.jpg";
            }
        }
    }
    else
    {
        window.location.href = "https://indianmemetemplates.com/wp-content/uploads/Bhai-kya-kar-raha-hai-tu.jpg";
    }

    setInterval(deleteCommentAndLogo, 500)
});
