.class public abstract Lcom/google/android/filament/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/filament/n$a;
    }
.end annotation


# static fields
.field public static a:Lcom/google/android/filament/n;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/filament/n;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/google/android/filament/n;->a:Lcom/google/android/filament/n;

    if-nez v0, :cond_1

    :try_start_0
    invoke-static {}, Lcom/google/android/filament/n;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.google.android.filament.b"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/filament/n;

    sput-object v0, Lcom/google/android/filament/n;->a:Lcom/google/android/filament/n;

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.filament.DesktopPlatform"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/filament/n;

    sput-object v0, Lcom/google/android/filament/n;->a:Lcom/google/android/filament/n;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    sget-object v0, Lcom/google/android/filament/n;->a:Lcom/google/android/filament/n;

    if-nez v0, :cond_1

    new-instance v0, Lcom/google/android/filament/n$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/filament/n$a;-><init>(Lcom/google/android/filament/m;)V

    sput-object v0, Lcom/google/android/filament/n;->a:Lcom/google/android/filament/n;

    :cond_1
    sget-object v0, Lcom/google/android/filament/n;->a:Lcom/google/android/filament/n;

    return-object v0
.end method

.method public static c()Z
    .locals 2

    const-string v0, "java.vendor"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "The Android Project"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d()Z
    .locals 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Linux"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/android/filament/n;->c()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static e()Z
    .locals 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Mac OS X"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public static f()Z
    .locals 2

    const-string v0, "os.name"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Windows"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public abstract b(Ljava/lang/Object;)J
.end method

.method public abstract g(Ljava/lang/String;)V
.end method

.method public abstract h(Ljava/lang/Object;)Z
.end method

.method public abstract i(Ljava/lang/Object;)Z
.end method

.method public abstract j(Ljava/lang/Object;)Z
.end method

.method public abstract k(Ljava/lang/String;)V
.end method
