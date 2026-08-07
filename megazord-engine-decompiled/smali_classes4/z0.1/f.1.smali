.class public abstract Lz0/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lr0/h;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/inject/Named;
        value = "SQLITE_DB_NAME"
    .end annotation

    .annotation runtime Lr0/i;
    .end annotation

    const-string v0, "com.google.android.datatransport.events"

    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljavax/inject/Named;
        value = "PACKAGE_NAME"
    .end annotation

    .annotation runtime Ljavax/inject/Singleton;
    .end annotation

    .annotation runtime Lr0/i;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static e()I
    .locals 1
    .annotation runtime Ljavax/inject/Named;
        value = "SCHEMA_VERSION"
    .end annotation

    .annotation runtime Lr0/i;
    .end annotation

    sget v0, Lz0/V;->t:I

    return v0
.end method

.method public static f()Lz0/e;
    .locals 1
    .annotation runtime Lr0/i;
    .end annotation

    sget-object v0, Lz0/e;->f:Lz0/e;

    return-object v0
.end method


# virtual methods
.method public abstract a(Lz0/N;)Lz0/c;
    .annotation runtime Lr0/a;
    .end annotation
.end method

.method public abstract c(Lz0/N;)Lz0/d;
    .annotation runtime Lr0/a;
    .end annotation
.end method

.method public abstract g(Lz0/N;)LA0/a;
    .annotation runtime Lr0/a;
    .end annotation
.end method
