.class public final synthetic Lz7/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lz7/b;

.field public final synthetic c:LB7/b;


# direct methods
.method public synthetic constructor <init>(Lz7/b;LB7/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz7/a;->b:Lz7/b;

    iput-object p2, p0, Lz7/a;->c:LB7/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lz7/a;->b:Lz7/b;

    iget-object v1, p0, Lz7/a;->c:LB7/b;

    invoke-static {v0, v1}, Lz7/b;->a(Lz7/b;LB7/b;)V

    return-void
.end method
