-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.api.nvim_create_user_command("ZTMColors", function(opts)
  vim.cmd([[
  colorscheme vscode
  set background=light
  LspStop
  " ZTM red
  highlight String guifg=#f51767
  highlight Character guifg=#f51767
  highlight @string guifg=#f51767
  highlight @character guifg=#f51767

  " ZTM blue
  highlight @CmpItemKindInterface guifg=#4c0ffb
  highlight @CmpItemKindText guifg=#4c0ffb
  highlight @CmpItemKindVariable guifg=#4c0ffb
  highlight @boolean guifg=#4c0ffb
  highlight @constant guifg=#4c0ffb
  highlight @field guifg=#4c0ffb
  highlight @label guifg=#4c0ffb
  highlight @parameter guifg=#4c0ffb
  highlight @parameter.reference guifg=#4c0ffb
  highlight @property guifg=#4c0ffb
  highlight @tag.attribute guifg=#4c0ffb
  highlight @variable guifg=#4c0ffb
  highlight @variable.builtin guifg=#4c0ffb
  highlight Boolean guifg=#4c0ffb
  highlight Constant guifg=#4c0ffb
  highlight Identifier guifg=#4c0ffb
  highlight Variable guifg=#4c0ffb
  highlight cssProp guifg=#4c0ffb
  highlight htmlArg guifg=#4c0ffb
  highlight jsDestructuringBlock guifg=#4c0ffb
  highlight jsFuncArgs guifg=#4c0ffb
  highlight jsModuleKeyword guifg=#4c0ffb
  highlight jsObjectKey guifg=#4c0ffb
  highlight jsObjectProp guifg=#4c0ffb
  highlight jsObjectValue guifg=#4c0ffb
  highlight jsParen guifg=#4c0ffb
  highlight jsParenIfElse guifg=#4c0ffb
  highlight jsSpreadExpression guifg=#4c0ffb
  highlight jsSpreadOperator guifg=#4c0ffb
  highlight jsonKeyword guifg=#4c0ffb
  highlight texBeginEndName guifg=#4c0ffb
  highlight texDocTypeArgs guifg=#4c0ffb
  highlight typescriptBlock guifg=#4c0ffb
  highlight typescriptCase guifg=#4c0ffb
  highlight typescriptCastKeyword guifg=#4c0ffb
  highlight typescriptConditionalParen guifg=#4c0ffb
  highlight typescriptDOMDocProp guifg=#4c0ffb
  highlight typescriptDefault guifg=#4c0ffb
  highlight typescriptES6SetProp guifg=#4c0ffb
  highlight typescriptEndColons guifg=#4c0ffb
  highlight typescriptExceptions guifg=#4c0ffb
  highlight typescriptFuncCallArg guifg=#4c0ffb
  highlight typescriptFuncComma guifg=#4c0ffb
  highlight typescriptIndexExpr guifg=#4c0ffb
  highlight typescriptLabel guifg=#4c0ffb
  highlight typescriptLoopParen guifg=#4c0ffb
  highlight typescriptModule guifg=#4c0ffb
  highlight typescriptObjectLiteral guifg=#4c0ffb
  highlight typescriptParenExp guifg=#4c0ffb
  highlight typescriptTemplateSubstitution guifg=#4c0ffb
  highlight typescriptVariable guifg=#4c0ffb
  highlight typescriptVariableDeclaration guifg=#4c0ffb
  highlight typescriptVariableDeclaration guifg=#4c0ffb

  " gray
  highlight @comment guifg=#959595
  ]])
end, { nargs = 0 })
