.class public LKe/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/y;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LIe/g;LIe/v;)Ljava/lang/Object;
    .locals 2
    .param p1    # LIe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    sget-object v0, LJe/b$a;->BULLET:LJe/b$a;

    sget-object v1, LJe/b;->a:LIe/s;

    invoke-virtual {v1, p2}, LIe/s;->g(LIe/v;)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_0

    new-instance v0, LLe/b;

    invoke-virtual {p1}, LIe/g;->h()LJe/c;

    move-result-object p1

    sget-object v1, LJe/b;->b:LIe/s;

    invoke-virtual {v1, p2}, LIe/s;->g(LIe/v;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {v0, p1, p2}, LLe/b;-><init>(LJe/c;I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, LJe/b;->c:LIe/s;

    invoke-virtual {v1, p2}, LIe/s;->g(LIe/v;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "."

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0xa0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, LLe/k;

    invoke-virtual {p1}, LIe/g;->h()LJe/c;

    move-result-object p1

    invoke-direct {v0, p1, p2}, LLe/k;-><init>(LJe/c;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method
