.class public Lz7/e$e$a;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lz7/e$e;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/LinkedList<",
        "Lwd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lz7/e$e;


# direct methods
.method public constructor <init>(Lz7/e$e;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, Lz7/e$e$a;->b:Lz7/e$e;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance v0, Lz7/e$e$a$a;

    invoke-direct {v0, p0}, Lz7/e$e$a$a;-><init>(Lz7/e$e$a;)V

    const v1, 0x7f0701b2

    const-string v2, "New"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lz7/e$e$a$b;

    invoke-direct {v0, p0}, Lz7/e$e$a$b;-><init>(Lz7/e$e$a;)V

    const v1, 0x7f070162

    const-string v2, "Import files"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
