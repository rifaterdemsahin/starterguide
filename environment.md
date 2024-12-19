To run the provided Python code in GitHub Codespaces, you'll need to set up an environment with the necessary specifications. Here's a basic configuration to get you started:

1. **Create a `devcontainer.json` file** in the `.devcontainer` directory of your repository. This file will define the environment settings.

2. **Add the following configuration** to the `devcontainer.json` file:

```json
{
    "name": "Python Development Environment",
    "image": "mcr.microsoft.com/devcontainers/python:3.9",
    "settings": {
        "terminal.integrated.shell.linux": "/bin/bash"
    },
    "extensions": [
        "ms-python.python",
        "ms-python.vscode-pylance"
    ],
    "postCreateCommand": "pip install --upgrade pip"
}
```

This configuration specifies:
- **`name`**: The name of your development environment.
- **`image`**: The Docker image to use, in this case, a Python 3.9 environment.
- **`settings`**: Custom settings for the integrated terminal.
- **`extensions`**: VS Code extensions to install, such as the Python extension and Pylance for better Python support.
- **`postCreateCommand`**: A command to run after the container is created, here it upgrades `pip`.

3. **Open your repository in GitHub Codespaces**. Codespaces will automatically use the `devcontainer.json` file to set up the environment.

4. **Run your Python code**. Once the environment is set up, you can run your Python scripts as you normally would.

This setup ensures you have a consistent development environment with the necessary tools and extensions for Python development. If you need any additional packages or configurations, you can modify the `devcontainer.json` file accordingly. Let me know if you need further assistance!
