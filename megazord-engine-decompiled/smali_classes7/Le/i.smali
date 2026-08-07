.class public LLe/i;
.super Landroid/text/style/URLSpan;
.source "SourceFile"


# instance fields
.field public final b:LJe/c;

.field public final c:Ljava/lang/String;

.field public final d:LIe/c;


# direct methods
.method public constructor <init>(LJe/c;Ljava/lang/String;LIe/c;)V
    .locals 0
    .param p1    # LJe/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # LIe/c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p2}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LLe/i;->b:LJe/c;

    iput-object p2, p0, LLe/i;->c:Ljava/lang/String;

    iput-object p3, p0, LLe/i;->d:LIe/c;

    return-void
.end method


# virtual methods
.method public b()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, LLe/i;->c:Ljava/lang/String;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, LLe/i;->d:LIe/c;

    iget-object v1, p0, LLe/i;->c:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, LIe/c;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .param p1    # Landroid/text/TextPaint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, LLe/i;->b:LJe/c;

    invoke-virtual {v0, p1}, LJe/c;->g(Landroid/text/TextPaint;)V

    return-void
.end method
