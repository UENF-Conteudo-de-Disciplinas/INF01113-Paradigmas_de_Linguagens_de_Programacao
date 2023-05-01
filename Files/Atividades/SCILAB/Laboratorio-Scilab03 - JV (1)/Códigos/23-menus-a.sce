// %--------------------------------------------------%
// % UENF-CCT-LCMAT-CC                                %
// % Disciplina:   Paradigmas de Ling. de Programacao %
// % Prof.:        Ausberto S. Castro Vera            %
// % Date:         02/set/2021                        %
// % Aluno:        João Vítor Fernandes Dias          %
// % Arquivo:      23-menus.sce                       %
// %--------------------------------------------------%
clc; clear;
mprintf("\n UENF-CCT-LCMAT-Ciencia da Computacao\n");
Aluno = "João Vítor Fernandes Dias";
printf("Aluno: %s - Campos %s\n\n", Aluno, date());


// ======> Assunto:  GUI - Menus  e Submenus Interativos ==================

// Observe as opçoes do MENU PRINCIPAL da JANELA de COMANDOS..................

//  Cria uma janela grafica: Comando "figure"
h = figure('position', [150 150 600 600],'backgroundcolor', [1 0.97 0.8], ...   // [R G B]      0.0 - 1.0
           "figure_name", "UENF "+Aluno);

//----------------- Funcao -----------------------------------
function graficar3d()
  delete(gca());      // limpa a janela gráfica
  x = 0:0.1:2*%pi;    // Se quiser, pode mudar o incremento para  0.01
  y = 0:0.1:2*%pi;
  z = sin(x')*cos(y);
  plot3d(x,y,z);      // figura 3D
  xtitle('Gráfico TriDimensional');   // titulo do grafico  
  telaUsada =1; 
endfunction;

function graficar2d()
  delete(gca());                      // limpa a janela gráfica
  a = 0:0.1:2*%pi;                    // Se quiser, pode mudar o incremento para  0.01
  plot(a,cos(a),a,sin(a));            // figura 2D
  xtitle('Gráfico Bidimensional');    // titulo do grafico
  telaUsada =1;
endfunction;
//------------------------------------------------------------
function ASCV_Sobre_Modificado()
  msg = msprintf(gettext(...
    "Modificação da interface desenvolvida na UENF (CCT - LCMAT - CC)" + ...
    "\nAutor: Prof. Ausberto S. Castro Vera,"           + ...
    "\nSubautor: João Vítor Fernandes Dias,"             + ...
    "\nCopyright (C) 2008-2021 ASCV-UENF"                 ...
    ));
   messagebox(msg, gettext("Autor"), "info", "modal");
endfunction

///===============  Programa principal  =====================
//elimina o toolbar da janela grafica
toolbar(h.figure_id,'off');

// ------------------
// Passo : Menu da janela Principal
// ------------------
  
// Remove menus originais do Scilab
delmenu(h.figure_id,gettext("&File"));
delmenu(h.figure_id,gettext("&Tools"));
delmenu(h.figure_id,gettext("&Edit"));
delmenu(h.figure_id,gettext("&?"));
toolbar(h.figure_id,"off");

// Novas opcoes de menu
hop1 = uimenu("parent",h, "label",gettext("Fechar arquivo"));
hop2 = uimenu("parent",h, "label",gettext("Mostrar gráficos"));
hop3 = uimenu("parent",h, "label",gettext("Sobre os autores"));

// Menu: Arquivo (remover janela grafica)
uimenu("parent",hop1, "label",gettext("Fechar"), "callback", "close(h)");
// Menu: Graficos
uimenu("parent",hop2, "label",gettext("Gráficos 3D"), "callback", "graficar3d()");   
uimenu("parent",hop2, "label",gettext("Gráficos 2D"), "callback", "graficar2d()");   
// Menu: Sobre
uimenu("parent",hop3, "label",gettext("Autores da Interface"), "callback","ASCV_Sobre_Modificado();");
