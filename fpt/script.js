
    let hien = false; 

    function hienBanner() {
        if (hien == false) {
            document.getElementById('banner').style.display = 'block';
            document.getElementById('nutBanner').innerHTML = 'Ẩn Banner';
            hien = true;
        } else {
            document.getElementById('banner').style.display = 'none';
            document.getElementById('nutBanner').innerHTML = 'Hiện Banner';
            hien = false;
        }
    }

    let listFilm =[
        {
            id:1,
            name:"Mưa đỏ",
            type:"Phim chiếu rạp",
            banner:"350x495-muado.jpg",
            trailer:"https://youtu.be/BD6PoZJdt_M?si=46vmFioW-fri6eyV"

        },

         {
            id:2,
            name:"Connan",
            type:"Phim chiếu rạp",
            banner:"",
            trailer:""

        }
    ];
    let bannerElement = document.getElementsByClassName("banner")[0];
    function viewTrailer() {
        let trailerElemt = document.getElementsByClassName("trailer")[0];
        bannerElement.style.display="none";
        trailerElemt.style.display ="block";
    }
    function chooseFilm(filmId){
        let selectedFilm = listFilm.find(film => film.id === filmId);
        bannerElement.style.backgroundImage = "url('" + selectedFilm.banner + "')";
        filmNationElement.innerText = selectedFilm.nation;
    }
    