.class public Lph/v$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lph/v$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lph/v;->f(Lph/A;)Lph/v$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lph/v$f<",
        "Lph/q;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lph/A;

.field public final synthetic b:F


# direct methods
.method public constructor <init>(Lph/A;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "val$obj",
            "val$meanY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lph/v$d;->a:Lph/A;

    iput p2, p0, Lph/v$d;->b:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lph/q;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "objFace"
        }
    .end annotation

    iget-object v0, p0, Lph/v$d;->a:Lph/A;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lph/v;->a(Lph/A;Lph/q;I)F

    move-result p1

    iget v0, p0, Lph/v$d;->b:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic test(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "objFace"
        }
    .end annotation

    check-cast p1, Lph/q;

    invoke-virtual {p0, p1}, Lph/v$d;->a(Lph/q;)Z

    move-result p1

    return p1
.end method
