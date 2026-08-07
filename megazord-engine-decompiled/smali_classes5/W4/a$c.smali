.class public LW4/a$c;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LW4/a;->q(Landroid/view/View;LX4/b;I)V
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
.field public final synthetic b:LX4/b;

.field public final synthetic c:LW4/a;


# direct methods
.method public constructor <init>(LW4/a;LX4/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$pack"
        }
    .end annotation

    iput-object p1, p0, LW4/a$c;->c:LW4/a;

    iput-object p2, p0, LW4/a$c;->b:LX4/b;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance p2, LW4/a$c$a;

    invoke-direct {p2, p0}, LW4/a$c$a;-><init>(LW4/a$c;)V

    const-string v0, "Open link"

    invoke-direct {p1, v0, p2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
