-- Find and remove the hardcoded section numbers from section titles.
--
-- This is useful when using a format's native section numbering instead,
-- for example, in LaTeX or ConTeXt. (For consistency with numbered references,
-- the format has to be set up to reproduce the 0.0 numbering scheme.)
-- Also useful when producing a PDF without section numbering for
-- public consumption, rather than for editors and reviewers.

function Header(el)
    local firstWord = el.content[1].c
    if string.match(firstWord, "%d") then
        -- the title starts with a hardcoded digit

        -- remove the first token, and the space after
        el.content:remove(1)    -- the section numbering
        el.content:remove(1)    -- the leftover space before title
        return el   -- return changed header
    else
        -- title has no hardcoded numbers (e.g. "Version x.x")
        return nil  -- i.e., no change
    end
end
