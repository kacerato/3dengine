.class public final LAg/b$c;
.super LHf/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAg/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "LHf/j<",
        "TE;>;"
    }
.end annotation


# instance fields
.field public final b:Leg/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Leg/p<",
            "TK;TV;TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic c:LAg/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "LAg/b<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(LAg/b;Leg/p;)V
    .locals 0
    .param p1    # LAg/b;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Leg/p<",
            "-TK;-TV;+TE;>;)V"
        }
    .end annotation

    iput-object p1, p0, LAg/b$c;->c:LAg/b;

    invoke-direct {p0}, LHf/j;-><init>()V

    iput-object p2, p0, LAg/b$c;->b:Leg/p;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, LAg/b$c;->c:LAg/b;

    invoke-virtual {v0}, LHf/i;->size()I

    move-result v0

    return v0
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    invoke-static {}, LAg/c;->c()Ljava/lang/Void;

    new-instance p1, Lkotlin/KotlinNothingValueException;

    invoke-direct {p1}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, LAg/b;->m()Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v0

    iget-object v1, p0, LAg/b$c;->c:LAg/b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LAg/b$a;

    iget-object v1, p0, LAg/b$c;->b:Leg/p;

    invoke-virtual {v0, v1}, LAg/b$a;->g(Leg/p;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
