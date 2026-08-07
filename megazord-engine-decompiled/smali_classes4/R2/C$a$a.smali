.class public LR2/C$a$a;
.super LR2/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LR2/C$a;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "LR2/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+",
            "LR2/C<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field public final synthetic e:LR2/C$a;


# direct methods
.method public constructor <init>(LR2/C$a;)V
    .locals 0

    iput-object p1, p0, LR2/C$a$a;->e:LR2/C$a;

    invoke-direct {p0}, LR2/b;-><init>()V

    iget-object p1, p1, LR2/C$a;->b:Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p1}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Iterator;

    iput-object p1, p0, LR2/C$a$a;->d:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    :cond_0
    iget-object v0, p0, LR2/C$a$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, LR2/C$a$a;->d:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LR2/C;

    invoke-virtual {v0}, LR2/C;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, LR2/C;->d()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-virtual {p0}, LR2/b;->b()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
