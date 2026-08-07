.class public Lve/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lze/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lve/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lve/c;


# direct methods
.method public constructor <init>(Lve/c;)V
    .locals 0

    iput-object p1, p0, Lve/c$b;->b:Lve/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lve/c$b;->a:Z

    return-void
.end method


# virtual methods
.method public a(D)Z
    .locals 1

    iget-object v0, p0, Lve/c$b;->b:Lve/c;

    invoke-virtual {v0, p1, p2}, Lve/c;->a(D)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    iput-boolean p2, p0, Lve/c$b;->a:Z

    :cond_0
    return p2
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lve/c$b;->a:Z

    return v0
.end method
