.class public final synthetic LT5/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LT5/a;


# direct methods
.method public synthetic constructor <init>(LT5/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT5/e;->b:LT5/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LT5/e;->b:LT5/a;

    invoke-static {v0}, LT5/a$e$a$a;->a(LT5/a;)V

    return-void
.end method
