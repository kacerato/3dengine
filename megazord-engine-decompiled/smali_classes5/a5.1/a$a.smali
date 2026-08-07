.class public La5/a$a;
.super Lh9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La5/a;->q1()V
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

    iput-object p1, p0, La5/a$a;->a:La5/a;

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

    iget-object p1, p0, La5/a$a;->a:La5/a;

    invoke-static {p1}, La5/a;->o1(La5/a;)La5/b;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, La5/a$a;->a:La5/a;

    invoke-static {p1}, La5/a;->o1(La5/a;)La5/b;

    move-result-object p1

    iget-object p2, p0, La5/a$a;->a:La5/a;

    invoke-interface {p1, p2}, La5/b;->a(La5/a;)V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, La5/a$a;->a:La5/a;

    invoke-static {v0}, La5/a;->p1(La5/a;)V

    iget-object v0, p0, La5/a$a;->a:La5/a;

    invoke-static {v0}, La5/a;->o1(La5/a;)La5/b;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, La5/a$a;->a:La5/a;

    invoke-static {v0}, La5/a;->o1(La5/a;)La5/b;

    move-result-object v0

    iget-object v1, p0, La5/a$a;->a:La5/a;

    invoke-interface {v0, v1}, La5/b;->a(La5/a;)V

    :cond_0
    return-void
.end method
