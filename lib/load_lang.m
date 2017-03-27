function langlist = load_lang(langid)
% LOAD LANG
% Carga las entradas de idioma.
%
% Author: Pablo Pizarro @ppizarror.com, 2017.
%
% This program is free software; you can redistribute it and/or
% modify it under the terms of the GNU General Public License
% as published by the Free Software Foundation; either version 2
% of the License, or (at your option) any later version.
%
% This program is distributed in the hope that it will be useful,
% but WITHOUT ANY WARRANTY; without even the implied warranty of
% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
% GNU General Public License for more details.
%
% You should have received a copy of the GNU General Public License
% along with this program; if not, write to the Free Software
% Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

%% Constants
LANG_AVAIABLE_LANGUAGES = 2; % Espa�ol, English
LANG_ENTRIES = 70; % Total language entries on cell structure

%% Check if langid is valid
if ~(1 <= langid && langid <= LANG_AVAIABLE_LANGUAGES)
    error('Invalid langid');
end

%% Create a list of data
list = cell(LANG_ENTRIES, 1);
for j = 1:LANG_ENTRIES
    list{j} = cell(1, LANG_AVAIABLE_LANGUAGES);
end

%% Add lang strings
list{1, 1} = 'Select acceleration file';
list{1, 2} = 'Seleccionar archivo de aceleraciones';

list{2, 1} = 'Close app';
list{2, 2} = 'Cerrar app';

list{3, 1} = 'Acceleration plots';
list{3, 2} = 'Gr�ficos de aceleraciones';

list{4, 1} = 'AVERAGE SH/SV';
list{4, 2} = 'SH/SV PROMEDIO';

list{5, 1} = 'Iteration plots';
list{5, 2} = 'Gr�ficos de iteraciones';

list{6, 1} = 'Processing (%.1f%%)';
list{6, 2} = 'Procesando (%.1f%%)';

list{7, 1} = 'Select two points to create several windows (N-S)';
list{7, 2} = 'Seleccione dos puntos para crear las ventanas (N-S)';

list{8, 1} = 'Acceleration file (*.txt)';
list{8, 2} = 'Archivo de aceleraci�n (*.txt)';

list{9, 1} = 'Please select a file';
list{9, 2} = 'Porfavor seleccione un archivo';

list{10, 1} = 'Please check that N-S (_N), E-W (_E) y Z (_Z) files exist in the same folder.';
list{10, 2} = 'Porfavor revise que los archivos N-S (_N), E-W (_E) y Z (_Z) existan en la misma carpeta.';

list{11, 1} = 'Error';
list{11, 2} = 'Error';

list{12, 1} = 'An error has occurred while loading the files.';
list{12, 2} = 'Un error ocurri� mientras se cargaban los archivos.';

list{13, 1} = 'Data must have the same size of elements.';
list{13, 2} = 'Los datos deben tener la misma cantidad de elementos.';

list{14, 1} = 'Data error';
list{14, 2} = 'Error de datos';

list{15, 1} = 'File error';
list{15, 2} = 'Error de archivos';

list{16, 1} = 'If region is not selected process cant continue.';
list{16, 2} = 'Si la regi�n no se ha seleccionado no se puede continuar.';

list{17, 1} = 'Time (s)';
list{17, 2} = 'Tiempo (s)';

list{18, 1} = 'Acceleration (g)';
list{18, 2} = 'Aceleraci�n (g)';

list{19, 1} = 'Enter window time properties';
list{19, 2} = 'Ingrese las propiedades temporales de las ventanas';

list{20, 1} = 'Window time move (s)';
list{20, 2} = 'Movimiento temporal de las ventanas (s)';

list{21, 1} = 'Window time size - Max: %.1f (s)';
list{21, 2} = 'Tama�o de las ventanas - Max: %.1f (s)';

list{22, 1} = 'Values must be numerical.';
list{22, 2} = 'Los valores deben ser num�ricos.';

list{23, 1} = 'Value Error';
list{23, 2} = 'Error de valores';

list{24, 1} = 'Region limits cant be the same.';
list{24, 2} = 'Los l�mites de la regi�n no pueden ser id�nticos.';

list{25, 1} = 'Maximum frequency: %.3f [Hz]';
list{25, 2} = 'Frecuencia m�xima: %.3f [Hz]';

list{26, 1} = 'Maximum SH/SV: %.3f';
list{26, 2} = 'M�ximo SH/SV: %.3f';

list{27, 1} = 'Total iterations: %d';
list{27, 2} = 'N�mero de iteraciones: %d';

list{28, 1} = 'Execution time: %.1f [s]';
list{28, 2} = 'Tiempo de ejecuci�n: %.1f [s]';

list{29, 1} = 'Process finished';
list{29, 2} = 'Proceso finalizado';

