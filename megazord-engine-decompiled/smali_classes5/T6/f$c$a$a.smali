.class public LT6/f$c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LT6/f$c$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LT6/f$c$a;


# direct methods
.method public constructor <init>(LT6/f$c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$2"
        }
    .end annotation

    iput-object p1, p0, LT6/f$c$a$a;->b:LT6/f$c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, LT6/f$c$a$a;->b:LT6/f$c$a;

    iget-object v0, v0, LT6/f$c$a;->b:LI7/a;

    invoke-virtual {v0}, LI7/a;->o1()V

    invoke-static {}, Lva/g;->q()V

    new-instance v0, LG9/c;

    invoke-direct {v0}, LG9/c;-><init>()V

    invoke-static {v0}, Lcom/itsmagic/engine/Engines/Engine/World/a;->i(Lec/c;)V

    return-void
.end method
