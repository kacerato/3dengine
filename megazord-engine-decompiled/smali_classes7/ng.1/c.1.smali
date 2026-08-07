.class public final Lng/c;
.super Lng/a;
.source "SourceFile"

# interfaces
.implements Lng/g;
.implements Lng/r;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lng/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lng/a;",
        "Lng/g<",
        "Ljava/lang/Character;",
        ">;",
        "Lng/r<",
        "Ljava/lang/Character;",
        ">;"
    }
.end annotation


# static fields
.field public static final f:Lng/c$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final g:Lng/c;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lng/c$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lng/c$a;-><init>(Lkotlin/jvm/internal/x;)V

    sput-object v0, Lng/c;->f:Lng/c$a;

    new-instance v0, Lng/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lng/c;-><init>(CC)V

    sput-object v0, Lng/c;->g:Lng/c;

    return-void
.end method

.method public constructor <init>(CC)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lng/a;-><init>(CCI)V

    return-void
.end method

.method public static final synthetic i()Lng/c;
    .locals 1

    sget-object v0, Lng/c;->g:Lng/c;

    return-object v0
.end method

.method public static synthetic l()V
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
        message = "Can throw an exception when it\'s impossible to represent the value with Char type, for example, when the range includes MAX_VALUE. It\'s recommended to use \'endInclusive\' property that doesn\'t throw."
    .end annotation

    return-void
.end method


# virtual methods
.method public bridge synthetic b()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, Lng/c;->k()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic contains(Ljava/lang/Comparable;)Z
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-virtual {p0, p1}, Lng/c;->j(C)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lng/c;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lng/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lng/c;

    invoke-virtual {v0}, Lng/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lng/a;->c()C

    move-result v0

    check-cast p1, Lng/c;

    invoke-virtual {p1}, Lng/a;->c()C

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lng/a;->d()C

    move-result v0

    invoke-virtual {p1}, Lng/a;->d()C

    move-result p1

    if-ne v0, p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic getEndInclusive()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, Lng/c;->m()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getStart()Ljava/lang/Comparable;
    .locals 1

    invoke-virtual {p0}, Lng/c;->n()Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lng/c;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lng/a;->c()C

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lng/a;->d()C

    move-result v1

    add-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 2

    invoke-virtual {p0}, Lng/a;->c()C

    move-result v0

    invoke-virtual {p0}, Lng/a;->d()C

    move-result v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j(C)Z
    .locals 1

    invoke-virtual {p0}, Lng/a;->c()C

    move-result v0

    invoke-static {v0, p1}, Lkotlin/jvm/internal/M;->t(II)I

    move-result v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lng/a;->d()C

    move-result v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/M;->t(II)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public k()Ljava/lang/Character;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lng/a;->d()C

    move-result v0

    const v1, 0xffff

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lng/a;->d()C

    move-result v0

    add-int/lit8 v0, v0, 0x1

    int-to-char v0, v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot return the exclusive upper bound of a range that includes MAX_VALUE."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public m()Ljava/lang/Character;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lng/a;->d()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public n()Ljava/lang/Character;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-virtual {p0}, Lng/a;->c()C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lng/a;->c()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lng/a;->d()C

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
