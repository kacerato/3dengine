.class public Lj8/c;
.super Lj8/b;
.source "SourceFile"


# instance fields
.field public o:Ljava/lang/String;

.field public p:Lj8/d;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lj8/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "name",
            "path",
            "folder"
        }
    .end annotation

    new-instance v0, Lm8/a;

    invoke-direct {v0}, Lm8/a;-><init>()V

    invoke-direct {p0, p2, v0}, Lj8/b;-><init>(Ljava/lang/String;LX7/j;)V

    iput-object p1, p0, Lj8/c;->o:Ljava/lang/String;

    iput-object p3, p0, Lj8/c;->p:Lj8/d;

    return-void
.end method


# virtual methods
.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj8/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Ll8/a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "parent",
            "layoutInflater"
        }
    .end annotation

    new-instance p1, Ll8/a;

    const v0, 0x7f0c007a

    const/4 v1, 0x0

    invoke-virtual {p3, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p2}, Ll8/a;-><init>(Landroid/view/View;)V

    return-object p1
.end method
