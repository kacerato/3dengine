.class public Lph/j;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lph/i;)Lph/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "other"
        }
    .end annotation

    new-instance v0, Lph/c;

    invoke-direct {v0, p0}, Lph/c;-><init>(Lph/i;)V

    return-object v0
.end method

.method public static b(F)Lph/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "x"
        }
    .end annotation

    new-instance v0, Lph/c;

    invoke-direct {v0, p0}, Lph/c;-><init>(F)V

    return-object v0
.end method

.method public static c(FF)Lph/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "x",
            "y"
        }
    .end annotation

    new-instance v0, Lph/c;

    invoke-direct {v0, p0, p1}, Lph/c;-><init>(FF)V

    return-object v0
.end method

.method public static d(FFF)Lph/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z"
        }
    .end annotation

    new-instance v0, Lph/c;

    invoke-direct {v0, p0, p1, p2}, Lph/c;-><init>(FFF)V

    return-object v0
.end method

.method public static e(FFFF)Lph/i;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "x",
            "y",
            "z",
            "w"
        }
    .end annotation

    new-instance v0, Lph/c;

    invoke-direct {v0, p0, p1, p2, p3}, Lph/c;-><init>(FFFF)V

    return-object v0
.end method

.method public static f(Lph/i;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tuple"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Lph/i;->getDimensions()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-lez v1, :cond_0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-interface {p0, v1}, Lph/i;->get(I)F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
