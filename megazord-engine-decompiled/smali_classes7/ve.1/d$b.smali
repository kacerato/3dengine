.class public Lve/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/I;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lve/d;


# direct methods
.method public constructor <init>(Lve/d;)V
    .locals 0

    iput-object p1, p0, Lve/d$b;->b:Lve/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lve/d$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(F)Z
    .locals 1

    iget-object v0, p0, Lve/d$b;->b:Lve/d;

    invoke-virtual {v0, p1}, Lve/d;->c(F)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iput-boolean v0, p0, Lve/d$b;->a:Z

    :cond_0
    return v0
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lve/d$b;->a:Z

    return v0
.end method
