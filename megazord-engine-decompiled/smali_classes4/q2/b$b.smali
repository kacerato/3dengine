.class public Lq2/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lq2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lq2/b;


# direct methods
.method public constructor <init>(Lq2/b;)V
    .locals 0

    iput-object p1, p0, Lq2/b$b;->b:Lq2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lq2/b$b;->b:Lq2/b;

    invoke-static {v0}, Lq2/b;->b(Lq2/b;)V

    iget-object v0, p0, Lq2/b$b;->b:Lq2/b;

    const-wide/16 v1, -0x1

    invoke-static {v0, v1, v2}, Lq2/b;->c(Lq2/b;J)J

    return-void
.end method
