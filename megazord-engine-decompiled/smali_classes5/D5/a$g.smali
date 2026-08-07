.class public LD5/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD5/a;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LD5/a;


# direct methods
.method public constructor <init>(LD5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LD5/a$g;->a:LD5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "context",
            "tbButton"
        }
    .end annotation

    sget-object p3, LL4/a$e;->Below:LL4/a$e;

    new-instance v0, LD5/a$g$a;

    invoke-direct {v0, p0}, LD5/a$g$a;-><init>(LD5/a$g;)V

    const-string v1, "Objects/m2"

    invoke-static {p1, v1, p2, p3, v0}, LN5/h;->a(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;LL4/a$e;LN5/h$g;)V

    return-void
.end method
