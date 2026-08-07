.class public final synthetic Lp3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lp3/b;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lp3/b;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lp3/a;->b:Lp3/b;

    iput-object p2, p0, Lp3/a;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lp3/a;->b:Lp3/b;

    iget-object v1, p0, Lp3/a;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lp3/b;->a(Lp3/b;Ljava/lang/Runnable;)V

    return-void
.end method
