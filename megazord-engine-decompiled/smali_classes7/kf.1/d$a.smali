.class public final Lkf/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkf/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final b:Lkf/d$b;

.field public final synthetic c:Lkf/d;


# direct methods
.method public constructor <init>(Lkf/d;Lkf/d$b;)V
    .locals 0

    iput-object p1, p0, Lkf/d$a;->c:Lkf/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lkf/d$a;->b:Lkf/d$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lkf/d$a;->b:Lkf/d$b;

    iget-object v1, v0, Lkf/d$b;->c:LYe/h;

    iget-object v2, p0, Lkf/d$a;->c:Lkf/d;

    invoke-virtual {v2, v0}, Lkf/d;->f(Ljava/lang/Runnable;)LVe/c;

    move-result-object v0

    invoke-virtual {v1, v0}, LYe/h;->a(LVe/c;)Z

    return-void
.end method
