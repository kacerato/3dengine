.class public abstract Lec/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lec/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation

    new-instance v0, Lec/h$a;

    invoke-direct {v0, p0, p1}, Lec/h$a;-><init>(Lec/h;I)V

    invoke-static {v0}, Lf8/c;->j0(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract b(I)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "count"
        }
    .end annotation
.end method
