package controlador;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.Iterator;
import java.util.List;
import java.util.stream.Collectors;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.FileItemFactory;
import org.apache.tomcat.util.http.fileupload.FileUploadException;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;
import org.apache.tomcat.util.http.fileupload.servlet.ServletRequestContext;

import javabeans.GrupoBean;
import javabeans.HorarioBean;
import modelo.GrupoDAO;
import modelo.HorarioDAO;
import modelo.MateriaDAO;
import modelo.UsuarioDAO;

@WebServlet("/CargarArchivoSerlvet")
@MultipartConfig
public class CargarArchivoSerlvet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ServletFileUpload uploader = null;
	HttpSession session;
	String rol, pagina;
	int pk_materia, pk_maestro, pk_lunes, pk_martes, pk_miercoles, pk_jueves, pk_viernes;
	String horaLunes, horaMartes, horaMiercoles, horaJueves, horaViernes;
	String clave_horario, grupo, aula, periodo, turno;
	int alumnos;
	
    public CargarArchivoSerlvet() {
        super();
    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)throws ServletException, IOException {
		session = request.getSession(false);
		FileItemFactory itemFactory = new DiskFileItemFactory();
		ServletFileUpload upload = new ServletFileUpload(itemFactory);

		if (session.getAttribute("usuario") != null && session.getAttribute("rol") != null) {
			rol = session.getAttribute("rol").toString();

			if (rol.equals("maestro") || rol.equals("administrador")) {
				pagina = "/menu.jsp";
			} else {
				pagina = "SabanaServlet";
				try {
					List<FileItem> items = upload.parseRequest(new ServletRequestContext(request));
					for (FileItem item : items) {

						String result = new BufferedReader(new InputStreamReader(item.getInputStream(),"UTF-8")).lines().collect(Collectors.joining("\n"));
						String[] lineas = result.split("\n");

						for (String linea : lineas) {
							String[] palabras = linea.split(",");
							clave_horario = palabras[1].trim();
							if (palabras[10].trim().length() > 0) {
								grupo = palabras[10].trim();
							} else {
								continue;
							}

							if (palabras[15].trim().length() > 0) {
								aula = palabras[15].trim();
							} else {
								aula = palabras[17].trim();
							}

							periodo = palabras[7].trim();
							turno = palabras[8].trim();
							// Buscar materia
							if (palabras[2].trim().length() > 0) {
								pk_materia = MateriaDAO.getMateriasbyClaveArchivo(palabras[2].trim());
							} else {
								continue;
							}
							
							// Buscar maestro
							if (palabras[6].trim().length() > 0) {
								pk_maestro = UsuarioDAO.usuariosClaveArchivo(palabras[6].trim());
							} else {
								continue;
							}

							if (pk_materia > 0 && pk_maestro > 0) {
								alumnos = Integer.parseInt(palabras[11].trim());
								
								GrupoBean g = new GrupoBean();
								g.setFk_usuario(pk_maestro);
								g.setFk_materia(pk_materia);
								g.setClave_grupo(clave_horario);
								g.setGrupo(grupo);
								g.setAula(aula);
								g.setPeriodo(periodo);
								g.setTurno(turno);
								g.setAlumnos(alumnos);
								// Validar horario
								horaLunes = (palabras[14].trim().length() > 0) ? palabras[14].trim() : "";
								horaMartes = (palabras[16].trim().length() > 0) ? palabras[16].trim() : "";
								horaMiercoles = (palabras[18].trim().length() > 0) ? palabras[18].trim() : "";
								horaJueves = (palabras[20].trim().length() > 0) ? palabras[20].trim() : "";
								horaViernes = (palabras[22].trim().length() > 0) ? palabras[22].trim() : "";

								pk_lunes = HorarioDAO.getHorasArchivo(horaLunes);
								pk_martes = HorarioDAO.getHorasArchivo(horaMartes);
								pk_miercoles = HorarioDAO.getHorasArchivo(horaMiercoles);
								pk_jueves = HorarioDAO.getHorasArchivo(horaJueves);
								pk_viernes = HorarioDAO.getHorasArchivo(horaViernes);

								if (HorarioDAO.validaHorario(pk_maestro, pk_lunes, 1) == false
									&& HorarioDAO.validaHorario(pk_maestro, pk_martes, 2) == false
									&& HorarioDAO.validaHorario(pk_maestro, pk_miercoles, 3) == false
									&& HorarioDAO.validaHorario(pk_maestro, pk_jueves, 4) == false
									&& HorarioDAO.validaHorario(pk_maestro, pk_viernes, 5) == false) {
									// Guardar todo
									int i = GrupoDAO.guardarGrupo(g);
									if (i > 0) {
										int pk_grupo = GrupoDAO.getUlitmoGrupo();
										HorarioBean ho = new HorarioBean();
										if (pk_lunes != 0) {
											ho.setFk_grupo(pk_grupo);
											ho.setFk_hora(pk_lunes);
											ho.setDia(1);
											HorarioDAO.guardarHorario(ho);
										}
										if (pk_martes != 0) {
											ho.setFk_grupo(pk_grupo);
											ho.setFk_hora(pk_martes);
											ho.setDia(2);
											HorarioDAO.guardarHorario(ho);
										}
										if (pk_miercoles != 0) {
											ho.setFk_grupo(pk_grupo);
											ho.setFk_hora(pk_miercoles);
											ho.setDia(3);
											HorarioDAO.guardarHorario(ho);
										}
										if (pk_jueves != 0) {
											ho.setFk_grupo(pk_grupo);
											ho.setFk_hora(pk_jueves);
											ho.setDia(4);
											HorarioDAO.guardarHorario(ho);
										}
										if (pk_viernes != 0) {
											ho.setFk_grupo(pk_grupo);
											ho.setFk_hora(pk_viernes);
											ho.setDia(5);
											HorarioDAO.guardarHorario(ho);
										}
										pagina = "SabanaServlet";
									}else {
										pagina = "SabanaServlet";
									}
								}

							}

						}
					}
				} catch (FileUploadException e) {
					System.out.println(e.getMessage());
					return;
				} catch (Exception e) {
					System.out.println(e.getMessage());
				}
			}
		} else {
			pagina = "/login.jsp";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(pagina);
		dispatcher.forward(request, response);
	}
}

