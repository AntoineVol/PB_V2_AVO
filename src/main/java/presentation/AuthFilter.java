package presentation;

import java.io.IOException;

import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Classe de Filter. Le servlet contient un filtre empechant l'accès aux autres
 * pages que "index.jsp" tant que l'utilisateur ne s'est pas identifié
 * 
 * @author VOLATRON & LENOIR
 * 
 *
 */
public class AuthFilter implements javax.servlet.Filter {
	public static final String SESSION_AUTH = "auth";

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		final HttpSession session = ((HttpServletRequest) request).getSession();
		if (session.getAttribute(SESSION_AUTH) != null) {
			// l'utilisateur est authentifié
			chain.doFilter(request, response);
		} else {
			((HttpServletResponse) response).sendError(401, "Veuillez vous identifier");
		}
	}

	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		// TODO Auto-generated method stub

	}

	@Override
	public void destroy() {
		// TODO Auto-generated method stub

	}

}