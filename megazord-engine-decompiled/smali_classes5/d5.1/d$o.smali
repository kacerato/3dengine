.class public Ld5/d$o;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ld5/d;->B0()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ld5/c;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ld5/d;


# direct methods
.method public constructor <init>(Ld5/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Ld5/d$o;->b:Ld5/d;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ld5/c;

    const-string v0, "==============="

    invoke-direct {p1, v0}, Ld5/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ld5/c;

    const-string v1, " - - - -ITsMagic- - - - "

    invoke-direct {p1, v1}, Ld5/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ld5/c;

    const-string v1, "-Terminal started-"

    invoke-direct {p1, v1}, Ld5/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ld5/c;

    invoke-direct {p1, v0}, Ld5/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ld5/c;

    const-string v0, "To increase performance, the Terminal does not capture logs and exceptions while it is not visible."

    invoke-direct {p1, v0}, Ld5/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Ld5/c;

    const-string v0, "Resolve all exceptions, it is extremely important!"

    invoke-direct {p1, v0}, Ld5/c;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
