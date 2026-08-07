.class public final synthetic LU2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LU2/j;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(LU2/j;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LU2/i;->b:LU2/j;

    iput-object p2, p0, LU2/i;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, LU2/i;->b:LU2/j;

    iget-object v1, p0, LU2/i;->c:Ljava/lang/Object;

    invoke-static {v0, v1}, LU2/j;->a(LU2/j;Ljava/lang/Object;)V

    return-void
.end method
