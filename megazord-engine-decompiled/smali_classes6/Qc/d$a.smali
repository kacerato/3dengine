.class public LQc/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lea/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LQc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:LQc/d;


# direct methods
.method public constructor <init>(LQc/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LQc/d$a;->a:LQc/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointer"
        }
    .end annotation

    iget-object v0, p0, LQc/d$a;->a:LQc/d;

    invoke-static {v0}, LQc/d;->g(LQc/d;)LQc/b$a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, LQc/b$a;->a(J)V

    return-void
.end method
