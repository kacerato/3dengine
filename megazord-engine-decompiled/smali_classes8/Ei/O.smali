.class public LEi/O;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:LEi/Q;

.field public final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;LEi/Q;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "result",
            "status",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "LEi/Q;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LEi/O;->a:Ljava/lang/Object;

    iput-object p2, p0, LEi/O;->b:LEi/Q;

    iput-object p3, p0, LEi/O;->c:Ljava/lang/String;

    return-void
.end method

.method public static b()LEi/O;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LEi/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LEi/O;

    const/4 v1, 0x0

    sget-object v2, LEi/Q;->FAILURE:LEi/Q;

    invoke-direct {v0, v1, v2, v1}, LEi/O;-><init>(Ljava/lang/Object;LEi/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)LEi/O;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LEi/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LEi/O;

    sget-object v1, LEi/Q;->FAILURE:LEi/Q;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LEi/O;-><init>(Ljava/lang/Object;LEi/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static d(Ljava/lang/String;)LEi/O;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "LEi/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LEi/O;

    const/4 v1, 0x0

    sget-object v2, LEi/Q;->FAILURE:LEi/Q;

    invoke-direct {v0, v1, v2, p0}, LEi/O;-><init>(Ljava/lang/Object;LEi/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()LEi/O;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LEi/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LEi/O;

    const/4 v1, 0x0

    sget-object v2, LEi/Q;->FAILURE_INVALID_PARAM:LEi/Q;

    invoke-direct {v0, v1, v2, v1}, LEi/O;-><init>(Ljava/lang/Object;LEi/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static f(Ljava/lang/String;)LEi/O;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "LEi/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LEi/O;

    const/4 v1, 0x0

    sget-object v2, LEi/Q;->FAILURE_INVALID_PARAM:LEi/Q;

    invoke-direct {v0, v1, v2, p0}, LEi/O;-><init>(Ljava/lang/Object;LEi/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static g(LEi/Q;Ljava/lang/Object;)LEi/O;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LEi/Q;",
            "TT;)",
            "LEi/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LEi/O;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p0, v1}, LEi/O;-><init>(Ljava/lang/Object;LEi/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static h(LEi/Q;Ljava/lang/String;)LEi/O;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "status",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "LEi/Q;",
            "Ljava/lang/String;",
            ")",
            "LEi/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LEi/O;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0, p1}, LEi/O;-><init>(Ljava/lang/Object;LEi/Q;Ljava/lang/String;)V

    return-object v0
.end method

.method public static i(Ljava/lang/Object;)LEi/O;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LEi/O<",
            "TT;>;"
        }
    .end annotation

    new-instance p0, LEi/O;

    const/4 v0, 0x0

    sget-object v1, LEi/Q;->PARTIAL_RESULT:LEi/Q;

    invoke-direct {p0, v0, v1, v0}, LEi/O;-><init>(Ljava/lang/Object;LEi/Q;Ljava/lang/String;)V

    return-object p0
.end method

.method public static k(Ljava/lang/Object;)LEi/O;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "LEi/O<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, LEi/O;

    sget-object v1, LEi/Q;->SUCCSESS:LEi/Q;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, LEi/O;-><init>(Ljava/lang/Object;LEi/Q;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, LEi/O;->b:LEi/Q;

    invoke-virtual {v0}, LEi/Q;->b()Z

    move-result v0

    return v0
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, LEi/O;->b:LEi/Q;

    invoke-virtual {v0}, LEi/Q;->e()Z

    move-result v0

    return v0
.end method
