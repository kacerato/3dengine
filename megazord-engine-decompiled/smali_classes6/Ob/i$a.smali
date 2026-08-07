.class public LOb/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LOb/i;->n()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:LOb/i;


# direct methods
.method public constructor <init>(LOb/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, LOb/i$a;->b:LOb/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, LOb/i$a;->b:LOb/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, LOb/i;->c(LOb/i;Z)Z

    iget-object v0, p0, LOb/i$a;->b:LOb/i;

    invoke-static {v0}, LOb/i;->d(LOb/i;)V

    return-void
.end method
