FROM python:3.11-slim

WORKDIR /app

# Install Jupyter
RUN pip install --no-cache-dir jupyter torch numpy

# Copy notebook files
COPY . .

# Expose Jupyter port
EXPOSE 8888

# Run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root", "--NotebookApp.token=''", "--NotebookApp.password=''"]




