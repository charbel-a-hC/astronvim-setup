return {
  "goolord/alpha-nvim",
  opts = function(_, opts) -- override the options using lazy.nvim
    opts.section.header.val = { -- change the header section value
      "          _____                    _____                    _____                    _____          ",
      "         /\\    \\                  /\\    \\                  /\\    \\                  /\\    \\         ",
      "        /::\\____\\                /::\\____\\                /::\\    \\                /::\\____\\        ",
      "       /::::|   |               /:::/    /                \\:::\\    \\              /::::|   |        ",
      "      /:::::|   |              /:::/    /                  \\:::\\    \\            /:::::|   |        ",
      "     /::::::|   |             /:::/    /                    \\:::\\    \\          /::::::|   |        ",
      "    /:::/|::|   |            /:::/____/                      \\:::\\    \\        /:::/|::|   |        ",
      "   /:::/ |::|   |            |::|    |                       /::::\\    \\      /:::/ |::|   |        ",
      "  /:::/  |::|   | _____      |::|    |     _____    ____    /::::::\\    \\    /:::/  |::|___|______  ",
      " /:::/   |::|   |/\\    \\     |::|    |    /\\    \\  /\\   \\  /:::/\\:::\\    \\  /:::/   |::::::::\\    \\ ",
      "/:: /    |::|   /::\\____\\    |::|    |   /::\\____\\/::\\   \\/:::/  \\:::\\____\\/:::/    |:::::::::\\____\\",
      "\\::/    /|::|  /:::/    /    |::|    |  /:::/    /\\:::\\  /:::/    \\::/    /\\::/    / ~~~~~/:::/    /",
      " \\/____/ |::| /:::/    /     |::|    | /:::/    /  \\:::\\/:::/    / \\/____/  \\/____/      /:::/    / ",
      "         |::|/:::/    /      |::|____|/:::/    /    \\::::::/    /                       /:::/    /  ",
      "         |::::::/    /       |:::::::::::/    /      \\::::/____/                       /:::/    /   ",
      "         |:::::/    /        \\::::::::::/____/        \\:::\\    \\                      /:::/    /    ",
      "         |::::/    /          ~~~~~~~~~~               \\:::\\    \\                    /:::/    /     ",
      "         /:::/    /                                     \\:::\\    \\                  /:::/    /      ",
      "        /:::/    /                                       \\:::\\____\\                /:::/    /       ",
      "        \\::/    /                                         \\::/    /                \\::/    /        ",
      "         \\/____/                                           \\/____/                  \\/____/         ",
    }
  end,
}