list{30, 1} = 'SH/SV v/s f';
list{30, 2} = 'SH/SV v/s f';

list{31, 1} = 'Frequency (Hz)';
list{31, 2} = 'Frecuencia (Hz)';

list{32, 1} = 'SH/SV';
list{32, 2} = 'SH/SV';

list{33, 1} = 'File';
list{33, 2} = 'Archivo';

list{34, 1} = 'Edit';
list{34, 2} = 'Edici�n';

list{35, 1} = 'Help';
list{35, 2} = 'Ayuda';

list{36, 1} = 'New';
list{36, 2} = 'Nuevo';

list{37, 1} = 'Export results';
list{37, 2} = 'Exportar resultados';

list{38, 1} = 'See manual';
list{38, 2} = 'Ver el manual';

list{39, 1} = 'About';
list{39, 2} = 'Acerca de';

list{40, 1} = 'Author: Pablo Pizarro @ppizarror.com, 2017.';
list{40, 2} = 'Autor: Pablo Pizarro @ppizarror.com, 2017.';

list{41, 1} = 'Thanks to: Felipe Ochoa.';
list{41, 2} = 'Agradecimientos a: Felipe Ochoa.';

list{42, 1} = 'HOVSR is a Matlab app that calculates h/v spectrum ratio.';
list{42, 2} = 'HOVSR es una app en Matlab que calcula la raz�n espectral h/v.';

list{43, 1} = 'Licence: GLP-2.0';
list{43, 2} = 'Licencia: GPL-2.0';

list{44, 1} = 'Project website: https://github.com/ppizarror/HOVSR';
list{44, 2} = 'Web del proyecto: https://github.com/ppizarror/HOVSR';

list{45, 1} = 'Software version: %.1f';
list{45, 2} = 'Versi�n del software: %.1f';

list{46, 1} = 'Text file (*.txt)';
list{46, 2} = 'Archivo de texto (*.txt)';

list{47, 1} = 'Export results as';
list{47, 2} = 'Exportar resultados como';

list{48, 1} = 'Results are not calcualted.';
list{48, 2} = 'Los resultados no existen.';

list{49, 1} = 'Fatal Error';
list{49, 2} = 'Error Fatal';

list{50, 1} = 'Error when saving results.';
list{50, 2} = 'Error al guardar los resultados.';

list{51, 1} = 'Results saved successfully';
list{51, 2} = 'Archivo guardado correctamente';

list{52, 1} = 'Process completed';
list{52, 2} = 'Proceso terminado';

list{53, 1} = '(1): Select acceleration files (E-W, N-S and Z), only 3 files.';
list{53, 2} = '(1): Buscar los archivos de aceleraci�n (E-W, N-S y Z), s�lo se pueden seleccionar 3 archivos.';

list{54, 1} = '(2): Select a region of the data to start the process.';
list{54, 2} = '(2): Seleccione una regi�n de los datos para comenzar el proceso.';

list{55, 1} = '(3): Define the window size (in seconds) and the movement of the window.';
list{55, 2} = '(3): Defina el tama�o de la ventana y el movimiento de ella en segundos.';

list{56, 1} = '(4): The iteration process will start and sh/sv vs f plot will apear.';
list{56, 2} = '(4): El proceso de iteraci�n dar� comienzo y se mostrar� el gr�fico de sh/sv vs f.';

list{57, 1} = '(5): Results (f vs sh/sv) can be exported to a file if Export Results button is pressed.';
list{57, 2} = '(5): Los resultados (f vs sh/sv) pueden ser exportados a un archivo si se presiona el boton Exportar Resultados.';

list{58, 1} = 'Manual';
list{58, 2} = 'Manual';

list{59, 1} = 'Operation cancelled by user.';
list{59, 2} = 'Operaci�n cancelada.';

list{60, 1} = 'You must choose 3 files.';
list{60, 2} = 'Debes elegir 3 archivos.';

list{61, 1} = 'An error has occurred while smoothing the spectrum.';
list{61, 2} = 'Ocurri� un error mientras se suavizaba el espectro.';

list{62, 1} = '';
list{62, 2} = '';

list{63, 1} = '';
list{63, 2} = '';

list{64, 1} = '';
list{64, 2} = '';

list{65, 1} = '';
list{65, 2} = '';

list{66, 1} = '';
list{66, 2} = '';

list{67, 1} = '';
list{67, 2} = '';

list{68, 1} = '';
list{68, 2} = '';

list{69, 1} = '';
list{69, 2} = '';

list{70, 1} = '';
list{70, 2} = '';


%% Create list of choise
langlist = cell(LANG_ENTRIES, 1);
for j = 1:LANG_ENTRIES
    langlist{j} = list{j, langid};
end

end

