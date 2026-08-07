.class public final LR2/a;
.super LR2/C;
.source "SourceFile"


# annotations
.annotation build LQ2/b;
.end annotation

.annotation runtime LR2/k;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "LR2/C<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final c:LR2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LR2/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final d:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LR2/a;

    invoke-direct {v0}, LR2/a;-><init>()V

    sput-object v0, LR2/a;->c:LR2/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, LR2/C;-><init>()V

    return-void
.end method

.method public static n()LR2/C;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "LR2/C<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, LR2/a;->c:LR2/a;

    return-object v0
.end method


# virtual methods
.method public b()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Optional.get() cannot be called on an absent value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    if-ne p1, p0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(LR2/C;)LR2/C;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR2/C<",
            "+TT;>;)",
            "LR2/C<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR2/C;

    return-object p1
.end method

.method public h(LR2/Q;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LR2/Q<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-interface {p1}, LR2/Q;->get()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "use Optional.orNull() instead of a Supplier that returns null"

    invoke-static {p1, v0}, LR2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public hashCode()I
    .locals 1

    const v0, 0x79a31aac

    return v0
.end method

.method public i(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    const-string v0, "use Optional.orNull() instead of Optional.or(null)"

    invoke-static {p1, v0}, LR2/H;->F(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public l(LR2/t;)LR2/C;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "LR2/t<",
            "-TT;TV;>;)",
            "LR2/C<",
            "TV;>;"
        }
    .end annotation

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, LR2/C;->a()LR2/C;

    move-result-object p1

    return-object p1
.end method

.method public final m()Ljava/lang/Object;
    .locals 1

    sget-object v0, LR2/a;->c:LR2/a;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "Optional.absent()"

    return-object v0
.end method
