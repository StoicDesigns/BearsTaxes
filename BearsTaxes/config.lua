--Add this to line 37 inside of
--ND_CharaterSelection\config.lua
--Bears Taxes
--ND Framework is a REQUIRED dependencie
--config.lua

    departmentTaxes = true,            -- if you would like taxes to be taken out of paychecks, set this to true
    taxInterval = 10,                  -- this is how often (in minutes) taxes are taken out if departmentTaxes is set to true
    departmentTaxes = {                  -- the amount taken from character per interval of time set via taxInterval
        ["CIV"] = 25.22,
        ["SAHP"] = 35.11,
        ["LSPD"] = 25.25,
        ["LSSD"] = 12.51,
        ["LSFD"] = 650.22
    },