.class public final Lye/q$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/j0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lye/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lze/j0<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lye/q;


# direct methods
.method public constructor <init>(Lye/q;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lye/q$e;->b:Lye/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lye/q$e;->a:I

    return-void
.end method

.method public synthetic constructor <init>(Lye/q;Lye/q$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lye/q$e;-><init>(Lye/q;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)Z"
        }
    .end annotation

    iget v0, p0, Lye/q$e;->a:I

    invoke-static {p1}, Lne/b;->f(Ljava/lang/Object;)I

    move-result p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    :goto_0
    xor-int/2addr p1, p2

    add-int/2addr v0, p1

    iput v0, p0, Lye/q$e;->a:I

    const/4 p1, 0x1

    return p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lye/q$e;->a:I

    return v0
.end method
