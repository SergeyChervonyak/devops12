# Используем официальный образ Python в качестве базового
FROM python:3.11-slim

# Устанавливаем рабочую директорию
WORKDIR /app

# Копируем файл зависимостей в контейнер
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install --no-cache-dir -r requirements.txt

# Копируем весь код приложения в контейнер
COPY . .

EXPOSE 8000

# Указываем команду для запуска приложения с помощью gunicorn
CMD ["gunicorn", "--bind", "0.0.0.0:8000", "app:app"]