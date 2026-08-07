.class public interface abstract LEi/J;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LEi/J$a;,
        LEi/J$b;
    }
.end annotation


# direct methods
.method public static b()LEi/J;
    .locals 1

    new-instance v0, LEi/J$a;

    invoke-direct {v0}, LEi/J$a;-><init>()V

    return-object v0
.end method

.method public static c()LEi/J;
    .locals 1

    new-instance v0, LEi/J$b;

    invoke-direct {v0}, LEi/J$b;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract a([F[FF)[F
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "polyVerts",
            "circleCenter",
            "radius"
        }
    .end annotation
.end method
