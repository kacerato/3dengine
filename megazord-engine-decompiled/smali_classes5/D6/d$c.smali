.class public LD6/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LD6/d;->j()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LD6/d;


# direct methods
.method public constructor <init>(LD6/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LD6/d$c;->b:LD6/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LD6/d$c;->b:LD6/d;

    invoke-static {v0}, LD6/d;->a(LD6/d;)LD6/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LD6/d$c;->b:LD6/d;

    invoke-static {v0}, LD6/d;->a(LD6/d;)LD6/a;

    move-result-object v0

    invoke-interface {v0}, LD6/a;->c()V

    :cond_0
    return-void
.end method
