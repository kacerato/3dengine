.class public final Lo3/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo3/g$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo3/F<",
            "-TT;>;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lo3/v;",
            ">;"
        }
    .end annotation
.end field

.field public final d:I

.field public final e:I

.field public final f:Lo3/k;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/k<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final g:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILo3/k;Ljava/util/Set;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Lo3/F<",
            "-TT;>;>;",
            "Ljava/util/Set<",
            "Lo3/v;",
            ">;II",
            "Lo3/k<",
            "TT;>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lo3/g;->a:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo3/g;->b:Ljava/util/Set;

    .line 5
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo3/g;->c:Ljava/util/Set;

    .line 6
    iput p4, p0, Lo3/g;->d:I

    .line 7
    iput p5, p0, Lo3/g;->e:I

    .line 8
    iput-object p6, p0, Lo3/g;->f:Lo3/k;

    .line 9
    invoke-static {p7}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lo3/g;->g:Ljava/util/Set;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILo3/k;Ljava/util/Set;Lo3/g$a;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lo3/g;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILo3/k;Ljava/util/Set;)V

    return-void
.end method

.method public static synthetic A(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static B(Ljava/lang/Class;Ljava/lang/Object;)Lo3/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)",
            "Lo3/g<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p0}, Lo3/g;->f(Ljava/lang/Class;)Lo3/g$b;

    move-result-object p0

    new-instance v0, Lo3/e;

    invoke-direct {v0, p1}, Lo3/e;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/g$b;->d()Lo3/g;

    move-result-object p0

    return-object p0
.end method

.method public static varargs C(Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Lo3/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lo3/g<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p1, p2}, Lo3/g;->g(Ljava/lang/Class;[Ljava/lang/Class;)Lo3/g$b;

    move-result-object p1

    new-instance p2, Lo3/f;

    invoke-direct {p2, p0}, Lo3/f;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/g$b;->d()Lo3/g;

    move-result-object p0

    return-object p0
.end method

.method public static varargs D(Ljava/lang/Object;Lo3/F;[Lo3/F;)Lo3/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo3/F<",
            "TT;>;[",
            "Lo3/F<",
            "-TT;>;)",
            "Lo3/g<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    invoke-static {p1, p2}, Lo3/g;->i(Lo3/F;[Lo3/F;)Lo3/g$b;

    move-result-object p1

    new-instance p2, Lo3/b;

    invoke-direct {p2, p0}, Lo3/b;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/g$b;->d()Lo3/g;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic a(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lo3/g;->z(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lo3/g;->y(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lo3/g;->A(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lo3/g;->w(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lo3/g;->x(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static f(Ljava/lang/Class;)Lo3/g$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo3/g$b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo3/g$b;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lo3/g$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lo3/g$a;)V

    return-object v0
.end method

.method public static varargs g(Ljava/lang/Class;[Ljava/lang/Class;)Lo3/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/Class<",
            "-TT;>;)",
            "Lo3/g$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lo3/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lo3/g$b;-><init>(Ljava/lang/Class;[Ljava/lang/Class;Lo3/g$a;)V

    return-object v0
.end method

.method public static h(Lo3/F;)Lo3/g$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo3/F<",
            "TT;>;)",
            "Lo3/g$b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lo3/g$b;

    const/4 v1, 0x0

    new-array v1, v1, [Lo3/F;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lo3/g$b;-><init>(Lo3/F;[Lo3/F;Lo3/g$a;)V

    return-object v0
.end method

.method public static varargs i(Lo3/F;[Lo3/F;)Lo3/g$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo3/F<",
            "TT;>;[",
            "Lo3/F<",
            "-TT;>;)",
            "Lo3/g$b<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    new-instance v0, Lo3/g$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lo3/g$b;-><init>(Lo3/F;[Lo3/F;Lo3/g$a;)V

    return-object v0
.end method

.method public static o(Ljava/lang/Object;Ljava/lang/Class;)Lo3/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo3/g<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lo3/g;->q(Ljava/lang/Class;)Lo3/g$b;

    move-result-object p1

    new-instance v0, Lo3/d;

    invoke-direct {v0, p0}, Lo3/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/g$b;->d()Lo3/g;

    move-result-object p0

    return-object p0
.end method

.method public static p(Ljava/lang/Object;Lo3/F;)Lo3/g;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo3/F<",
            "TT;>;)",
            "Lo3/g<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, Lo3/g;->r(Lo3/F;)Lo3/g$b;

    move-result-object p1

    new-instance v0, Lo3/c;

    invoke-direct {v0, p0}, Lo3/c;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lo3/g$b;->f(Lo3/k;)Lo3/g$b;

    move-result-object p0

    invoke-virtual {p0}, Lo3/g$b;->d()Lo3/g;

    move-result-object p0

    return-object p0
.end method

.method public static q(Ljava/lang/Class;)Lo3/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lo3/g$b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lo3/g;->f(Ljava/lang/Class;)Lo3/g$b;

    move-result-object p0

    invoke-static {p0}, Lo3/g$b;->a(Lo3/g$b;)Lo3/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static r(Lo3/F;)Lo3/g$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lo3/F<",
            "TT;>;)",
            "Lo3/g$b<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lo3/g;->h(Lo3/F;)Lo3/g$b;

    move-result-object p0

    invoke-static {p0}, Lo3/g$b;->a(Lo3/g$b;)Lo3/g$b;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic w(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic x(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic y(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method

.method public static synthetic z(Ljava/lang/Object;Lo3/h;)Ljava/lang/Object;
    .locals 0

    return-object p0
.end method


# virtual methods
.method public E(Lo3/k;)Lo3/g;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo3/k<",
            "TT;>;)",
            "Lo3/g<",
            "TT;>;"
        }
    .end annotation

    new-instance v8, Lo3/g;

    iget-object v1, p0, Lo3/g;->a:Ljava/lang/String;

    iget-object v2, p0, Lo3/g;->b:Ljava/util/Set;

    iget-object v3, p0, Lo3/g;->c:Ljava/util/Set;

    iget v4, p0, Lo3/g;->d:I

    iget v5, p0, Lo3/g;->e:I

    iget-object v7, p0, Lo3/g;->g:Ljava/util/Set;

    move-object v0, v8

    move-object v6, p1

    invoke-direct/range {v0 .. v7}, Lo3/g;-><init>(Ljava/lang/String;Ljava/util/Set;Ljava/util/Set;IILo3/k;Ljava/util/Set;)V

    return-object v8
.end method

.method public j()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo3/v;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo3/g;->c:Ljava/util/Set;

    return-object v0
.end method

.method public k()Lo3/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo3/k<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lo3/g;->f:Lo3/k;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lo3/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lo3/F<",
            "-TT;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lo3/g;->b:Ljava/util/Set;

    return-object v0
.end method

.method public n()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    iget-object v0, p0, Lo3/g;->g:Ljava/util/Set;

    return-object v0
.end method

.method public s()Z
    .locals 2

    iget v0, p0, Lo3/g;->d:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public t()Z
    .locals 2

    iget v0, p0, Lo3/g;->d:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Component<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lo3/g;->b:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo3/g;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lo3/g;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", deps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lo3/g;->c:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 1

    iget v0, p0, Lo3/g;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public v()Z
    .locals 1

    iget v0, p0, Lo3/g;->e:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
