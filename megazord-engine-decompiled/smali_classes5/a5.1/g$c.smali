.class public La5/g$c;
.super Lh9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La5/g;->r1()LW5/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:La5/g;


# direct methods
.method public constructor <init>(La5/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, La5/g$c;->a:La5/g;

    invoke-direct {p0}, Lh9/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/reflect/Field;Ljava/lang/Object;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "field",
            "instance",
            "address"
        }
    .end annotation

    iget-object p1, p0, La5/g$c;->a:La5/g;

    invoke-static {p1}, La5/g;->p1(La5/g;)La5/h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La5/g$c;->a:La5/g;

    invoke-static {p1}, La5/g;->p1(La5/g;)La5/h;

    move-result-object p1

    iget-object p2, p0, La5/g$c;->a:La5/g;

    invoke-interface {p1, p2}, La5/h;->a(La5/g;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, La5/g$c;->a:La5/g;

    invoke-static {v0}, La5/g;->q1(La5/g;)V

    iget-object v0, p0, La5/g$c;->a:La5/g;

    invoke-static {v0}, La5/g;->p1(La5/g;)La5/h;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La5/g$c;->a:La5/g;

    invoke-static {v0}, La5/g;->p1(La5/g;)La5/h;

    move-result-object v0

    iget-object v1, p0, La5/g$c;->a:La5/g;

    invoke-interface {v0, v1}, La5/h;->a(La5/g;)V

    :cond_0
    return-void
.end method
