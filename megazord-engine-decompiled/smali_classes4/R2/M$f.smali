.class public final LR2/M$f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build LQ2/a;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = LR2/M;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "f"
.end annotation


# static fields
.field public static final c:Ljava/lang/String; = "Chunk [%s] is not a valid entry"


# instance fields
.field public final a:LR2/M;

.field public final b:LR2/M;


# direct methods
.method public constructor <init>(LR2/M;LR2/M;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LR2/M$f;->a:LR2/M;

    .line 4
    invoke-static {p2}, LR2/H;->E(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, LR2/M;

    iput-object p1, p0, LR2/M$f;->b:LR2/M;

    return-void
.end method

.method public synthetic constructor <init>(LR2/M;LR2/M;LR2/M$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, LR2/M$f;-><init>(LR2/M;LR2/M;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/CharSequence;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iget-object v1, p0, LR2/M$f;->a:LR2/M;

    invoke-virtual {v1, p1}, LR2/M;->n(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, LR2/M$f;->b:LR2/M;

    invoke-static {v2, v1}, LR2/M;->a(LR2/M;Ljava/lang/CharSequence;)Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "Chunk [%s] is not a valid entry"

    invoke-static {v3, v4, v1}, LR2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    const-string v6, "Duplicate key [%s] found."

    invoke-static {v5, v6, v3}, LR2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    invoke-static {v5, v4, v1}, LR2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v0, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    invoke-static {v2, v4, v1}, LR2/H;->u(ZLjava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
