<c:import url="/WEB-INF/views/common/layout.jsp" charEncoding="UTF-8">
    <c:param name="title" value="PERSON LIST" />
    <c:param name="body">
        <p>
            <a href='${pageContext.request.contextPath}/person/form/' class="btn btn-info">CREATE</a>
        </p>
        <table
            class="table table-striped table-bordered table-condensed">
            <tr>
                <th>Id</th>
                <th>Nome</th>
                <th>Idade</th>
                <th>&nbsp;</th>
            </tr>
            <c:forEach items="${page.content}" var="person">
                <tr>
                    <td>${f:h(person.id)}</td>
                    <td>${f:h(person.name)}</td>
                    <td>${f:h(person.age)}</td>
                    <td><a
                        href='${pageContext.request.contextPath}/person/edit/${person.id}'
                        class="btn btn-primary">Editar��</a> <a
                        href='${pageContext.request.contextPath}/person/delete/${person.id}'
                        class="btn">Deletar</a></td>
                </tr>
            </c:forEach>
        </table>

        <p>${f:h(page.number + 1)}/${f:h(page.totalPages)}</p>
        <div class="pagination">
            <ul>
                <li><c:if test="${!page.isFirstPage()}">
                        <a href='<c:url value="?page=0" />'>&laquo;
                            primeiro</a>
                    </c:if></li>
                <li><c:if test="${page.hasPreviousPage()}">
                        <a
                            href='<c:url value="?page=${f:h(page.number - 1)}" />'>&lt;
                            anterior</a>
                    </c:if></li>
                <li><c:if test="${page.hasNextPage()}">
                        <a
                            href='<c:url value="?page=${f:h(page.number + 1)}" />'>proximo
                            &gt;</a>
                    </c:if></li>
                <li><c:if test="${!page.isLastPage()}">
                        <a
                            href='<c:url value="?page=${f:h(page.totalPages - 1)}" />'>ultimo
                            &raquo;</a>
                    </c:if></li>
            </ul>
        </div>
    </c:param>
</c:import>

