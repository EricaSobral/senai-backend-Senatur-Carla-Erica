﻿using Microsoft.AspNetCore.Mvc;
using Senai.Senatur.WebApi.Domains;
using Senai.Senatur.WebApi.Interfaces;
using Senai.Senatur.WebApi.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace Senai.Senatur.WebApi.Controllers
{

    [Produces("application/json")]
    [Route("api/[controller]")]
    [ApiController]

    public class PacotesController : ControllerBase
    {
        private IPacotesRepository _pacotesRepository;

        public PacotesController()
        {
            _pacotesRepository = new PacotesRepository();
        }

        [HttpGet]
        public IActionResult Get()
        {
            return Ok(_pacotesRepository.Listar());
        }

        [HttpGet("{id}")]
        public IActionResult GetById (int id)
        {
            return Ok(_pacotesRepository.BuscarPacotePorId(id));
        }

        [HttpPost]
        public IActionResult Post (Pacotes novoPacote)
        {
            _pacotesRepository.CadastrarPacote(novoPacote);
            return StatusCode(201);
        }

        [HttpPut("{id}")]
        public IActionResult Put(int id, Pacotes atualizaPacote)
        {
            
            _pacotesRepository.AtualizarPacote(id, atualizaPacote);

            return StatusCode(204);
        }

        [HttpDelete("{id}")]
        public IActionResult Delete(int id)
        {
            _pacotesRepository.DeletarPacote(id);

                 return StatusCode(204);
        }

        [HttpGet("Pacotes")]
        public IActionResult GetPacotes()
        {
            return Ok(_pacotesRepository.Listar());
        }

        
        [HttpGet("Pacotes/{id}")]
        public IActionResult Get (int id)
        {
            return Ok(_pacotesRepository.BuscarPacotePorId(id));
        }

    }
}
