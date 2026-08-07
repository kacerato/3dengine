.class public LTg/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LTg/j;",
            ">;"
        }
    .end annotation
.end field

.field public b:LTg/f;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LTg/d;->a:Ljava/util/List;

    new-instance v0, LTg/f;

    invoke-direct {v0}, LTg/f;-><init>()V

    iput-object v0, p0, LTg/d;->b:LTg/f;

    return-void
.end method


# virtual methods
.method public a()LTg/f;
    .locals 1

    iget-object v0, p0, LTg/d;->b:LTg/f;

    return-object v0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "LTg/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, LTg/d;->a:Ljava/util/List;

    return-object v0
.end method

.method public c(LTg/f;)V
    .locals 0

    iput-object p1, p0, LTg/d;->b:LTg/f;

    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LTg/j;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, LTg/d;->a:Ljava/util/List;

    return-void
.end method
