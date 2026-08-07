.class public LPd/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LPd/p$a;
    }
.end annotation


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:LPd/p$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LPd/p;->a:F

    .line 3
    iput v0, p0, LPd/p;->b:F

    .line 4
    iput v0, p0, LPd/p;->c:F

    .line 5
    sget-object v0, LPd/p$a;->TYPE_2D:LPd/p$a;

    iput-object v0, p0, LPd/p;->d:LPd/p$a;

    return-void
.end method

.method public constructor <init>(F)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, LPd/p;->a:F

    .line 8
    iput v0, p0, LPd/p;->b:F

    .line 9
    iput v0, p0, LPd/p;->c:F

    .line 10
    sget-object v0, LPd/p$a;->TYPE_2D:LPd/p$a;

    iput-object v0, p0, LPd/p;->d:LPd/p$a;

    .line 11
    iput p1, p0, LPd/p;->a:F

    .line 12
    sget-object p1, LPd/p$a;->TYPE_1D:LPd/p$a;

    iput-object p1, p0, LPd/p;->d:LPd/p$a;

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, LPd/p;->a:F

    .line 15
    iput v0, p0, LPd/p;->b:F

    .line 16
    iput v0, p0, LPd/p;->c:F

    .line 17
    sget-object v0, LPd/p$a;->TYPE_2D:LPd/p$a;

    .line 18
    iput p1, p0, LPd/p;->a:F

    .line 19
    iput p2, p0, LPd/p;->b:F

    .line 20
    iput-object v0, p0, LPd/p;->d:LPd/p$a;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput v0, p0, LPd/p;->a:F

    .line 23
    iput v0, p0, LPd/p;->b:F

    .line 24
    iput v0, p0, LPd/p;->c:F

    .line 25
    sget-object v0, LPd/p$a;->TYPE_2D:LPd/p$a;

    iput-object v0, p0, LPd/p;->d:LPd/p$a;

    .line 26
    iput p1, p0, LPd/p;->a:F

    .line 27
    iput p2, p0, LPd/p;->b:F

    .line 28
    iput p3, p0, LPd/p;->c:F

    .line 29
    sget-object p1, LPd/p$a;->TYPE_3D:LPd/p$a;

    iput-object p1, p0, LPd/p;->d:LPd/p$a;

    return-void
.end method

.method public constructor <init>(LPd/p;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput v0, p0, LPd/p;->a:F

    .line 32
    iput v0, p0, LPd/p;->b:F

    .line 33
    iput v0, p0, LPd/p;->c:F

    .line 34
    sget-object v0, LPd/p$a;->TYPE_2D:LPd/p$a;

    iput-object v0, p0, LPd/p;->d:LPd/p$a;

    .line 35
    iget v0, p1, LPd/p;->a:F

    iput v0, p0, LPd/p;->a:F

    .line 36
    iget v0, p1, LPd/p;->b:F

    iput v0, p0, LPd/p;->b:F

    .line 37
    iget v0, p1, LPd/p;->c:F

    iput v0, p0, LPd/p;->c:F

    .line 38
    iget-object p1, p1, LPd/p;->d:LPd/p$a;

    iput-object p1, p0, LPd/p;->d:LPd/p$a;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, LPd/p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, LPd/p;

    iget v1, p0, LPd/p;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    iget v3, p1, LPd/p;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, LPd/p;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    iget v3, p1, LPd/p;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget v1, p0, LPd/p;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    iget v3, p1, LPd/p;->c:F

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_2

    iget-object v1, p0, LPd/p;->d:LPd/p$a;

    iget-object p1, p1, LPd/p;->d:LPd/p$a;

    if-ne v1, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, LPd/p;->a:F

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LPd/p;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, LPd/p;->c:F

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, LPd/p;->d:LPd/p$a;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
