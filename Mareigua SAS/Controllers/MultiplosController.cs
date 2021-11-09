using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using Microsoft.EntityFrameworkCore;
using Datos;
using Persistencia;
using Datos.ViewModel;

namespace Mareigua_SAS.Controllers
{
    public class MultiplosController : Controller
    {
        private readonly MareiguaDbContext _context;

        public MultiplosController(MareiguaDbContext context)
        {
            _context = context;
        }


        public IActionResult Index()
        {
            return View();
        }


        
        public async Task<IActionResult> ListarNumeros()
        {
            if (!ModelState.IsValid)
            {
                return RedirectToAction("Index");
            }

            try
            {
                var registros = _context.Multiplos.ToList();

                if (registros.Count() > 0)
                {
                    foreach (var item in registros)
                    {
                        var multiplo = _context.Multiplos.FindAsync(item.MultiploId);
                        _context.Multiplos.Remove(item);
                        await _context.SaveChangesAsync();
                    }
                    
                }

                //Escribir números del 1 al 100.
                var DesdeNum = 1;
                var HastaNum = 101;

                List<Multiplo> listaNumeros = new List<Multiplo>();

                for (var MT = DesdeNum; MT < HastaNum; MT++)
                {
                    Multiplo numeroF = new Multiplo();

                    numeroF.Numero = MT;
                                        
                    if (numeroF.Numero % 3 == 0 && numeroF.Numero % 5 == 0)
                    {
                        numeroF.Mensaje = "mareigua";
                        numeroF.MultiploDe = "Múltiplo de: 3 y 5";
                    }
                    else if (numeroF.Numero % 3 == 0)
                    {
                        numeroF.Mensaje = "mare";
                        numeroF.MultiploDe = "Múltiplo de: 3";
                    }
                    else if (numeroF.Numero % 5 == 0)
                    {
                        numeroF.Mensaje = "igua";
                        numeroF.MultiploDe = "Múltiplo de: 5";
                    }
                    else
                    {
                        numeroF.Mensaje = "N/A";
                        numeroF.MultiploDe = "N/A";
                    }

                    _context.Multiplos.Add(numeroF);
                    await _context.SaveChangesAsync();

                }
                return View(await _context.Multiplos.ToListAsync());
            }
            catch (Exception)
            {
                return RedirectToAction("Index");
            }            
        }


        public IActionResult NumeroMasGrande(int numDesde, int numHasta)
        {
            if (!ModelState.IsValid)
            {
                return RedirectToAction("Index");
            }

            try
            {
                //Escribir array
                var nDesde = numDesde;
                var nHasta = numHasta;

                Multiplo numeroF1 = new Multiplo();

                var Max = 0;

                for (var MT1 = nDesde; MT1 < (nHasta + 1); MT1++)
                {
                    numeroF1.Numero = MT1;
                                        
                    if (numeroF1.Numero > Max)
                    {
                        Max = MT1;
                        ViewData["Mensaje"] = "El número mayor para el rango de " + nDesde + " a " + nHasta + "  es el número: " + Max;
                    }
                }             
                return View(numeroF1);
            }
            catch (Exception ex)
            {
                Console.WriteLine("El proceso de listar los números: {0}", ex.Message);
                return View();
            }
        }



        public IActionResult NumeroMasGrandeArray(int num1, int num2, int num3, int num4)
        {
            if (!ModelState.IsValid)
            {
                return RedirectToAction("Index");
            }

            try
            {
                var Max = 0;

                int[] myRango = new int[4] { num1, num2, num3, num4 };

                for (int MT2 = 0; MT2 < myRango.Length; MT2++)
                {
                    if (myRango[MT2] > Max)
                    {
                        Max = myRango[MT2];
                        ViewData["Mensaje"] = "El número mayor entre los valores: " + num1 + ", " + num2 + ", " + num3 + ", " + num4 + "  es el número: " + Max;
                    }
                }
                return View();
            }
            catch (Exception ex)
            {
                Console.WriteLine("El proceso de listar los números: {0}", ex.Message);
                return View();
            }
        }



        public IActionResult ReversarCadena()
        {  
            return View();
        }


        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult ReversarCadena(string Texto)
        {
            if (!ModelState.IsValid)
            {
                return RedirectToAction("Index");
            }

            try
            {
                string[] stringArray = new string[Texto.Length];
                string textoReversadodo = "";
                var cantT = Texto.Length - 1;

                for (int MT3 = 0;  MT3 < Texto.Length;  MT3++)
                {   
                    var letra = Texto[MT3];
                    stringArray[cantT] = letra.ToString();

                    cantT = cantT - 1;
                    textoReversadodo = stringArray[cantT + 1] + textoReversadodo;

                    ViewData["CadenaO"] = Texto;
                    ViewData["CadenaR"] = textoReversadodo;
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine("El proceso de listar los números: {0}", ex.Message);
                return View();
            }

            return View();
        }


    }
}
