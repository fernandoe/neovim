return {
  "https://github.com/nvim-pack/nvim-spectre",
  opts = {
    replace_engine = {
      ["sed"] = {
        cmd = "sed",
        args = {
          "-i",
          "",
          "-E",
        },
      },
    },
  },
}
