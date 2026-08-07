.class public Lub/t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static c:Lub/t;


# instance fields
.field public a:Lub/v;

.field public b:Lub/f;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lub/t;
    .locals 1

    sget-object v0, Lub/t;->c:Lub/t;

    if-nez v0, :cond_0

    new-instance v0, Lub/t;

    invoke-direct {v0}, Lub/t;-><init>()V

    sput-object v0, Lub/t;->c:Lub/t;

    :cond_0
    sget-object v0, Lub/t;->c:Lub/t;

    return-object v0
.end method


# virtual methods
.method public b(Lub/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable;",
            ">(",
            "Lub/b<",
            "TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lub/t;->b:Lub/f;

    if-nez v0, :cond_0

    new-instance v0, Lub/f;

    invoke-direct {v0}, Lub/f;-><init>()V

    iput-object v0, p0, Lub/t;->b:Lub/f;

    :cond_0
    iget-object v0, p0, Lub/t;->b:Lub/f;

    iget-object v1, p1, Lub/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget p1, p1, Lub/b;->c:I

    invoke-virtual {v0, v1, v2, p1}, Lub/f;->c([Ljava/lang/Object;II)V

    return-void
.end method

.method public c(Lub/b;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lub/b<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lub/t;->a:Lub/v;

    if-nez v0, :cond_0

    new-instance v0, Lub/v;

    invoke-direct {v0}, Lub/v;-><init>()V

    iput-object v0, p0, Lub/t;->a:Lub/v;

    :cond_0
    iget-object v0, p0, Lub/t;->a:Lub/v;

    iget-object v1, p1, Lub/b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget p1, p1, Lub/b;->c:I

    invoke-virtual {v0, v1, p2, v2, p1}, Lub/v;->c([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method

.method public d([Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "a"
        }
    .end annotation

    iget-object v0, p0, Lub/t;->b:Lub/f;

    if-nez v0, :cond_0

    new-instance v0, Lub/f;

    invoke-direct {v0}, Lub/f;-><init>()V

    iput-object v0, p0, Lub/t;->b:Lub/f;

    :cond_0
    iget-object v0, p0, Lub/t;->b:Lub/f;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1}, Lub/f;->c([Ljava/lang/Object;II)V

    return-void
.end method

.method public e([Ljava/lang/Object;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "fromIndex",
            "toIndex"
        }
    .end annotation

    iget-object v0, p0, Lub/t;->b:Lub/f;

    if-nez v0, :cond_0

    new-instance v0, Lub/f;

    invoke-direct {v0}, Lub/f;-><init>()V

    iput-object v0, p0, Lub/t;->b:Lub/f;

    :cond_0
    iget-object v0, p0, Lub/t;->b:Lub/f;

    invoke-virtual {v0, p1, p2, p3}, Lub/f;->c([Ljava/lang/Object;II)V

    return-void
.end method

.method public f([Ljava/lang/Object;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "a",
            "c"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lub/t;->a:Lub/v;

    if-nez v0, :cond_0

    new-instance v0, Lub/v;

    invoke-direct {v0}, Lub/v;-><init>()V

    iput-object v0, p0, Lub/t;->a:Lub/v;

    :cond_0
    iget-object v0, p0, Lub/t;->a:Lub/v;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v2, v1}, Lub/v;->c([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method

.method public g([Ljava/lang/Object;Ljava/util/Comparator;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "a",
            "c",
            "fromIndex",
            "toIndex"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/util/Comparator<",
            "-TT;>;II)V"
        }
    .end annotation

    iget-object v0, p0, Lub/t;->a:Lub/v;

    if-nez v0, :cond_0

    new-instance v0, Lub/v;

    invoke-direct {v0}, Lub/v;-><init>()V

    iput-object v0, p0, Lub/t;->a:Lub/v;

    :cond_0
    iget-object v0, p0, Lub/t;->a:Lub/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lub/v;->c([Ljava/lang/Object;Ljava/util/Comparator;II)V

    return-void
.end method
