.class public final LBg/N;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:LBg/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LBg/i<",
            "TT;>;"
        }
    .end annotation

    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final b:I
    .annotation build Ldg/g;
    .end annotation
.end field

.field public final c:Lyg/i;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final d:LQf/j;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(LBg/i;ILyg/i;LQf/j;)V
    .locals 0
    .param p1    # LBg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lyg/i;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # LQf/j;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "LBg/i<",
            "+TT;>;I",
            "Lyg/i;",
            "LQf/j;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LBg/N;->a:LBg/i;

    iput p2, p0, LBg/N;->b:I

    iput-object p3, p0, LBg/N;->c:Lyg/i;

    iput-object p4, p0, LBg/N;->d:LQf/j;

    return-void
.end method
