.class public LZ5/c$a$a$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LZ5/c$a$a;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Lwd/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:LZ5/c$a$a;


# direct methods
.method public constructor <init>(LZ5/c$a$a;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LZ5/c$a$a$a;->b:LZ5/c$a$a;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance v0, LZ5/c$a$a$a$a;

    invoke-direct {v0, p0}, LZ5/c$a$a$a$a;-><init>(LZ5/c$a$a$a;)V

    const v1, 0x7f070156

    const-string v2, "Add more"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LZ5/c$a$a$a$b;

    invoke-direct {v0, p0}, LZ5/c$a$a$a$b;-><init>(LZ5/c$a$a$a;)V

    const-string v2, "None"

    invoke-direct {p1, v1, v2, v0}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    invoke-direct {p1}, Lwd/b;-><init>()V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
