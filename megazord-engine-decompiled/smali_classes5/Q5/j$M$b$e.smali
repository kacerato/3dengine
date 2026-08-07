.class public LQ5/j$M$b$e;
.super Ljava/util/LinkedList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQ5/j$M$b;
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
.field public final synthetic b:LQ5/j$M$b;


# direct methods
.method public constructor <init>(LQ5/j$M$b;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LQ5/j$M$b$e;->b:LQ5/j$M$b;

    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance v0, LQ5/j$M$b$e$a;

    invoke-direct {v0, p0}, LQ5/j$M$b$e$a;-><init>(LQ5/j$M$b$e;)V

    const-string v1, "Empty"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LQ5/j$M$b$e$b;

    invoke-direct {v0, p0}, LQ5/j$M$b$e$b;-><init>(LQ5/j$M$b$e;)V

    const-string v1, "Black hole example"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LQ5/j$M$b$e$c;

    invoke-direct {v0, p0}, LQ5/j$M$b$e$c;-><init>(LQ5/j$M$b$e;)V

    const-string v1, "Shock wave example"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance v0, LQ5/j$M$b$e$d;

    invoke-direct {v0, p0}, LQ5/j$M$b$e$d;-><init>(LQ5/j$M$b$e;)V

    const-string v1, "Scene crack example"

    invoke-direct {p1, v1, v0}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
