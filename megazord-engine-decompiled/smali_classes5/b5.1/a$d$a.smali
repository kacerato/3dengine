.class public Lb5/a$d$a;
.super Lcom/itsmagic/engine/Activities/Editor/Utils/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lb5/a$d;->c(Lb5/c;Lb5/b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lb5/b;

.field public final synthetic c:Lb5/a$d;


# direct methods
.method public constructor <init>(Lb5/a$d;Lb5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$displayElement"
        }
    .end annotation

    iput-object p1, p0, Lb5/a$d$a;->c:Lb5/a$d;

    iput-object p2, p0, Lb5/a$d$a;->b:Lb5/b;

    invoke-direct {p0}, Lcom/itsmagic/engine/Activities/Editor/Utils/a;-><init>()V

    return-void
.end method


# virtual methods
.method public click(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lwd/b;

    new-instance v2, Lb5/a$d$a$a;

    invoke-direct {v2, p0}, Lb5/a$d$a$a;-><init>(Lb5/a$d$a;)V

    const-string v3, "Open"

    invoke-direct {v1, v3, v2}, Lwd/b;-><init>(Ljava/lang/String;Lwd/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, LL4/a$e;->Below:LL4/a$e;

    invoke-static {p1, v1, v0}, Lq7/a;->D1(Landroid/view/View;LL4/a$e;Ljava/util/List;)V

    return-void
.end method
