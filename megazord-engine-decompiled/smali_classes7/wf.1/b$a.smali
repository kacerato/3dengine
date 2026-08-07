.class public Lwf/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwf/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lwf/b$f;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lwf/b;


# direct methods
.method public constructor <init>(Lwf/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lwf/b$a;->b:Lwf/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lwf/b$f;Lwf/b$f;)I
    .locals 2

    iget v0, p1, Lwf/b$f;->b:F

    iget v1, p2, Lwf/b$f;->b:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget p1, p1, Lwf/b$f;->b:F

    iget p2, p2, Lwf/b$f;->b:F

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    const/4 p1, -0x1

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    check-cast p1, Lwf/b$f;

    check-cast p2, Lwf/b$f;

    invoke-virtual {p0, p1, p2}, Lwf/b$a;->a(Lwf/b$f;Lwf/b$f;)I

    move-result p1

    return p1
.end method
