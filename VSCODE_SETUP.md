# VS Code Setup for ShopHub Backend

This document explains the VS Code configuration for the ShopHub Backend Spring Boot project.

## Required Extensions

The following extensions are automatically recommended when you open this workspace:

### Core Java Extensions
- **Extension Pack for Java** (`vscjava.vscode-java-pack`) - Includes:
  - Language Support for Java (`redhat.java`)
  - Debugger for Java (`vscjava.vscode-java-debug`)
  - Test Runner for Java (`vscjava.vscode-java-test`)
  - Maven for Java (`vscjava.vscode-maven`)
  - Project Manager for Java (`vscjava.vscode-java-dependency`)

### Spring Boot Extensions
- **Spring Boot Extension Pack** (`vmware.vscode-spring-boot`)
- **Spring Initializr Java Support** (`vscjava.vscode-spring-initializr`)
- **Spring Boot Dashboard** (`vscjava.vscode-spring-boot-dashboard`)

### Additional Helpful Extensions
- **Lombok Annotations Support** (`gabrielbb.vscode-lombok`)
- **XML** (`redhat.vscode-xml`)
- **YAML** (`redhat.vscode-yaml`)
- **MongoDB for VS Code** (`mongodb.mongodb-vscode`)
- **REST Client** (`humao.rest-client`)
- **GitLens** (`eamodio.gitlens`)
- **SonarLint** (`sonarsource.sonarlint-vscode`)

## Installation

1. Open VS Code in this project directory
2. VS Code will automatically prompt you to install the recommended extensions
3. Click "Install All" or install them individually

## Configuration Files

### `.vscode/settings.json`
Contains workspace-specific settings for:
- Java compilation and formatting
- Spring Boot configuration
- Maven settings
- Lombok support
- File associations

### `.vscode/launch.json`
Provides debug configurations for:
- Running the Spring Boot application
- Debug mode with remote debugging
- Running tests

### `.vscode/tasks.json`
Defines common Maven tasks:
- `Maven: Clean` - Clean the project
- `Maven: Compile` - Compile the project
- `Maven: Test` - Run tests
- `Maven: Package` - Package the application
- `Spring Boot: Run` - Run the application
- `Spring Boot: Run with Profile` - Run with dev profile

### `.vscode/extensions.json`
Lists all recommended extensions for this project

## Usage

### Running the Application
1. Press `Ctrl+Shift+P` (or `Cmd+Shift+P` on Mac)
2. Type "Tasks: Run Task"
3. Select "Spring Boot: Run"

Or use the debug configuration:
1. Press `F5` or go to Run and Debug view
2. Select "Spring Boot-ShophubbackendApplication"
3. Click the play button

### Testing APIs
Use the `api-tests.http` file with the REST Client extension:
1. Open `api-tests.http`
2. Click "Send Request" above any HTTP request
3. View the response in the adjacent panel

### Debugging
1. Set breakpoints in your Java code
2. Use the "Debug Spring Boot App" configuration
3. The application will start in debug mode on port 5005

### Running Tests
- Use `Ctrl+Shift+P` → "Tasks: Run Task" → "Maven: Test"
- Or use the Test Explorer in the sidebar
- Individual test methods can be run using CodeLens

## Java Version
This project is configured for Java 21. Make sure you have:
- Java 21 JDK installed
- `JAVA_HOME` environment variable set correctly

## Maven Wrapper
The project uses Maven Wrapper (`mvnw`), so you don't need Maven installed globally.

## Troubleshooting

### Java Language Server Issues
1. Press `Ctrl+Shift+P`
2. Run "Java: Reload Projects"
3. If issues persist, run "Java: Restart Language Server"

### Lombok Not Working
1. Ensure the Lombok extension is installed
2. Check that the Lombok JAR is in the Java agent path (configured in settings)
3. Restart VS Code if necessary

### Spring Boot Properties Not Recognized
1. Ensure Spring Boot extensions are installed
2. Check file associations in settings.json
3. Reload the window if necessary

## Additional Resources
- [VS Code Java Documentation](https://code.visualstudio.com/docs/languages/java)
- [Spring Boot in VS Code](https://code.visualstudio.com/docs/java/java-spring-boot)
- [Debugging Java](https://code.visualstudio.com/docs/java/java-debugging)
