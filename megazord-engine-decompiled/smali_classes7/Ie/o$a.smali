.class public LIe/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LIe/m$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIe/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lpi/v;",
            ">;",
            "LIe/m$c<",
            "+",
            "Lpi/v;",
            ">;>;"
        }
    .end annotation
.end field

.field public b:LIe/m$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LIe/o$a;->a:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(LIe/m$a;)LIe/m$b;
    .locals 0
    .param p1    # LIe/m$a;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iput-object p1, p0, LIe/o$a;->b:LIe/m$a;

    return-object p0
.end method

.method public b(LIe/g;LIe/v;)LIe/m;
    .locals 7
    .param p1    # LIe/g;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/v;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LIe/o$a;->b:LIe/m$a;

    if-nez v0, :cond_0

    new-instance v0, LIe/b;

    invoke-direct {v0}, LIe/b;-><init>()V

    :cond_0
    move-object v6, v0

    new-instance v0, LIe/o;

    new-instance v4, LIe/z;

    invoke-direct {v4}, LIe/z;-><init>()V

    iget-object v1, p0, LIe/o$a;->a:Ljava/util/Map;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v5

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, LIe/o;-><init>(LIe/g;LIe/v;LIe/z;Ljava/util/Map;LIe/m$a;)V

    return-object v0
.end method

.method public c(Ljava/lang/Class;LIe/m$c;)LIe/m$b;
    .locals 1
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # LIe/m$c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lpi/v;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "LIe/m$c<",
            "-TN;>;)",
            "LIe/m$b;"
        }
    .end annotation

    if-nez p2, :cond_0

    iget-object p2, p0, LIe/o$a;->a:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v0, p0, LIe/o$a;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-object p0
.end method
