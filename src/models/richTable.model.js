const richTable =  {
  fields: {
    reunion: {
      idsistemaexterno: {
        title: 'Id sistema externo',
      },
    },
    grabacion: {
      id: {
        title: 'Id',
      },
      playurl: {
        title: 'Play URL',
        format: 'link',
      },
      estadoDescarga: {
        title: 'Lugar grabación',
        format: 'status',
        status: ['Zoom', 'Drive'],
      },
    },
    ocurrencia: {
      starttime: {
        title: 'Fecha de inicio',
      },
      mesOcurrencia: {
        title: 'Mes de ocurrencia',
      },
    },
    archivo: {
      idexterno: {
        title: 'Id externo',
      },
      formato: {
        title: 'Formato',
      },
      url: {
        title: 'Url',
        format: 'link',
      },
      estadoDescarga: {
        title: 'Estado descarga de archivo',
        format: 'status',
        status: ['Descargado', 'Sin descargar'],
      },
    },
  },
}

export default richTable
