.class public final Llg/b;
.super Llg/a;
.source "SourceFile"


# instance fields
.field public final d:Llg/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Llg/a;-><init>()V

    new-instance v0, Llg/b$a;

    invoke-direct {v0}, Llg/b$a;-><init>()V

    iput-object v0, p0, Llg/b;->d:Llg/b$a;

    return-void
.end method


# virtual methods
.method public r()Ljava/util/Random;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Llg/b;->d:Llg/b$a;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "get(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->o(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/util/Random;

    return-object v0
.end method
