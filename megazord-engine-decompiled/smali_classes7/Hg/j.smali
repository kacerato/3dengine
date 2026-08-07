.class public final LHg/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LHg/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        "Q:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "LHg/i<",
        "TP;TQ;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "Ljava/lang/Object;",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final c:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:Leg/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/q<",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Leg/l<",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Leg/q;Leg/q;Leg/q;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Leg/q;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Leg/q<",
            "Ljava/lang/Object;",
            "-",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "LFf/P0;",
            ">;",
            "Leg/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Ljava/lang/Object;",
            ">;",
            "Leg/q<",
            "-",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "+",
            "Leg/l<",
            "-",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LHg/j;->a:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, LHg/j;->b:Leg/q;

    .line 4
    iput-object p3, p0, LHg/j;->c:Leg/q;

    .line 5
    iput-object p4, p0, LHg/j;->d:Leg/q;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Leg/q;Leg/q;Leg/q;ILkotlin/jvm/internal/x;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, LHg/j;-><init>(Ljava/lang/Object;Leg/q;Leg/q;Leg/q;)V

    return-void
.end method


# virtual methods
.method public a()Leg/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leg/q<",
            "Ljava/lang/Object;",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "LFf/P0;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LHg/j;->b:Leg/q;

    return-object v0
.end method

.method public b()Leg/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leg/q<",
            "LHg/m<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Leg/l<",
            "Ljava/lang/Throwable;",
            "LFf/P0;",
            ">;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, LHg/j;->d:Leg/q;

    return-object v0
.end method

.method public c()Leg/q;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Leg/q<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LHg/j;->c:Leg/q;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, LHg/j;->a:Ljava/lang/Object;

    return-object v0
.end method
