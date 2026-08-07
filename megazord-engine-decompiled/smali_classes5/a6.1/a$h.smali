.class public La6/a$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh7/b$z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/a;->E()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lqc/O1;

.field public final synthetic b:La6/a;


# direct methods
.method public constructor <init>(La6/a;Lqc/O1;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$ref"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, La6/a$h;->b:La6/a;

    iput-object p2, p0, La6/a$h;->a:Lqc/O1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    iget-object v0, p0, La6/a$h;->b:La6/a;

    invoke-virtual {v0}, La6/a;->E()V

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, La6/a$h;->a:Lqc/O1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lqc/O1;->c:Z

    iget-object v0, p0, La6/a$h;->b:La6/a;

    invoke-static {v0}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object v0

    invoke-interface {v0}, La6/a$k;->k()V

    return-void
.end method
