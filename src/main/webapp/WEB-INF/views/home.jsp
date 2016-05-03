<c:import url="/WEB-INF/views/common/layout.jsp" charEncoding="UTF-8">
    <c:param name="title" value="" />
    <c:param name="body">
        <h2>Seja Bem Vindo Professor</h2>
        <p>
            ${f:h(serverTime)} <br>
        </p>
        <ul>
            <li><a href='${pageContext.request.contextPath}/person/list/'>Listar Pessoas
                    </a></li>
            <li><a href='${pageContext.request.contextPath}/person/form/'>Inserir Pessoas
                    </a></li>
        </ul>
    </c:param>
</c:import>

