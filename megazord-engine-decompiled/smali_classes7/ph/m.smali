.class public Lph/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "key",
            "value",
            "separator"
        }
    .end annotation

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "on"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string p1, "off"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void
.end method

.method public static b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "key",
            "value",
            "separator"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "key",
            "options"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lph/m;->f(Lph/B;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\n"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static d(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/i;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "sb",
            "key",
            "value",
            "separator"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lph/j;->f(Lph/i;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public static e(Lph/k;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mtl"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "newmtl "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lph/k;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "illum"

    invoke-interface {p0}, Lph/k;->K()Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Ns"

    invoke-interface {p0}, Lph/k;->g0()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Ni"

    invoke-interface {p0}, Lph/k;->g()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lph/k;->o()Ljava/lang/Float;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "d"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0}, Lph/k;->t0()Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "-halo"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v2, "Ka"

    invoke-interface {p0}, Lph/k;->k()Lph/i;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/i;Ljava/lang/String;)V

    const-string v2, "Kd"

    invoke-interface {p0}, Lph/k;->H()Lph/i;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/i;Ljava/lang/String;)V

    const-string v2, "Ks"

    invoke-interface {p0}, Lph/k;->w()Lph/i;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/i;Ljava/lang/String;)V

    const-string v2, "Tf"

    invoke-interface {p0}, Lph/k;->q0()Lph/i;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/i;Ljava/lang/String;)V

    const-string v2, "sharpness"

    invoke-interface {p0}, Lph/k;->l0()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map_Ka"

    invoke-interface {p0}, Lph/k;->d0()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "map_Kd"

    invoke-interface {p0}, Lph/k;->e0()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "map_Ks"

    invoke-interface {p0}, Lph/k;->F()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "map_Ns"

    invoke-interface {p0}, Lph/k;->J0()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "map_d"

    invoke-interface {p0}, Lph/k;->x0()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "bump"

    invoke-interface {p0}, Lph/k;->a()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "disp"

    invoke-interface {p0}, Lph/k;->n()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "decal"

    invoke-interface {p0}, Lph/k;->r()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    invoke-interface {p0}, Lph/k;->c0()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lph/B;

    const-string v4, "refl"

    invoke-static {v0, v4, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    goto :goto_0

    :cond_2
    const-string v2, "Pr"

    invoke-interface {p0}, Lph/k;->m()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map_Pr"

    invoke-interface {p0}, Lph/k;->j()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "Pm"

    invoke-interface {p0}, Lph/k;->G0()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map_Pm"

    invoke-interface {p0}, Lph/k;->k0()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "Ps"

    invoke-interface {p0}, Lph/k;->z()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "map_Ps"

    invoke-interface {p0}, Lph/k;->p()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "Pc"

    invoke-interface {p0}, Lph/k;->E()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Pcr"

    invoke-interface {p0}, Lph/k;->e()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "Ke"

    invoke-interface {p0}, Lph/k;->N()Lph/i;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/i;Ljava/lang/String;)V

    const-string v2, "map_Ke"

    invoke-interface {p0}, Lph/k;->M()Lph/B;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    const-string v2, "aniso"

    invoke-interface {p0}, Lph/k;->G()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "anisor"

    invoke-interface {p0}, Lph/k;->E0()Ljava/lang/Float;

    move-result-object v3

    invoke-static {v0, v2, v3, v1}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "norm"

    invoke-interface {p0}, Lph/k;->v0()Lph/B;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lph/m;->c(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/B;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static f(Lph/B;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "options"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lph/B;->p()Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "-blendu"

    const-string v3, " "

    invoke-static {v0, v2, v1, v3}, Lph/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, "-blendv"

    invoke-interface {p0}, Lph/B;->m()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, "-boost"

    invoke-interface {p0}, Lph/B;->q()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-mm"

    invoke-interface {p0}, Lph/B;->k()Lph/i;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/i;Ljava/lang/String;)V

    const-string v1, "-o"

    invoke-interface {p0}, Lph/B;->v()Lph/i;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/i;Ljava/lang/String;)V

    const-string v1, "-s"

    invoke-interface {p0}, Lph/B;->t()Lph/i;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/i;Ljava/lang/String;)V

    const-string v1, "-t"

    invoke-interface {p0}, Lph/B;->c()Lph/i;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->d(Ljava/lang/StringBuilder;Ljava/lang/String;Lph/i;Ljava/lang/String;)V

    const-string v1, "-texres"

    invoke-interface {p0}, Lph/B;->w()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-clamp"

    invoke-interface {p0}, Lph/B;->l()Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;)V

    const-string v1, "-bm"

    invoke-interface {p0}, Lph/B;->j()Ljava/lang/Float;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-imfchan"

    invoke-interface {p0}, Lph/B;->x()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "-type"

    invoke-interface {p0}, Lph/B;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2, v3}, Lph/m;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Lph/B;->getFileName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static g(Ljava/lang/Iterable;Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mtls",
            "outputStream"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lph/k;",
            ">;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/OutputStreamWriter;

    invoke-direct {v0, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-static {p0, v0}, Lph/m;->h(Ljava/lang/Iterable;Ljava/io/Writer;)V

    return-void
.end method

.method public static h(Ljava/lang/Iterable;Ljava/io/Writer;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mtls",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lph/k;",
            ">;",
            "Ljava/io/Writer;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lph/k;

    invoke-static {v0, p1}, Lph/m;->i(Lph/k;Ljava/io/Writer;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static i(Lph/k;Ljava/io/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mtl",
            "writer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p0}, Lph/m;->e(Lph/k;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    return-void
.end method
