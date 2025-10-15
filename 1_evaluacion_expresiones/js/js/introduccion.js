var ul = document.getElementById("lista")
let url ="https://thesimpsonsapi.com/api/"
let arr_original = []
var lis = ""

var getLista = (page) =>{
    fetch(url+"characters?page="+page).then(response=>{
    if(!response.ok){
        console.log("Error en la red")
    }
    return response.json()
    }).then(data=>{
    console.log("Datos del personaje: ", data)

    data.results.forEach(personaje=>{
        arr_original.push({
            personaje:personaje,
            datos:null
        })
        lis+=`
        <li>
        <img src="https://cdn.thesimpsonsapi.com/500${personaje.portrait_path}" width="200px" />
        <h2>${personaje.name}</h2>
        </li>`
    })
    ul.innerHTML = lis
    console.log("Arreglo Final",arr_original)
    })
}
for(let i = 1;i<=5;i++){
    getLista(i)
}
setTimeout(()=>{
    document.getElementById ("preloader").style.display ="none"
},1000)
const imprimir = (arr) => {
    var todo = "";
    arr.forEach(item=>{
        todo+=`
        <li>
            <img src="https://cdn.thesimpsonsapi.com/500${item.personaje.portrait_path}" width="200px" />
            <h2>${item.personaje.name}</h2>
        </li>`
    })
    ul.innerHTML=todo
}
document.querySelector("#mostrarTodo").addEventListener('click',(evt)=>{
    evt.preventDefault()
    imprimir(arr_original)
})
document.querySelector("#moridos").addEventListener('click',(evt)=>{
    evt.preventDefault()
    let res = arr_original.filter((item)=>item.personaje.status == "Deceased")
    imprimir(res)
})
//EDAD MENOR QUE 18
document.querySelector("#linkEdad").addEventListener('click',(evt)=>{
    
    evt.preventDefault()
    let res = arr_original.filter((item)=>item.personaje.age < 18)
    console.log("Edad",res)
    imprimir(res)
})
document.querySelector("#promedio").addEventListener('click', (evt) => {
    evt.preventDefault();

   
    let filtrados = arr_original.filter(item => item.personaje.age != null && item.personaje.age > 0);

   
    let total = filtrados.reduce((acc, item) => acc + item.personaje.age, 0);
    let promedio = (filtrados.length > 0) ? (total / filtrados.length).toFixed(2) : 0;

    alert("El promedio de edad es: " + promedio);
});
document.querySelector('#ordenarEdad').addEventListener('click',(evt)=>{
    evt.preventDefault()
    let Edad = arr_original.filter((item)=>item.personaje.age !=null && item.personaje.age > 0);

    Edad.sort((a,b) => a.personaje.age - b.personaje.age);

    console.log("El orden es: " + Edad)
    imprimir(Edad)
})
document.querySelector('#viejo_joven').addEventListener('click', (evt) => {
    evt.preventDefault();
    let Edad = arr_original.filter((item)=>item.personaje.age !=null && item.personaje.age > 0);

    Edad.sort((a,b) => a.personaje.age - b.personaje.age);
    
    let joven = Edad[0];
    let viejo =Edad[Edad.length -1];
   
    imprimir([viejo, joven]);

});

document.querySelector('#viejo_joven').addEventListener('click', (evt) => {
    evt.preventDefault();
    let Edad = arr_original.filter((item)=>item.personaje.age !=null && item.personaje.age > 0);

    Edad.sort((a,b) => a.personaje.age - b.personaje.age);
    
    let joven = Edad[0];
    let viejo =Edad[Edad.length -1];
   
    imprimir([viejo, joven]);

});

document.querySelector('#estudiantes').addEventListener('click', (evt) => {
    evt.preventDefault();

    
    let estudiantes = arr_original.filter(item => 
        item.personaje.occupation &&
        item.personaje.occupation.toLowerCase().includes("student")
    );

    imprimir(estudiantes);
});

document.querySelector('#nacimiento').addEventListener('click', (evt) => {
    evt.preventDefault();

    
    let nacidosAntes = arr_original.filter(item => {
        
        if (!item.personaje.birthdate) return false;

        
        let fechaNacimiento = new Date(item.personaje.birthdate);
        let limite = new Date("1980-02-01");

        return fechaNacimiento < limite;
    });

    imprimir(nacidosAntes);
});

document.querySelector('#buscador').addEventListener('input', (evt) => {
    let texto = evt.target.value.toLowerCase().trim();

    if (texto === "") {
        imprimir(arr_original);
        return;
    }

    let coincidencias = arr_original.filter(item =>
        item.personaje.phrases &&
        item.personaje.phrases.some(frase =>
            frase.toLowerCase().includes(texto)
        )
    );

    imprimir(coincidencias);
});




/*
Moridos
Promedio de edad
ordenar por edad ASC
Mostrar el mas viejo y el mas joven 
Mostrar los que son estudiantes
Mostrar los items la fecha de nacimiento sea < 1980/02/01
Buscador por frases 
 */