.class public final LE1/p$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LE1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "LB1/G;",
            ">;"
        }
    .end annotation
.end field

.field public b:I
    .annotation build LE1/p$b;
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LE1/p$a;->a:Ljava/util/List;

    const/4 v0, 0x5

    iput v0, p0, LE1/p$a;->b:I

    const-string v0, ""

    iput-object v0, p0, LE1/p$a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(LE1/k;)LE1/p$a;
    .locals 2
    .param p1    # LE1/k;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "geofence can\'t be null."

    invoke-static {p1, v0}, LX0/A;->s(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    instance-of v0, p1, LB1/G;

    const-string v1, "Geofence must be created using Geofence.Builder."

    invoke-static {v0, v1}, LX0/A;->b(ZLjava/lang/Object;)V

    iget-object v0, p0, LE1/p$a;->a:Ljava/util/List;

    check-cast p1, LB1/G;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public b(Ljava/util/List;)LE1/p$a;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "LE1/k;",
            ">;)",
            "LE1/p$a;"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LE1/k;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, LE1/p$a;->a(LE1/k;)LE1/p$a;

    goto :goto_0

    :cond_2
    :goto_1
    return-object p0
.end method

.method public c()LE1/p;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LE1/p$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "No geofence has been added to this request."

    invoke-static {v0, v1}, LX0/A;->b(ZLjava/lang/Object;)V

    new-instance v0, LE1/p;

    iget-object v1, p0, LE1/p$a;->a:Ljava/util/List;

    iget v2, p0, LE1/p$a;->b:I

    iget-object v3, p0, LE1/p$a;->c:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, LE1/p;-><init>(Ljava/util/List;ILjava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public d(I)LE1/p$a;
    .locals 0
    .param p1    # I
        .annotation build LE1/p$b;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    and-int/lit8 p1, p1, 0x7

    iput p1, p0, LE1/p$a;->b:I

    return-object p0
.end method
