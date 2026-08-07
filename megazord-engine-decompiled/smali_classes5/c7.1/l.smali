.class public final Lc7/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc7/l$a;

    invoke-direct {v0}, Lc7/l$a;-><init>()V

    sput-object v0, Lc7/l;->a:Ljava/util/List;

    new-instance v0, Lc7/l$b;

    invoke-direct {v0}, Lc7/l$b;-><init>()V

    sput-object v0, Lc7/l;->b:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc7/f;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lc7/l;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lc7/f;

    invoke-direct {v2, v1, v1}, Lc7/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, Lc7/f;->b:Ljava/lang/String;

    const-string v3, "keyword"

    iput-object v3, v2, Lc7/f;->f:Ljava/lang/String;

    iput-object v1, v2, Lc7/f;->d:Ljava/lang/String;

    iput-object v3, v2, Lc7/f;->e:Ljava/lang/String;

    const v1, 0x7f07016d

    iput v1, v2, Lc7/f;->n:I

    const/4 v1, 0x1

    iput-boolean v1, v2, Lc7/f;->m:Z

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "out"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc7/f;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lc7/l;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Lc7/f;

    invoke-direct {v2, v1, v1}, Lc7/f;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, v2, Lc7/f;->b:Ljava/lang/String;

    const-string v3, "primitive"

    iput-object v3, v2, Lc7/f;->f:Ljava/lang/String;

    iput-object v1, v2, Lc7/f;->d:Ljava/lang/String;

    iput-object v3, v2, Lc7/f;->e:Ljava/lang/String;

    const v1, 0x7f070173

    iput v1, v2, Lc7/f;->n:I

    const/4 v1, 0x1

    iput-boolean v1, v2, Lc7/f;->m:Z

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lc7/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lc7/l;->b(Ljava/util/List;)V

    invoke-virtual {p0, v0}, Lc7/l;->a(Ljava/util/List;)V

    return-object v0
.end method
