.class public Lyb/e$a$e;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lyb/e$a;
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
.field public final synthetic b:Lyb/e$a;


# direct methods
.method public constructor <init>(Lyb/e$a;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a$e;->b:Lyb/e$a;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$e$a;

    invoke-direct {v0, p0}, Lyb/e$a$e$a;-><init>(Lyb/e$a$e;)V

    const-string v1, "Set color"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, Lyb/e$a$e$b;

    invoke-direct {v0, p0}, Lyb/e$a$e$b;-><init>(Lyb/e$a$e;)V

    const-string v1, "Remove color"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
