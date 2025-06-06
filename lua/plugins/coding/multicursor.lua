return {
  "jake-stewart/multicursor.nvim",
  enabeld = false,
  branch = "1.0",
  config = function()
    local mc = require("multicursor-nvim")

    mc.setup()

    local map = vim.keymap.set

    -- Add or skip cursor above/below the main cursor.
    map({ "n", "v" }, "<up>", function()
      mc.lineAddCursor(-1)
    end)
    map({ "n", "v" }, "<down>", function()
      mc.lineAddCursor(1)
    end)
    map({ "n", "v" }, "<leader>C<up>", function()
      mc.lineSkipCursor(-1)
    end, { desc = "Skip line up" })
    map({ "n", "v" }, "<leader>C<down>", function()
      mc.lineSkipCursor(1)
    end, { desc = "Skip line down" })

    -- Add or skip adding a new cursor by matching word/selection
    map({ "n", "v" }, "<leader>Cn", function()
      mc.matchAddCursor(1)
    end, { desc = "Match Add Cursor (1)" })
    map({ "n", "v" }, "<leader>Cs", function()
      mc.matchSkipCursor(1)
    end, { desc = "Match Skip Cursor (1)" })
    map({ "n", "v" }, "<leader>CN", function()
      mc.matchAddCursor(-1)
    end, { desc = "Match Add Cursor (-1)" })
    map({ "n", "v" }, "<leader>CS", function()
      mc.matchSkipCursor(-1)
    end, { desc = "Match Skip Cursor (-1)" })

    -- Add all matches in the document
    map({ "n", "v" }, "<leader>CvA", mc.matchAllAddCursors)

    -- You can also add cursors with any motion you prefer:
    -- set("n", "<right>", function()
    --     mc.addCursor("w")
    -- end)
    -- set("n", "<leader>C<right>", function()
    --     mc.skipCursor("w")
    -- end)

    -- Rotate the main cursor.
    map({ "n", "v" }, "<left>", mc.nextCursor)
    map({ "n", "v" }, "<right>", mc.prevCursor)

    -- Delete the main cursor.
    map({ "n", "v" }, "<leader>Cx", mc.deleteCursor, { desc = "Delete cursor" })

    -- Add and remove cursors with control + left click.
    map("n", "<c-leftmouse>", mc.handleMouse)

    -- Easy way to add and remove cursors using the main cursor.
    map({ "n", "v" }, "<c-q>", mc.toggleCursor)

    -- Clone every cursor and disable the originals.
    map({ "n", "v" }, "<leader>C<c-q>", mc.duplicateCursors, { desc = "Duplicate Cursors" })

    map("n", "<esc>", function()
      if not mc.cursorsEnabled() then
        -- mc.enableCursors()
      elseif mc.hasCursors() then
        mc.clearCursors()
      else
        -- Default <esc> handler.
      end
    end)

    -- bring back cursors if you accidentally clear them
    map("n", "<leader>Cgv", mc.restoreCursors, { desc = "Restore Cursors" })

    -- Align cursor columns.
    map("n", "<leader>Ca", mc.alignCursors)

    -- Split visual selections by regex.
    map("v", "S", mc.splitCursors)

    -- Append/insert for each line of visual selections.
    map("v", "I", mc.insertVisual)
    map("v", "A", mc.appendVisual)

    -- match new cursors within visual selections by regex.
    map("v", "M", mc.matchCursors)

    -- Rotate visual selection contents.
    map("v", "<leader>Ct", function()
      mc.transposeCursors(1)
    end)
    map("v", "<leader>CT", function()
      mc.transposeCursors(-1)
    end)

    -- Jumplist support
    map({ "v", "n" }, "<c-i>", mc.jumpForward)
    map({ "v", "n" }, "<c-o>", mc.jumpBackward)

    -- Customize how cursors look.
    local hl = vim.api.nvim_set_hl
    hl(0, "MultiCursorCursor", { link = "Cursor" })
    hl(0, "MultiCursorVisual", { link = "Visual" })
    hl(0, "MultiCursorSign", { link = "SignColumn" })
    hl(0, "MultiCursorDisabledCursor", { link = "Visual" })
    hl(0, "MultiCursorDisabledVisual", { link = "Visual" })
    hl(0, "MultiCursorDisabledSign", { link = "SignColumn" })
  end,
}
