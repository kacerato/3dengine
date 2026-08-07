.class public final LJg/b$e$a;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJg/b$e;->c(LHg/m;Ljava/lang/Object;Ljava/lang/Object;)Leg/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/l<",
        "Ljava/lang/Throwable;",
        "LFf/P0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LJg/b;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LJg/b;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, LJg/b$e$a;->b:LJg/b;

    iput-object p2, p0, LJg/b$e$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, LJg/b$e$a;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, LFf/P0;->a:LFf/P0;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 2
    iget-object p1, p0, LJg/b$e$a;->b:LJg/b;

    iget-object v0, p0, LJg/b$e$a;->c:Ljava/lang/Object;

    invoke-virtual {p1, v0}, LJg/b;->e(Ljava/lang/Object;)V

    return-void
.end method
