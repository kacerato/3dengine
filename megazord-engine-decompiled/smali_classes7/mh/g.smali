.class public Lmh/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:LOc/q;

.field public b:LOc/n;

.field public c:LOc/q;

.field public d:LOc/p;

.field public e:LOc/p;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()LOc/p;
    .locals 1

    iget-object v0, p0, Lmh/g;->d:LOc/p;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lmh/g;->d:LOc/p;

    invoke-virtual {v0}, LOc/p;->b()I

    move-result v0

    return v0
.end method

.method public c()LOc/q;
    .locals 1

    iget-object v0, p0, Lmh/g;->c:LOc/q;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lmh/g;->c:LOc/q;

    invoke-virtual {v0}, LOc/q;->d()I

    move-result v0

    return v0
.end method

.method public e()LOc/p;
    .locals 1

    iget-object v0, p0, Lmh/g;->e:LOc/p;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget-object v0, p0, Lmh/g;->e:LOc/p;

    invoke-virtual {v0}, LOc/p;->b()I

    move-result v0

    return v0
.end method

.method public g()LOc/n;
    .locals 1

    iget-object v0, p0, Lmh/g;->b:LOc/n;

    return-object v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lmh/g;->b:LOc/n;

    invoke-virtual {v0}, LOc/n;->b()I

    move-result v0

    return v0
.end method

.method public i()LOc/q;
    .locals 1

    iget-object v0, p0, Lmh/g;->a:LOc/q;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lmh/g;->a:LOc/q;

    invoke-virtual {v0}, LOc/q;->d()I

    move-result v0

    return v0
.end method

.method public k(LOc/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "atlasUV"
        }
    .end annotation

    iput-object p1, p0, Lmh/g;->d:LOc/p;

    return-void
.end method

.method public l(LOc/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "normals"
        }
    .end annotation

    iput-object p1, p0, Lmh/g;->c:LOc/q;

    return-void
.end method

.method public m(LOc/p;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "oldUV"
        }
    .end annotation

    iput-object p1, p0, Lmh/g;->e:LOc/p;

    return-void
.end method

.method public n(LOc/n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "triangles"
        }
    .end annotation

    iput-object p1, p0, Lmh/g;->b:LOc/n;

    return-void
.end method

.method public o(LOc/q;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "vertices"
        }
    .end annotation

    iput-object p1, p0, Lmh/g;->a:LOc/q;

    return-void
.end method
