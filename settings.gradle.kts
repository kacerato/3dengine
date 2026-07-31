pluginManagement {
    repositories {
        google()
        mavenCentral()
        gradlePluginPortal()
    }
}

dependencyResolutionManagement {
    repositoriesMode.set(RepositoriesMode.FAIL_ON_PROJECT_REPOS)
    repositories {
        google()
        mavenCentral()
    }
}

rootProject.name = "MobileGameStudio"

include(
    ":app",
    ":core:model",
    ":core:contracts",
    ":core:common",
    ":projects",
    ":editor-domain",
    ":editor",
    ":runtime",
    ":scripting",
)
