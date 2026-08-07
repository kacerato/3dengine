.class public final LJg/b$e;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LJg/b;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/O;",
        "Leg/q<",
        "LHg/m<",
        "*>;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Leg/l<",
        "-",
        "Ljava/lang/Throwable;",
        "+",
        "LFf/P0;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:LJg/b;


# direct methods
.method public constructor <init>(LJg/b;)V
    .locals 0

    iput-object p1, p0, LJg/b$e;->b:LJg/b;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LHg/m;

    invoke-virtual {p0, p1, p2, p3}, LJg/b$e;->c(LHg/m;Ljava/lang/Object;Ljava/lang/Object;)Leg/l;

    move-result-object p1

    return-object p1
.end method

.method public final c(LHg/m;Ljava/lang/Object;Ljava/lang/Object;)Leg/l;
    .locals 0
    .param p1    # LHg/m;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")",
            "Leg/l<",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance p1, LJg/b$e$a;

    iget-object p3, p0, LJg/b$e;->b:LJg/b;

    invoke-direct {p1, p3, p2}, LJg/b$e$a;-><init>(LJg/b;Ljava/lang/Object;)V

    return-object p1
.end method
