%%% Study Plan %%%
:- discontiguous course/1.
:- discontiguous course/8.
:- discontiguous course_req/2.
% --- 'EIF200' ---
course('EIF200').
course('EIF200', 1, dipl, regular, 3, 'Fundamentos de Informática').
course_req('EIF200', 'Admission').
% --- 'MAY230' ---
course('MAY230').
course('MAY230', 2, dipl, regular, 4, 'Matemática para Informática I').
course_req('MAY230', 'Admission').
% --- 'EstudiosGeneralesI' ---
course('EstudiosGeneralesI').
course('EstudiosGeneralesI', 3, dipl, regular, 3, 'Estudios Generales I').
course_req('EstudiosGeneralesI', 'Admission').
% --- 'EstudiosGeneralesII' ---
course('EstudiosGeneralesII').
course('EstudiosGeneralesII', 4, dipl, regular, 3, 'Estudios Generales II').
course_req('EstudiosGeneralesII', 'Admission').
% --- 'LIX410' ---
course('LIX410').
course('LIX410', 5, dipl, regular, 4, 'Inglés Integrado I').
course_req('LIX410', 'Admission').
% --- 'EIF201' ---
course('EIF201').
course('EIF201', 6, MAY230, regular, 4, 'Programación I').
course_req('EIF201', 'EIF200').
% --- 'MAY231' ---
course('MAY231').
course('MAY231', 7, dipl, regular, 4, 'Matemática para Informática II').
course_req('MAY231', 'MAY230').
% --- 'EstudiosGeneralesIII' ---
course('EstudiosGeneralesIII').
course('EstudiosGeneralesIII', 8, dipl, regular, 3, 'Estudios Generales III').
course_req('EstudiosGeneralesIII', 'Admission').
% --- 'EstudiosGeneralesIV' ---
course('EstudiosGeneralesIV').
course('EstudiosGeneralesIV', 9, dipl, regular, 3, 'Estudios Generales IV').
course_req('EstudiosGeneralesIV', 'Admission').
% --- 'LIX411' ---
course('LIX411').
course('LIX411', 10, dipl, regular, 4, 'Inglés Integrado II').
course_req('LIX411', 'LIX410').
% --- 'EIF204' ---
course('EIF204').
course('EIF204', 11, dipl, regular, 4, 'Programación II').
course_req('EIF204', 'EIF201').
% --- 'MAY232' ---
course('MAY232').
course('MAY232', 12, dipl, regular, 4, 'Matemática para Informática III').
course_req('MAY232', 'MAY231').
% --- 'EIF202' ---
course('EIF202').
course('EIF202', 13, dipl, regular, 3, 'Soporte Técnico').
course_req('EIF202', 'EIF200').
% --- 'EIF203' ---
course('EIF203').
course('EIF203', 14, MAY230, regular, 3, 'Estructuras Discretas para Informática').
course_req('EIF203', 'EIF200').
% --- 'LIX412' ---
course('LIX412').
course('LIX412', 15, dipl, regular, 4, 'Inglés Integrado III').
course_req('LIX412', 'LIX411').
% --- 'EIF206' ---
course('EIF206').
course('EIF206', 16, MAY231, regular, 4, 'Programación III').
course_req('EIF206', 'EIF204').
% --- 'EIF207' ---
course('EIF207').
course('EIF207', 17, EIF204, regular, 4, 'Estructuras de Datos').
course_req('EIF207', 'EIF203').
% --- 'EIF205' ---
course('EIF205').
course('EIF205', 18, EIF202, regular, 3, 'Arquitectura de Computadoras').
course_req('EIF205', 'EIF201').
% --- 'EIF404' ---
course('EIF404').
course('EIF404', 19, dipl, regular, 3, 'La Organización y su Entorno').
course_req('EIF404', 'EIF201').
% --- 'MAY223' ---
course('MAY223').
course('MAY223', 20, EIF203, regular, 3, 'Probabilidad y Estadística para Informática').
course_req('MAY223', 'MAY231').
% --- 'EIF209' ---
course('EIF209').
course('EIF209', 21, dipl, regular, 4, 'Programación IV').
course_req('EIF209', 'EIF206').
% --- 'EIF210' ---
course('EIF210').
course('EIF210', 22, dipl, regular, 4, 'Ingeniería de Sistemas  I').
course_req('EIF210', 'EIF206').
% --- 'EIF211' ---
course('EIF211').
course('EIF211', 23, EIF207, regular, 4, 'Diseño e Implementación de Bases de Datos').
course_req('EIF211', 'EIF206').
% --- 'EIF212' ---
course('EIF212').
course('EIF212', 24, EIF205, regular, 3, 'Sistemas Operativos').
course_req('EIF212', 'EIF204').
% --- 'EIF208' ---
course('EIF208').
course('EIF208', 25, dipl, regular, 3, 'Comunicaciones y Redes de Computadores').
course_req('EIF208', 'EIF205').
% --- 'EIF400' ---
course('EIF400').
course('EIF400', 26, bsc, regular, 4, 'Paradigmas de Programación').
course_req('EIF400', 'EIF206').
% --- 'EIF401' ---
course('EIF401').
course('EIF401', 27, bsc, regular, 4, 'Ingeniería de Sistemas II').
course_req('EIF401', 'EIF210').
% --- 'EIF402' ---
course('EIF402').
course('EIF402', 28, EIF211, regular, 4, 'Administración de Bases de Datos').
course_req('EIF402', 'EIF212').
% --- 'EIF405' ---
course('EIF405').
course('EIF405', 29, MAY223, regular, 3, 'Investigación de Operaciones y sus Aplicaciones').
course_req('EIF405', 'MAY232').
% --- 'EIF407' ---
course('EIF407').
course('EIF407', 30, bsc, regular, 3, 'Liderazgo y Organización ').
course_req('EIF407', 'EIF404').
% --- 'EIFXXX' ---
course('EIFXXX').
course('EIFXXX', 31, EIF428O, regular, 4, 'Diseño y programación de plataformas Móviles').
course_req('EIFXXX', 'EIF209').
% --- 'EIF406' ---
course('EIF406').
course('EIF406', 32, bsc, regular, 4, 'Ingeniería de Sistemas III').
course_req('EIF406', 'EIF401').
% --- 'Optativa' ---
course('Optativa').
course('Optativa', 33, bsc, regular, Ver cursos optativos, '3').
course_req('Optativa', 'Admission').
% --- 'Optativa' ---
course('Optativa').
course('Optativa', 34, bsc, regular, Ver cursos optativos, '3').
course_req('Optativa', 'Admission').
% --- 'EIF403' ---
course('EIF403').
course('EIF403', 35, bsc, regular, 3, 'Métodos de Investigación Científica en Informática').
course_req('EIF403', 'MAY223').
% --- 'EIF408' ---
course('EIF408').
course('EIF408', 36, EIF401, regular, 5, 'Proyectos y su Aplicación en la Organización (PPS)').
course_req('EIF408', 'EIF209').
% --- 'EIF409' ---
course('EIF409').
course('EIF409', 37, EIF401, regular, 4, 'Aplicaciones Informáticas Globales').
course_req('EIF409', 'EIF209').
% --- 'Optativa' ---
course('Optativa').
course('Optativa', 38, bsc, regular, Ver cursos optativos, '3').
course_req('Optativa', 'Admission').
% --- 'Optativa' ---
course('Optativa').
course('Optativa', 39, bsc, regular, Ver cursos optativos, '3').
course_req('Optativa', 'Admission').
% --- 'EIF410' ---
course('EIF410').
course('EIF410', 40, bsc, regular, 2, 'Informática y Sociedad').
course_req('EIF410', 'EIF401').
% --- 'EIF100O' ---
course('EIF100O').
course('EIF100O', 41, Admission, regular, 3, 'Dispositivos para comunicaciones de Datos').
course_req('EIF100O', 'EIF208').
% --- 'EIF420O' ---
course('EIF420O').
course('EIF420O', 42, Admission, regular, 3, 'Inteligencia Artificial').
course_req('EIF420O', 'EIF207').
% --- 'EIF421O' ---
course('EIF421O').
course('EIF421O', 43, MAY231, regular, 3, 'Análisis de Algoritmos').
course_req('EIF421O', 'EIF').
% --- 'EIF422O' ---
course('EIF422O').
course('EIF422O', 44, Admission, regular, 3, 'Diseño de Interfaces de usuario').
course_req('EIF422O', 'EIF206').
% --- 'EIF424O' ---
course('EIF424O').
course('EIF424O', 45, EIF206, regular, 3, 'Desarrollo de Aplicaciones Educativas').
course_req('EIF424O', 'EIF204').
% --- 'EIF425O' ---
course('EIF425O').
course('EIF425O', 46, bsc, regular, 3, 'Diseño de Ambientes Multimediales').
course_req('EIF425O', 'Admission').
% --- 'EIF426O' ---
course('EIF426O').
course('EIF426O', 47, bsc, regular, 3, 'Diseño de Ambientes de Aprendizaje').
course_req('EIF426O', 'Admission').
% --- 'EIF427O' ---
course('EIF427O').
course('EIF427O', 48, Admission, regular, 3, 'Robótica').
course_req('EIF427O', 'EIF204').
% --- 'EIF428O' ---
course('EIF428O').
course('EIF428O', 49, EIF211, regular, 3, 'Fundamentos de Programación Web').
course_req('EIF428O', 'EIF206').
% --- 'EIF431O' ---
course('EIF431O').
course('EIF431O', 50, EIF402, regular, 3, 'Administración de servidores basados en software libre').
course_req('EIF431O', 'EIF212').
% --- 'EIF433O' ---
course('EIF433O').
course('EIF433O', 51, EIF211, regular, 3, 'Contexto, Desarrollo y Aplicación de Software Libre y de código abierto').
course_req('EIF433O', 'EIF212').
% --- 'EIF434O' ---
course('EIF434O').
course('EIF434O', 52, MAY223, regular, 3, 'Minería de Datos I').
course_req('EIF434O', 'EIF402').
% --- 'EIF435O' ---
course('EIF435O').
course('EIF435O', 53, Admission, regular, 3, 'Minería de Datos II').
course_req('EIF435O', 'EIF434').
% --- 'EIG416O' ---
course('EIG416O').
course('EIG416O', 54, Admission, regular, 3, 'Gestión de Tecnología Educativa').
course_req('EIG416O', 'EIF425').
% --- 'EIF429O' ---
course('EIF429O').
course('EIF429O', 55, bsc, regular, 3, 'Introducción a la creación de Empresas').
course_req('EIF429O', 'Admission').
% --- 'EIF430O' ---
course('EIF430O').
course('EIF430O', 56, bsc, regular, 3, 'Las TIC’s en el Ámbito Jurídico de Costa Rica').
course_req('EIF430O', 'Admission').
% --- 'EIG417O' ---
course('EIG417O').
course('EIG417O', 57, bsc, regular, 3, 'Liderazgo y organizaciones').
course_req('EIG417O', 'Admission').
% --- 'EIG418O' ---
course('EIG418O').
course('EIG418O', 58, bsc, regular, 3, 'La organización y su entorno').
course_req('EIG418O', 'Admission').
