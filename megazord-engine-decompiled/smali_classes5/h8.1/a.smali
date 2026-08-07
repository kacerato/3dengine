.class public final synthetic Lh8/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh8/b;

.field public final synthetic c:Lj8/b;


# direct methods
.method public synthetic constructor <init>(Lh8/b;Lj8/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh8/a;->b:Lh8/b;

    iput-object p2, p0, Lh8/a;->c:Lj8/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lh8/a;->b:Lh8/b;

    iget-object v1, p0, Lh8/a;->c:Lj8/b;

    invoke-static {v0, v1}, Lh8/b;->a(Lh8/b;Lj8/b;)V

    return-void
.end method
