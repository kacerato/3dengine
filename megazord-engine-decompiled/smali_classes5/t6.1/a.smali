.class public Lt6/a;
.super Lw7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt6/a$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw7/a<",
        "Lt6/c;",
        "Lt6/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lt6/a$b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "callbacks"
        }
    .end annotation

    new-instance v0, Lt6/a$a;

    invoke-direct {v0, p1, p2}, Lt6/a$a;-><init>(Landroid/content/Context;Lt6/a$b;)V

    invoke-direct {p0, p1, v0}, Lw7/a;-><init>(Landroid/content/Context;Lw7/a$a;)V

    return-void
.end method
