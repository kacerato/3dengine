.class public La6/a$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN5/f$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/a$e;->click(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La6/a$e;


# direct methods
.method public constructor <init>(La6/a$e;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, La6/a$e$b;->a:La6/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorINT"
        }
    .end annotation

    iget-object v0, p0, La6/a$e$b;->a:La6/a$e;

    iget-object v0, v0, La6/a$e;->d:La6/a;

    invoke-static {v0}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object v0

    invoke-interface {v0, p1}, La6/a$k;->c(Lcom/itsmagic/engine/Engines/Engine/Color/ColorINT;)V

    iget-object p1, p0, La6/a$e$b;->a:La6/a$e;

    iget-object p1, p1, La6/a$e;->d:La6/a;

    invoke-static {p1}, La6/a;->u(La6/a;)V

    return-void
.end method
