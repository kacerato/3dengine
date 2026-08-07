.class public abstract Lorg/hull/StackList;
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
.field private final list:Lorg/hull/ObjectArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/hull/ObjectArrayList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private pos:I

.field private returnObj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private stack:[I

.field private stackCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/hull/ObjectArrayList;

    invoke-direct {v0}, Lorg/hull/ObjectArrayList;-><init>()V

    iput-object v0, p0, Lorg/hull/StackList;->list:Lorg/hull/ObjectArrayList;

    const/16 v0, 0x200

    .line 3
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/hull/StackList;->stack:[I

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/hull/StackList;->stackCount:I

    .line 5
    iput v0, p0, Lorg/hull/StackList;->pos:I

    .line 6
    invoke-virtual {p0}, Lorg/hull/StackList;->create()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/hull/StackList;->returnObj:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance p1, Lorg/hull/ObjectArrayList;

    invoke-direct {p1}, Lorg/hull/ObjectArrayList;-><init>()V

    iput-object p1, p0, Lorg/hull/StackList;->list:Lorg/hull/ObjectArrayList;

    const/16 p1, 0x200

    .line 9
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/hull/StackList;->stack:[I

    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lorg/hull/StackList;->stackCount:I

    .line 11
    iput p1, p0, Lorg/hull/StackList;->pos:I

    return-void
.end method

.method private expand()V
    .locals 2

    iget-object v0, p0, Lorg/hull/StackList;->list:Lorg/hull/ObjectArrayList;

    invoke-virtual {p0}, Lorg/hull/StackList;->create()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public abstract copy(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation
.end method

.method public abstract create()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public get()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget v0, p0, Lorg/hull/StackList;->pos:I

    iget-object v1, p0, Lorg/hull/StackList;->list:Lorg/hull/ObjectArrayList;

    invoke-virtual {v1}, Lorg/hull/ObjectArrayList;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lorg/hull/StackList;->expand()V

    :cond_0
    iget-object v0, p0, Lorg/hull/StackList;->list:Lorg/hull/ObjectArrayList;

    iget v1, p0, Lorg/hull/StackList;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/hull/StackList;->pos:I

    invoke-virtual {v0, v1}, Lorg/hull/ObjectArrayList;->getQuick(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final pop()V
    .locals 2

    iget-object v0, p0, Lorg/hull/StackList;->stack:[I

    iget v1, p0, Lorg/hull/StackList;->stackCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/hull/StackList;->stackCount:I

    aget v0, v0, v1

    iput v0, p0, Lorg/hull/StackList;->pos:I

    return-void
.end method

.method public final push()V
    .locals 3

    iget-object v0, p0, Lorg/hull/StackList;->stack:[I

    iget v1, p0, Lorg/hull/StackList;->stackCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/hull/StackList;->stackCount:I

    iget v2, p0, Lorg/hull/StackList;->pos:I

    aput v2, v0, v1

    return-void
.end method

.method public final returning(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/hull/StackList;->returnObj:Ljava/lang/Object;

    invoke-virtual {p0, v0, p1}, Lorg/hull/StackList;->copy(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object p1, p0, Lorg/hull/StackList;->returnObj:Ljava/lang/Object;

    return-object p1
.end method
