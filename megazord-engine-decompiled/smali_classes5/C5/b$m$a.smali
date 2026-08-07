.class public LC5/b$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LZ5/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LC5/b$m;->onClick(Landroid/view/View;Landroid/content/Context;Le8/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LC5/b$m;


# direct methods
.method public constructor <init>(LC5/b$m;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    iput-object p1, p0, LC5/b$m$a;->a:LC5/b$m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idx"
        }
    .end annotation

    iget-object v0, p0, LC5/b$m$a;->a:LC5/b$m;

    iget-object v0, v0, LC5/b$m;->b:LC5/b;

    invoke-static {v0, p1}, LC5/b;->U(LC5/b;I)I

    return-void
.end method

.method public getSelected()I
    .locals 1

    iget-object v0, p0, LC5/b$m$a;->a:LC5/b$m;

    iget-object v0, v0, LC5/b$m;->b:LC5/b;

    invoke-static {v0}, LC5/b;->T(LC5/b;)I

    move-result v0

    return v0
.end method
