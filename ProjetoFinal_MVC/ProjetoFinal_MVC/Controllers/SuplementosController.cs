using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using BaseModel;
using ProjetoFinal_MVC.Models;

namespace ProjetoFinal_MVC.Controllers
{
    public class SuplementosController : Controller
    {
        private ApplicationDbContext db = new ApplicationDbContext();

        // GET: Suplementos
        public ActionResult Index()
        {
            var suplementoes = db.Suplementoes.Include(s => s._Marca);
            return View(suplementoes.ToList());
        }

        // GET: Suplementos/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Suplemento suplemento = db.Suplementoes.Find(id);
            if (suplemento == null)
            {
                return HttpNotFound();
            }
            return View(suplemento);
        }

        // GET: Suplementos/Create
        public ActionResult Create()
        {
            ViewBag.MarcaID = new SelectList(db.Marcas, "MarcaID", "Nome");
            return View();
        }

        // POST: Suplementos/Create
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "SuplementoID,Nome,Descricao,Preco,Validade,Ativo,MarcaID")] Suplemento suplemento)
        {
            if (ModelState.IsValid)
            {
                db.Suplementoes.Add(suplemento);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.MarcaID = new SelectList(db.Marcas, "MarcaID", "Nome", suplemento.MarcaID);
            return View(suplemento);
        }

        // GET: Suplementos/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Suplemento suplemento = db.Suplementoes.Find(id);
            if (suplemento == null)
            {
                return HttpNotFound();
            }
            ViewBag.MarcaID = new SelectList(db.Marcas, "MarcaID", "Nome", suplemento.MarcaID);
            return View(suplemento);
        }

        // POST: Suplementos/Edit/5
        // To protect from overposting attacks, please enable the specific properties you want to bind to, for 
        // more details see http://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "SuplementoID,Nome,Descricao,Preco,Validade,Ativo,MarcaID")] Suplemento suplemento)
        {
            if (ModelState.IsValid)
            {
                db.Entry(suplemento).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.MarcaID = new SelectList(db.Marcas, "MarcaID", "Nome", suplemento.MarcaID);
            return View(suplemento);
        }

        // GET: Suplementos/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Suplemento suplemento = db.Suplementoes.Find(id);
            if (suplemento == null)
            {
                return HttpNotFound();
            }
            return View(suplemento);
        }

        // POST: Suplementos/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Suplemento suplemento = db.Suplementoes.Find(id);
            db.Suplementoes.Remove(suplemento);
            db.SaveChanges();
            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}
