.class public LIi/t$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LEi/L;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LIi/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(LIi/t$a;)V
    .locals 0

    .line 2
    invoke-direct {p0}, LIi/t$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLEi/s;LEi/G;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "ref",
            "tile",
            "poly"
        }
    .end annotation

    const/4 p1, 0x1

    return p1
.end method

.method public b([F[FJLEi/s;LEi/G;JLEi/s;LEi/G;JLEi/s;LEi/G;)F
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pa",
            "pb",
            "prevRef",
            "prevTile",
            "prevPoly",
            "curRef",
            "curTile",
            "curPoly",
            "nextRef",
            "nextTile",
            "nextPoly"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method
