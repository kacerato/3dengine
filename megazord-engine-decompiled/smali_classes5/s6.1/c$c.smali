.class public Ls6/c$c;
.super LZ7/d$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls6/c;-><init>(Ljava/util/List;Landroid/content/Context;Ls6/c$d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ls6/c;


# direct methods
.method public constructor <init>(Ls6/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "layout"
        }
    .end annotation

    iput-object p1, p0, Ls6/c$c;->e:Ls6/c;

    invoke-direct {p0, p1, p2}, LZ7/d$b;-><init>(LZ7/d;I)V

    return-void
.end method


# virtual methods
.method public r(Landroid/view/View;)LZ7/d$a;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemView"
        }
    .end annotation

    new-instance v0, Ls6/c$f;

    iget-object v1, p0, Ls6/c$c;->e:Ls6/c;

    invoke-direct {v0, v1, p1}, Ls6/c$f;-><init>(Ls6/c;Landroid/view/View;)V

    return-object v0
.end method
