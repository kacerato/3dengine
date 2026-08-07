.class public Lph/x$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lph/x$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lph/x;->m(Lph/A;Ljava/util/List;Lph/D;)Lph/D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lph/A;Lph/q;I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "input",
            "face",
            "vertexNumber"
        }
    .end annotation

    invoke-interface {p2, p3}, Lph/q;->f(I)I

    move-result p1

    return p1
.end method

.method public b(Lph/q;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "face"
        }
    .end annotation

    invoke-interface {p1}, Lph/q;->e()Z

    move-result p1

    return p1
.end method
