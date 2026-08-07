.class public LO6/b$c$a;
.super Ljava/util/ArrayList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LO6/b$c;->click(Landroid/view/View;)V
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
.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:LO6/b$c;


# direct methods
.method public constructor <init>(LO6/b$c;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$projectName"
        }
    .end annotation

    iput-object p1, p0, LO6/b$c$a;->c:LO6/b$c;

    iput-object p2, p0, LO6/b$c$a;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Lwd/b;

    new-instance p2, LO6/b$c$a$a;

    invoke-direct {p2, p0}, LO6/b$c$a$a;-><init>(LO6/b$c$a;)V

    const v0, 0x7f070096

    const-string v1, "Delete project"

    invoke-direct {p1, v0, v1, p2}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    new-instance p1, Lwd/b;

    new-instance p2, LO6/b$c$a$b;

    invoke-direct {p2, p0}, LO6/b$c$a$b;-><init>(LO6/b$c$a;)V

    const v0, 0x7f070227

    const-string v1, "Delete vulkan cache"

    invoke-direct {p1, v0, v1, p2}, Lwd/b;-><init>(ILjava/lang/String;Lwd/d;)V

    invoke-virtual {p0, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    return-void
.end method
