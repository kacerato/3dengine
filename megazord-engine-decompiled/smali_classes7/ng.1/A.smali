.class public final Lng/A;
.super Lng/y;
.source "SourceFile"

# interfaces
.implements Lng/g;
.implements Lng/r;


# annotations
.annotation build LFf/l0;
    version = "1.5"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lng/A$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lng/y;",
        "Lng/g<",
        "LFf/F0;",
        ">;",
        "Lng/r<",
        "LFf/F0;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lng/A$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lng/A;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v0, Lng/A$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lng/A$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lng/A;->f:Lng/A$a;

    new-instance v0, Lng/A;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const-wide/16 v3, -0x1

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lng/A;-><init>(JJLkotlin/jvm/internal/x;)V

    sput-object v0, Lng/A;->g:Lng/A;

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 8

    const-wide/16 v5, 0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 2
    invoke-direct/range {v0 .. v7}, Lng/y;-><init>(JJJLkotlin/jvm/internal/x;)V

    return-void
.end method

.method public synthetic constructor <init>(JJLkotlin/jvm/internal/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lng/A;-><init>(JJ)V

    return-void
.end method

.method public static final synthetic h()Lng/A;
    .locals 1

    sget-object v0, Lng/A;->g:Lng/A;

    return-object v0
.end method

.method public static synthetic k()V
    .locals 0
    .annotation build LFf/T0;
        markerClass = {
            LFf/w;
        }
    .end annotation

    .annotation build LFf/l0;
        version = "1.9"
    .end annotation

    .annotation runtime LFf/o;
        message = "Can throw an exception when it\'s impossible to represent the value with ULong type, for example, when the range includes MAX_VALUE. It\'s recommended to use \'endInclusive\' property that doesn\'t throw."
    .end annotation

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Comparable;
    .locals 2

    invoke-virtual {p0}, Lng/A;->j()J

    move-result-wide v0

    invoke-static {v0, v1}, LFf/F0;->b(J)LFf/F0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 2

    check-cast p1, LFf/F0;

    invoke-virtual {p1}, LFf/F0;->m0()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lng/A;->i(J)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lng/A;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lng/A;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lng/A;

    invoke-virtual {v0}, Lng/A;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v0

    check-cast p1, Lng/A;

    invoke-virtual {p1}, Lng/y;->c()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v0

    invoke-virtual {p1}, Lng/y;->d()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 2

    invoke-virtual {p0}, Lng/A;->l()J

    move-result-wide v0

    invoke-static {v0, v1}, LFf/F0;->b(J)LFf/F0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 2

    invoke-virtual {p0}, Lng/A;->m()J

    move-result-wide v0

    invoke-static {v0, v1}, LFf/F0;->b(J)LFf/F0;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 7

    invoke-virtual {p0}, Lng/A;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v0

    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v2

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    invoke-static {v2, v3}, LFf/F0;->i(J)J

    move-result-wide v2

    xor-long/2addr v0, v2

    invoke-static {v0, v1}, LFf/F0;->i(J)J

    move-result-wide v0

    long-to-int v0, v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v1

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v5

    ushr-long v3, v5, v4

    invoke-static {v3, v4}, LFf/F0;->i(J)J

    move-result-wide v3

    xor-long/2addr v1, v3

    invoke-static {v1, v2}, LFf/F0;->i(J)J

    move-result-wide v1

    long-to-int v1, v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public i(J)Z
    .locals 2

    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isEmpty()Z
    .locals 4

    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v0

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compareUnsigned(JJ)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()J
    .locals 6

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v0

    const/4 v2, 0x1

    int-to-long v2, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    invoke-static {v2, v3}, LFf/F0;->i(J)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, LFf/F0;->i(J)J

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot return the exclusive upper bound of a range that includes MAX_VALUE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public l()J
    .locals 2

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public m()J
    .locals 2

    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lng/y;->c()J

    move-result-wide v1

    invoke-static {v1, v2}, LFf/F0;->g0(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lng/y;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, LFf/F0;->g0(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
