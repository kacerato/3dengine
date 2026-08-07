.class public final LFf/F;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation build LFf/l0;
    version = "1.1"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFf/F$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "LFf/F;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:LFf/F$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:I = 0xff

.field public static final h:LFf/F;
    .annotation build Ldg/g;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LFf/F$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LFf/F$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, LFf/F;->f:LFf/F$a;

    invoke-static {}, LFf/G;->a()LFf/F;

    move-result-object v0

    sput-object v0, LFf/F;->h:LFf/F;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, LFf/F;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, LFf/F;->b:I

    iput p2, p0, LFf/F;->c:I

    iput p3, p0, LFf/F;->d:I

    .line 3
    invoke-virtual {p0, p1, p2, p3}, LFf/F;->h(III)I

    move-result p1

    iput p1, p0, LFf/F;->e:I

    return-void
.end method


# virtual methods
.method public a(LFf/F;)I
    .locals 1
    .param p1    # LFf/F;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->p(Ljava/lang/Object;Ljava/lang/String;)V

    iget v0, p0, LFf/F;->e:I

    iget p1, p1, LFf/F;->e:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, LFf/F;->b:I

    return v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, LFf/F;->c:I

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, LFf/F;

    invoke-virtual {p0, p1}, LFf/F;->a(LFf/F;)I

    move-result p1

    return p1
.end method

.method public final d()I
    .locals 1

    iget v0, p0, LFf/F;->d:I

    return v0
.end method

.method public final e(II)Z
    .locals 1

    iget v0, p0, LFf/F;->b:I

    if-gt v0, p1, :cond_1

    if-ne v0, p1, :cond_0

    iget p1, p0, LFf/F;->c:I

    if-lt p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LFf/F;

    if-eqz v1, :cond_1

    check-cast p1, LFf/F;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    return v1

    :cond_2
    iget v2, p0, LFf/F;->e:I

    iget p1, p1, LFf/F;->e:I

    if-ne v2, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method public final g(III)Z
    .locals 1

    iget v0, p0, LFf/F;->b:I

    if-gt v0, p1, :cond_1

    if-ne v0, p1, :cond_0

    iget p1, p0, LFf/F;->c:I

    if-gt p1, p2, :cond_1

    if-ne p1, p2, :cond_0

    iget p1, p0, LFf/F;->d:I

    if-lt p1, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public final h(III)I
    .locals 2

    if-ltz p1, :cond_0

    const/16 v0, 0x100

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v0, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, v0, :cond_0

    shl-int/lit8 p1, p1, 0x10

    shl-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    add-int/2addr p1, p3

    return p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version components are out of range: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, LFf/F;->e:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, LFf/F;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v2, p0, LFf/F;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, LFf/F;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
