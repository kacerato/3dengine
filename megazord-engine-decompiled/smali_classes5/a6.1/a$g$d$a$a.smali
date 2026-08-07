.class public La6/a$g$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJAVARuntime/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La6/a$g$d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:La6/a$g$d$a;


# direct methods
.method public constructor <init>(La6/a$g$d$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$3"
        }
    .end annotation

    iput-object p1, p0, La6/a$g$d$a$a;->b:La6/a$g$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, La6/a$g$d$a$a;->b:La6/a$g$d$a;

    iget-object v0, v0, La6/a$g$d$a;->b:La6/a$g$d;

    iget-object v0, v0, La6/a$g$d;->a:La6/a$g;

    iget-object v0, v0, La6/a$g;->b:La6/a;

    invoke-static {v0}, La6/a;->r(La6/a;)La6/a$k;

    move-result-object v0

    invoke-interface {v0}, La6/a$k;->a()V

    return-void
.end method
