#import "Class.typ": *


#show: ieee.with(
  title: [#text(smallcaps("Lab #3: Web Application with Genie"))],
  /*
  abstract: [
    #lorem(10).
  ],
  */
  authors:
  (
   

    
    (
      name: "mohamed Ayoub bchedhli",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "abc",
    ),
    (
      name: "Mouhamed Rayen dhaouadi ",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "abc",
    ),
 

  )
  // index-terms: (""),
  // bibliography-file: "Biblio.bib",
)

= our work
In this lab, we created a basic web application using *Genie* framework in Julia. The application will allow us to control the behaviour of a sine wave, given some adjustble parameters. we carried out this lab using the REPL as in @fig:repl.

#figure(
	image("Images/REPL.png", width: 100%, fit: "contain"),
	caption: "Julia REPL"
	) <fig:repl>

#exo[Sine Wave Control][We provide the Julia and HTML codes to build and run a web app that allows us to control the amplitude,frequency,phase and offset of a sine wave. *Plotly* is used to plot the corresponding graph. We also added a slider to change the number of samples,slider to control the phase and slider to control the offset used to draw the figure. The latter setting permits to grasp the influence of sampling frequency on the look of our chart.]

*Sine Wave Control*
#let code=read("../Codes/web-app/app.jl")
#raw(code, lang: "julia")

*html program*
#let code=read("../Codes/web-app/app.jl.html")
#raw(code, lang: "html")

```zsh
julia --project
```

```julia
julia> using GenieFramework
julia> Genie.loadapp() # Load app
julia> up() # Start server
```

We can now open the browser and navigate to the link #highlight[#link("localhost:8000")[localhost:8000]]. We will get the graphical interface as in .

#figure(
	image("Images/Genie-sinewave.png", width: 100%),
	caption: "Genie -> Sine Wave",
)  .



