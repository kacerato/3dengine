.class public final Ls0/m;
.super Ls0/a;
.source "SourceFile"

# interfaces
.implements Lr0/e;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ls0/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls0/a<",
        "TK;TV;",
        "Ljavax/inject/Provider<",
        "TV;>;>;",
        "Lr0/e<",
        "Ljava/util/Map<",
        "TK;",
        "Ljavax/inject/Provider<",
        "TV;>;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljavax/inject/Provider<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Ls0/a;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;Ls0/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ls0/m;-><init>(Ljava/util/Map;)V

    return-void
.end method

.method public static c(I)Ls0/m$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ls0/m$b<",
            "TK;TV;>;"
        }
    .end annotation

    new-instance v0, Ls0/m$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls0/m$b;-><init>(ILs0/m$a;)V

    return-object v0
.end method


# virtual methods
.method public d()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljavax/inject/Provider<",
            "TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ls0/a;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Ls0/m;->d()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method
