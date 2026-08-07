.class public LC5/b$n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/b;->r(Ljava/util/List;Landroid/app/Activity;Lcom/itsmagic/engine/Activities/Editor/Panels/Editor3DViewer/Base/Panel3DView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b;


# direct methods
.method public constructor <init>(LC5/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LC5/b$n;->a:LC5/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
    .locals 3
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

    iget-object v0, p0, LC5/b$n;->a:LC5/b;

    invoke-static {v0}, LC5/b;->I(LC5/b;)Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;

    move-result-object v0

    sget-object v1, LL4/a$e;->Below:LL4/a$e;

    new-instance v2, LC5/b$n$a;

    invoke-direct {v2, p0, p3}, LC5/b$n$a;-><init>(LC5/b$n;Le8/c;)V

    invoke-static {v0, p1, p2, v1, v2}, LN5/f;->K1(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;Landroid/view/View;Landroid/content/Context;LL4/a$e;LN5/f$j;)V

    return-void
.end method
