-- f5

return {
  ["f5"] = {
    searingflame = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0.94 0.69 0.83 0.01    0.6 0.34 0.52 0.01    0.33 0.1 0.1 0.01    1 0 0 0.01]],
        directional        = true,
        emitrot            = 4,
        emitrotspread      = 1,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 6,
        particlelife       = 15,
        particlelifespread = 5,
        particlesize       = 20,
        particlesizespread = 4,
        particlespeed      = 2,
        particlespeedspread = 30,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1,
        texture            = [[fire]],
        useairlos          = true,
      },
    },
    searingflame2 = {
      air                = true,
      class              = [[CSimpleParticleSystem]],
      count              = 1,
      ground             = true,
      properties = {
        airdrag            = 1,
        colormap           = [[0.94 0.69 0.83 0.01    0.6 0.34 0.52 0.01    0.33 0.1 0.1 0.01    1 0 0 0.01]],
        directional        = true,
        emitrot            = 3,
        emitrotspread      = 1,
        emitvector         = [[dir]],
        gravity            = [[0, 0, 0]],
        numparticles       = 6,
        particlelife       = 15,
        particlelifespread = 5,
        particlesize       = 7,
        particlesizespread = 0,
        particlespeed      = 2,
        particlespeedspread = 30,
        pos                = [[0, 0, 0]],
        sizegrowth         = 1,
        sizemod            = 1,
        texture            = [[flashside2]],
        useairlos          = true,
      },
    },
    whiteglow = {
      air                = true,
      class              = [[heatcloud]],
      count              = 1,
      ground             = true,
      water              = true,
      properties = {
        heat               = 5,
        heatfalloff        = 1,
        maxheat            = 15,
        pos                = [[0, 0, 0]],
        size               = 5,
        sizegrowth         = 15,
        speed              = [[0, 0, 0]],
        texture            = [[laserendyellow]],
      },
    },
  },

}

