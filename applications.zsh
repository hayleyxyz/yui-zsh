function phpstorm {
  open -b com.jetbrains.PhpStorm $@
}

function ida {
  open -b com.hexrays.ida $@
}

function ida64 {
  open -b com.hexrays.ida64 $@
}

function vc {
  open -b com.microsoft.VSCode $@
}

function code {
  vc $@
}

function synalyze {
  open -b com.synalyze-it.SynalyzeItPro $@
}