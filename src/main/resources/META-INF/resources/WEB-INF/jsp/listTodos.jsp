<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<html>
<head>
    <title>Todos Page</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: #f4f7fa;
            padding: 40px 20px;
            color: #212529;
        }
        h1 {
            font-weight: 700;
            margin-bottom: 25px;
            color: #0d6efd;
        }
        .table-responsive {
            box-shadow: 0 8px 20px rgba(13,110,253,0.15);
            border-radius: 12px;
            overflow: hidden;
            background: white;
        }
        table {
            border-collapse: separate;
            border-spacing: 0;
            width: 100%;
        }
        thead tr {
            background: linear-gradient(90deg, #0d6efd, #6610f2);
            color: white;
            font-weight: 600;
            font-size: 1rem;
            position: sticky;
            top: 0;
            z-index: 10;
        }
        thead th {
            padding: 12px 20px;
            cursor: pointer;
            user-select: none;
            position: relative;
            transition: background-color 0.3s ease;
        }
        thead th:hover {
            background-color: #6610f2cc;
        }
        tbody tr {
            transition: background-color 0.25s ease, box-shadow 0.25s ease;
        }
        tbody tr:hover {
            background-color: #e7f1ff;
            box-shadow: inset 4px 0 0 #0d6efd;
        }
        tbody td {
            padding: 15px 20px;
            vertical-align: middle;
            font-size: 0.95rem;
        }
        .badge-status {
            font-weight: 600;
            padding: 6px 14px;
            border-radius: 50px;
            font-size: 0.85rem;
            color: white;
            transition: background-color 0.3s ease;
            user-select: none;
            display: inline-block;
            min-width: 80px;
            text-align: center;
        }
        .done-badge {
            background-color: #198754;
        }
        .pending-badge {
            background-color: #dc3545;
        }
        .btn-update {
            background-color: #0d6efd;
            border: none;
            font-weight: 600;
            padding: 6px 14px;
            border-radius: 6px;
            transition: background-color 0.3s ease;
            color: white;
        }
        .btn-update:hover {
            background-color: #084cdf;
        }
        .btn-delete {
            background-color: #ffc107;
            border: none;
            font-weight: 600;
            padding: 6px 14px;
            border-radius: 6px;
            color: #212529;
            transition: background-color 0.3s ease;
        }
        .btn-delete:hover {
            background-color: #e0a800;
        }
        .add-todo-btn {
            margin-top: 20px;
            font-weight: 700;
            padding: 10px 24px;
            border-radius: 30px;
            box-shadow: 0 4px 15px rgb(13 110 253 / 0.4);
            transition: box-shadow 0.3s ease;
        }
        .add-todo-btn:hover {
            box-shadow: 0 6px 25px rgb(13 110 253 / 0.7);
        }
        /* Sorting arrow styling (for future enhancement) */
        thead th.sortable::after {
            content: '▾';
            font-size: 0.6rem;
            color: rgba(255,255,255,0.7);
            position: absolute;
            right: 12px;
            top: 50%;
            transform: translateY(-50%);
            opacity: 0;
            transition: opacity 0.3s ease;
        }
        thead th.sortable:hover::after {
            opacity: 1;
        }
    </style>
</head>
<body>

<div class="container">
    <h1>Welcome, <span class="text-primary">${name}</span>!</h1>
    <h3>Your Todos List</h3>

    <div class="table-responsive shadow-sm rounded">
        <table class="table align-middle">
            <thead>
                <tr>
                    <th class="sortable">Description</th>
                    <th class="sortable">Target Date</th>
                    <th>Status</th>
                    <th></th>
                    <th></th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${todos}" var="todo">
                    <tr>
                        <td>${todo.description}</td>
                        <td>${todo.target}</td>
                        <td>
                            <c:choose>
                                <c:when test="${todo.done}">
                                    <span class="badge-status done-badge">Done</span>
                                </c:when>
                                <c:otherwise>
                                    <span class="badge-status pending-badge">Pending</span>
                                </c:otherwise>
                            </c:choose>
                        </td>
                        <td>
                            <a href="update-todo?id=${todo.id}" class="btn-update">Update</a>
                        </td>
                        <td>
                            <a href="delete-todo?id=${todo.id}" class="btn-delete">Delete</a>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

    <a href="add-todo" class="btn btn-primary add-todo-btn">+ Add Todo</a>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
