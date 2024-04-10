using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using WebApplication1.Models;

namespace WebApplication1.Controllers
{
    public class AnimalController : Controller
    {
        List<Animal> lista;
        public AnimalController()
        {
            lista = new List<Animal>();
            lista.Add(new Animal() { Especie = "Cachorro", Cor = "Cinza", Genero = false, Idade = 5, Raca = "Border Collie" });
            lista.Add(new Animal() { Especie = "Peixe", Cor = "Listrado", Genero = true, Idade = 1, Raca = "Palhaço"});
            lista.Add(new Animal() { Especie = "Galinha", Cor = "Pintadinha", Genero = true, Idade = 10, Raca = "D'angola"});
            lista.Add(new Animal() { Especie = "Ornitorrinco", Cor = "Branco Preto", Genero = true, Idade = 169, Raca="Mamifero"});


        }
        // GET: Animal
        public ActionResult Index()
        {
            return View("Index", lista);
        }

        // GET: Animal/Details/5
        public ActionResult Details(int id)
        {
            return View("Details", lista[id]);
        }

        // GET: Animal/Create
        public ActionResult Create()
        {
            return View();
        }

        // POST: Animal/Create
        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Animal/Edit/5
        public ActionResult Edit(int id)
        {
            return View();
        }

        // POST: Animal/Edit/5
        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        // GET: Animal/Delete/5
        public ActionResult Delete(int id)
        {
            return View();
        }

        // POST: Animal/Delete/5
        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }
    }
}
