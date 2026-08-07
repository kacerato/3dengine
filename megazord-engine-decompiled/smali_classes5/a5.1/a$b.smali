.class public La5/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW5/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La5/a;->t1(Ljava/util/List;Landroid/widget/LinearLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La5/a;


# direct methods
.method public constructor <init>(La5/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, La5/a$b;->a:La5/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public refresh(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    iget-object p1, p0, La5/a$b;->a:La5/a;

    invoke-static {p1}, La5/a;->p1(La5/a;)V

    iget-object p1, p0, La5/a$b;->a:La5/a;

    invoke-static {p1}, La5/a;->o1(La5/a;)La5/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La5/a$b;->a:La5/a;

    invoke-static {p1}, La5/a;->o1(La5/a;)La5/b;

    move-result-object p1

    iget-object v0, p0, La5/a$b;->a:La5/a;

    invoke-interface {p1, v0}, La5/b;->a(La5/a;)V

    :cond_0
    return-void
.end method
