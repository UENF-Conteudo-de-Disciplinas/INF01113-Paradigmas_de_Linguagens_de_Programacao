// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         02/set/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      42-sinais.sce                      %
// %--------------------------------------------------%
clc; clear;
mprintf("\n UENF-CCT-LCMAT-Ciencia da Computacao\n");
Aluno = "João Vítor Fernandes Dias";
printf("Aluno: %s - Campos %s\n\n", Aluno, date());


// ======> Assunto: SINAIS   =============================

function ASCV_Sobre()
  msg = msprintf(gettext(...
    "Interface desenvolvida na UENF (CCT - LCMAT - CC)" + ...
    "\nAutor: Prof. Ausberto S. Castro Vera," + ...
    "\nCopyright (C) 2008-2021 ASCV-UENF" ...
  ));
  messagebox(msg, gettext("Autor"), "info", "modal");
endfunction

function output = getFormula(A, multPi, f)
  output = string(A) + '*sin(' + string(multPi) + '*Pi*' + string(f) + '*t)'
endfunction

t=0:0.01:2;    // tempo
fig1=scf(1);
clf;

//------------------------ COEFICIENTES DOS SINAIS ------------------------------


Eq1 = "A*sin(multPi * PI * f1 * t)";

itens=["A1";"multPi1";"f1";"A2";"multPi2";"f2";"A3"];

[ok,A1,multPi1,f1,A2,multPi2,f2,A3]=getvalue(...
    [...
      'UENF - Prof. Ausberto S. Castro V. - 2021';
      'Aluno: ' + Aluno;
      'FUNÇÕES:';
      Eq1...
    ],...
    itens,...
    list("vec",1,"vec",1,"vec",1,"vec",1,"vec",1,"vec",1,"vec",1), ...
    ["1";"2";"1";"1/3";"2";"3";"4"] ...
  );


A3 = A3/%pi;

//------------------------ Sinal 1 ------------------------------
  sinal1 = A1*sin(multPi1*%pi*f1*t);
  formulaSinalA = getFormula (A1, multPi1, f1)
  subplot(211);
  plot(t, sinal1, "magenta");
  a=get("current_axes");
  a.axes_visible="on";
  a.grid=[2,2];
  a.box="off";
  a.grid=[1 6 3];
  xtitle('SINAL A: ' + formulaSinalA);
  h1=gcf();
  h1.figure_name='UENF Telecomunicações: Sinais Analogicos - ' + Aluno;
  h1.position =[200 200 630 600];

  // Remove menus originais do Scilab
    delmenu(h1.figure_id,gettext("&File"));
    delmenu(h1.figure_id,gettext("&Tools"));
    delmenu(h1.figure_id,gettext("&Edit"));
    delmenu(h1.figure_id,gettext("&?"));
    toolbar(h1.figure_id,'off');
  // Novas opcoes de menu
    hop1 = uimenu("parent",h1, "label",gettext("Arquivo"));
    hop2 = uimenu("parent",h1, "label",gettext("Sobre"));
  // Menu: Arquivo (remover janela grafica)
    uimenu("parent",hop1, "label",gettext("Fechar"), "callback", "close(h1)");
  // Menu: Sobre
    uimenu("parent",hop2, "label",gettext("Autor da Interface"), "callback","ASCV_Sobre();");
  // Sleep to guarantee a better display (avoiding to see a sequential display)
    sleep(500);
//-------------------------- Sinal 2 ----------------------------
  sinal2 = A2*sin(multPi2*%pi*f2*t);
  formulaSinalB = getFormula (A2, multPi2, f2)
  subplot(212);
  plot(t, sinal2, "blue");
  a=get("current_axes");
  a.axes_visible="on";
  a.grid=[2,2];
  a.box="off";
  a.grid=[1 6 3];
  xtitle('Sinal B:' + formulaSinalB);

//--------------------- Sinal 1 + Sinal 2 ---------------------------------
  fig2=scf(2);
  sinal3 = A3*(sinal1 + sinal2);
  plot(t, sinal3, "red");
  g=gcf();
  g.figure_name='UENF 2021-ASCV - Composição de Sinais Analogicos - '+Aluno;
  g.position =[600 200 630 520];

  // Remove menus originais do Scilab
    delmenu(g.figure_id,gettext("&File"));
    delmenu(g.figure_id,gettext("&Tools"));
    delmenu(g.figure_id,gettext("&Edit"));
    delmenu(g.figure_id,gettext("&?"));
    toolbar(g.figure_id,'off');

    a=get("current_axes");
    a.axes_visible="on";
    a.grid=[2,2];
    a.box="off";
    a.grid=[1 6 3];
  xtitle('SINAL A + B : (4/Pi)[' + formulaSinalA + ' + ' + formulaSinalB + ']');

disp('Execução terminada...!')    //  mensagem para a janela de comandos!!!