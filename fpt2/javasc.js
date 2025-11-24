let listFilm = [
  {
    id: 1,
    name: "Địa Đàng Sụp Đổ",
    type: "Phim lẻ",
    banner: "img/Phimle1.jpg",
    trailer: "https://youtu.be/HCPx2ReKkBg?si=7JVFGW0MvEbdp5G4",
    nation: "Hàn Quốc",
    year: "2025",
    age: "18+",
    hour: "12 tập",
  },
  {
    id: 2,
    name: "Sát Thủ Bóng Đêm",
    type: "Phim lẻ",
    banner: "img/Phimle2.jpg",
    trailer: "#",
    nation: "Mỹ",
    year: "2025",
    age: "18+",
    hour: "24 tập",
  },
  {
    id: 3,
    name: "Thám tử Kiên",
    type: "Phim lẻ",
    banner: "img/Phimle3.jpg",
    trailer: "#",
    nation: "Việt Nam",
    year: "2025",
    age: "18+",
    hour: "8 tập",
  },
  {
    id: 4,
    name: "Bộ Tứ Báo Thủ",
    type: "Phim lẻ",
    banner: "img/Phimle4.jpg",
    trailer: "#",
    nation: "Việt Nam",
    year: "2025",
    age: "18+",
    hour: "32 tập",
  },
  {
    id: 5,
    name: "Bão Trắng 3",
    type: "Phim lẻ",
    banner: "img/Phimle5.jpg",
    trailer: "#",
    nation: "Trung Quốc",
    year: "2025",
    age: "18+",
    hour: "51 tập",
  },
];

let phimHienTai = listFilm[0];

function chooseFilm(id) {
  for (let i = 0 ; i < listFilm.length; i++){
    if (listFilm[i].id == id){
      phimHienTai = listFilm[i];
    }
  }
  document.getElementById("namPhatHanh").innerText = phimHienTai.year;
  document.getElementById("tuoi").innerText = phimHienTai.age;
  document.getElementById("thoiLuong").innerText = phimHienTai.hour;
  document.getElementById("quocGia").innerText = phimHienTai.nation;
  document.getElementsByClassName("banner")[0].src = phimHienTai.banner;
  document.getElementsByClassName("danhsach-tt")[0].style = "display: block";

}


