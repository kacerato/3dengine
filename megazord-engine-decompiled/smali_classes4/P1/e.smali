.class public final synthetic LP1/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LP1/d;


# direct methods
.method public synthetic constructor <init>(LP1/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LP1/e;->b:LP1/d;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LP1/e;->b:LP1/d;

    invoke-static {v0}, LP1/d;->e(LP1/d;)V

    return-void
.end method
