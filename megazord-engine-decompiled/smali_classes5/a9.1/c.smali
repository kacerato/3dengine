.class public final synthetic La9/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LQ1/e;


# instance fields
.field public final synthetic a:LP0/b;


# direct methods
.method public synthetic constructor <init>(LP0/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La9/c;->a:LP0/b;

    return-void
.end method


# virtual methods
.method public final a(LQ1/k;)V
    .locals 1

    iget-object v0, p0, La9/c;->a:LP0/b;

    invoke-static {v0, p1}, Lcom/itsmagic/engine/Core/Components/Settings/Server/UserSystem/UserController$e;->b(LP0/b;LQ1/k;)V

    return-void
.end method
