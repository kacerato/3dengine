.class public final Lyg/j$k;
.super Lkotlin/jvm/internal/O;
.source "SourceFile"

# interfaces
.implements Leg/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyg/j;-><init>(ILeg/l;)V
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
.field public final synthetic b:Lyg/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyg/j<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lyg/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyg/j<",
            "TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lyg/j$k;->b:Lyg/j;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/O;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic E(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, LHg/m;

    invoke-virtual {p0, p1, p2, p3}, Lyg/j$k;->c(LHg/m;Ljava/lang/Object;Ljava/lang/Object;)Leg/l;

    move-result-object p1

    return-object p1
.end method

.method public final c(LHg/m;Ljava/lang/Object;Ljava/lang/Object;)Leg/l;
    .locals 1
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

    new-instance p2, Lyg/j$k$a;

    iget-object v0, p0, Lyg/j$k;->b:Lyg/j;

    invoke-direct {p2, p3, v0, p1}, Lyg/j$k$a;-><init>(Ljava/lang/Object;Lyg/j;LHg/m;)V

    return-object p2
.end method
