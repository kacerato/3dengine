.class public final synthetic LT4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LT4/b;


# direct methods
.method public synthetic constructor <init>(LT4/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT4/c;->b:LT4/b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LT4/c;->b:LT4/b;

    invoke-static {v0}, LT4/b$c$a$a$a;->a(LT4/b;)V

    return-void
.end method
